import json
import re
import urllib.parse
import urllib.request
from pathlib import Path
from html import unescape

API = "https://genshin-impact.fandom.com/api.php"
OUT = Path(__file__).resolve().parent
PAGES = [
    "Kaeya/Lore",
    "Kaeya",
    "Kaeya/Story",
    "Kaeya/Profile",
    "Kaeya/Voice-Overs",
]


def get(params):
    query = urllib.parse.urlencode(params)
    req = urllib.request.Request(
        f"{API}?{query}",
        headers={"User-Agent": "CodexPass8ControlledFandomAPITest/1.0"},
    )
    with urllib.request.urlopen(req, timeout=30) as response:
        return json.loads(response.read().decode("utf-8"))


def write_json(name, data):
    path = OUT / name
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")


def section_summaries(sections):
    return [
        {
            "title": section["title"],
            "template_index": section.get("template_index"),
            "friendship": section.get("friendship", ""),
            "mentions": clean_template_value(section.get("mentions", "")),
            "char_count": section.get("char_count", 0),
        }
        for section in sections
    ]


def clean_template_value(value):
    return re.sub(r"\n?\}\}\s*$", "", value or "").strip()


def get_page_probe(title):
    sections = get({
        "action": "parse",
        "page": title,
        "prop": "sections",
        "format": "json",
    })
    rev = get({
        "action": "query",
        "titles": title,
        "prop": "revisions",
        "rvprop": "ids|timestamp|user|comment",
        "format": "json",
    })
    return {"title": title, "sections": sections, "revision": rev}


def get_wikitext(title):
    return get({
        "action": "parse",
        "page": title,
        "prop": "wikitext|sections|revid",
        "format": "json",
    })


def get_revision_text(title):
    return get({
        "action": "query",
        "titles": title,
        "prop": "revisions",
        "rvprop": "ids|timestamp|content",
        "rvslots": "main",
        "formatversion": "2",
        "format": "json",
    })


def heading_level(line):
    m = re.match(r"^(=+)\s*(.*?)\s*\1\s*$", line)
    if not m:
        return None
    return len(m.group(1)), m.group(2).strip()


def extract_character_story_sections(wikitext):
    accepted_names = {
        "Character Details",
        "Character Story 1",
        "Character Story 2",
        "Character Story 3",
        "Character Story 4",
        "Character Story 5",
        "Vision",
    }
    template_match = re.search(
        r"==Character Stories==\s*\{\{Character Story(?P<body>.*?)(?:\n==[^=]|\Z)",
        wikitext,
        flags=re.S,
    )
    if template_match:
        body = template_match.group("body")
        params = {}
        current_key = None
        current_value = []
        for line in body.splitlines():
            match = re.match(r"^\|(?P<key>[A-Za-z0-9_]+)\s*=\s*(?P<value>.*)$", line)
            if match:
                if current_key is not None:
                    params[current_key] = "\n".join(current_value).strip()
                current_key = match.group("key")
                current_value = [match.group("value")]
            elif current_key is not None:
                current_value.append(line)
        if current_key is not None:
            params[current_key] = "\n".join(current_value).strip()

        sections = []
        for idx in range(1, 12):
            title = params.get(f"title{idx}")
            text = params.get(f"text{idx}")
            if not title or title not in accepted_names or not text:
                continue
            cleaned = clean_wikitext_story(text)
            sections.append({
                "title": title,
                "template_index": idx,
                "friendship": clean_template_value(params.get(f"friendship{idx}", "")),
                "mentions": clean_template_value(params.get(f"mention{idx}", "")),
                "text": cleaned,
                "char_count": len(cleaned),
            })
        return sections

    lines = wikitext.splitlines()
    sections = []
    current = None
    in_character_stories = False
    base_level = None

    for line in lines:
        h = heading_level(line)
        if h:
            level, name = h
            if name == "Character Stories":
                in_character_stories = True
                base_level = level
                current = None
                continue
            if in_character_stories and base_level is not None and level <= base_level:
                if current:
                    sections.append(current)
                    current = None
                in_character_stories = False
                base_level = None
            if in_character_stories and name in accepted_names:
                if current:
                    sections.append(current)
                current = {"title": name, "level": level, "text": []}
                continue
            if current and in_character_stories:
                current["text"].append(line)
                continue
        elif current and in_character_stories:
            current["text"].append(line)

    if current:
        sections.append(current)

    cleaned = []
    for section in sections:
        text = "\n".join(section["text"]).strip()
        text = re.sub(r"\n{3,}", "\n\n", text)
        cleaned.append({
            "title": section["title"],
            "level": section["level"],
            "text": text,
            "char_count": len(text),
        })
    return cleaned


def clean_wikitext_story(text):
    text = unescape(text)
    text = re.sub(r"</p>\s*<p>", "\n\n", text)
    text = re.sub(r"</?p>", "", text)
    text = re.sub(r"<br\s*/?>", "\n", text)
    text = re.sub(r"<ref[^>/]*/>", "", text)
    text = re.sub(r"<ref[^>]*>.*?</ref>", "", text, flags=re.S)
    text = re.sub(r"\[\[([^|\]]+)\|([^\]]+)\]\]", r"\2", text)
    text = re.sub(r"\[\[([^\]]+)\]\]", r"\1", text)
    text = re.sub(r"'''?", "", text)
    text = re.sub(r"\{\{.*?\}\}", "", text, flags=re.S)
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.strip()


def main():
    probes = []
    for title in PAGES:
        try:
            probe = get_page_probe(title)
            probes.append(probe)
        except Exception as exc:
            probes.append({"title": title, "error": str(exc)})
    write_json("page_route_probe.json", probes)

    profile_parse = get_wikitext("Kaeya/Profile")
    write_json("kaeya_profile_parse_sample.json", {
        "parse": {
            "title": profile_parse.get("parse", {}).get("title"),
            "pageid": profile_parse.get("parse", {}).get("pageid"),
            "revid": profile_parse.get("parse", {}).get("revid"),
            "sections": profile_parse.get("parse", {}).get("sections", []),
        }
    })
    wikitext = profile_parse["parse"]["wikitext"]["*"]
    sections = extract_character_story_sections(wikitext)
    write_json("kaeya_profile_extracted_section_summary.json", section_summaries(sections))

    rev_text = get_revision_text("Kaeya/Profile")
    pages = rev_text.get("query", {}).get("pages", [])
    revision_meta = {}
    if pages and pages[0].get("revisions"):
        rev = pages[0]["revisions"][0]
        revision_meta = {
            "pageid": pages[0].get("pageid"),
            "title": pages[0].get("title"),
            "revid": rev.get("revid"),
            "parentid": rev.get("parentid"),
            "timestamp": rev.get("timestamp"),
        }
    write_json("kaeya_profile_revision_meta.json", revision_meta)

    summary = {
        "api": API,
        "target": "Kaeya",
        "successful_page": "Kaeya/Profile",
        "extracted_section_titles": [s["title"] for s in sections],
        "extracted_section_count": len(sections),
        "revision_meta": revision_meta,
    }
    write_json("summary.json", summary)
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
