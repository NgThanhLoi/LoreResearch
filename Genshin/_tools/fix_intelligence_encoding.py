import os
import re

intel_dir = r"d:\LoreResseach\Genshin\entities\character_intelligence"
required_sections = [
    r"1\.\s+Character\s+Core\s+Profile",
    r"2\.\s+Canon\s+Facts",
    r"3\.\s+Personality\s+Analysis",
    r"4\.\s+Speech\s+Pattern\s+Analysis",
    r"5\.\s+Social\s+Network",
    r"6\.\s+Daily\s+Life\s+Reconstruction",
    r"7\.\s+Emotional\s+Trigger\s+Database",
    r"8\.\s+Fanfic\s+Simulation",
    r"9\.\s+OOC\s+Risk\s+Report",
    r"10\.\s+Character\s+Interaction\s+Matrix",
    r"11\.\s+Canon\s+Compliance\s+Score"
]

def check_and_fix_file(file_path):
    # Read file with flexible encoding detection
    try:
        with open(file_path, "r", encoding="utf-8-sig") as f:
            content = f.read()
    except UnicodeDecodeError:
        try:
            with open(file_path, "r", encoding="utf-8") as f:
                content = f.read()
        except UnicodeDecodeError:
            with open(file_path, "r", encoding="ansi") as f:
                content = f.read()
                
    # Validate sections
    missing = []
    for pattern in required_sections:
        if not re.search(pattern, content, re.IGNORECASE):
            missing.append(pattern)
            
    # Write back in UTF-8 with BOM (utf-8-sig)
    with open(file_path, "w", encoding="utf-8-sig") as f:
        f.write(content)
        
    return missing

def main():
    if not os.path.exists(intel_dir):
        print(f"Directory {intel_dir} does not exist.")
        return

    files = [f for f in os.listdir(intel_dir) if f.endswith(".md")]
    print(f"Checking {len(files)} files in {intel_dir}...")
    
    warnings = 0
    fixed = 0
    for fname in files:
        fpath = os.path.join(intel_dir, fname)
        missing = check_and_fix_file(fpath)
        if missing:
            print(f"[WARNING] File {fname} is missing sections: {missing}")
            warnings += 1
        else:
            fixed += 1
            
    print(f"Done. Successfully processed {len(files)} files. Warnings: {warnings}, Verified OK: {fixed}")

if __name__ == "__main__":
    main()
