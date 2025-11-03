#!/usr/bin/env python3
from pathlib import Path
import re
import xml.etree.ElementTree as ET
import yaml

ROOT = Path(__file__).resolve().parents[1]
CONTENT = ROOT / "content"
PUBLIC = ROOT / "public"
DOCS = ROOT / "docs"
DOCS.mkdir(exist_ok=True)

FM_RE = re.compile(r"^---\s*\n(.*?)\n---\s*\n", re.DOTALL)

def read_front_matter(p: Path):
    try:
        text = p.read_text(encoding="utf-8", errors="replace")
    except Exception:
        return {}
    m = FM_RE.match(text)
    if not m:
        return {}
    try:
        return yaml.safe_load(m.group(1)) or {}
    except Exception:
        return {}

def rel_from_content(p: Path) -> str:
    return str(p.relative_to(CONTENT)).replace("\\", "/")

def collect_content_lines():
    lines = ["# Content map", "_Generated from content and sitemap in CI._", ""]
    for p in sorted(CONTENT.rglob("*")):
        if p.is_dir():
            continue
        if p.suffix.lower() not in [".md", ".html"]:
            continue
        fm = read_front_matter(p)
        title = fm.get("title", "")
        aliases = fm.get("aliases", [])
        kind = fm.get("type", "")
        rp = rel_from_content(p)
        meta = []
        if title:
            meta.append(f'title: "{title}"')
        if kind:
            meta.append(f"type: {kind}")
        if aliases:
            meta.append(f"aliases: {aliases}")
        bullet = f"- `{rp}`"
        if meta:
            bullet += "  " + "  ".join([f"({m})" for m in meta])
        lines.append(bullet)
    return lines

def parse_sitemap():
    sm = PUBLIC / "sitemap.xml"
    urls_md = ["", "## Published URLs from sitemap", ""]
    urls_csv = ["url"]
    if not sm.exists():
        urls_md.append("_No sitemap.xml found in public, did the build run?_")
        return urls_md, urls_csv
    root = ET.parse(sm).getroot()
    ns = {"sm": "http://www.sitemaps.org/schemas/sitemap/0.9"}
    nodes = root.findall("sm:url", ns) or root.findall("url")
    urls = []
    for n in nodes:
        loc = n.find("sm:loc", ns) or n.find("loc")
        if loc is not None and loc.text:
            urls.append(loc.text.strip())
    for u in sorted(urls):
        urls_md.append(f"- {u}")
        urls_csv.append(u)
    return urls_md, urls_csv

def write_outputs():
    lines = collect_content_lines()
    urls_md, urls_csv = parse_sitemap()
    (DOCS / "CONTENT_MAP.md").write_text("\n".join(lines + urls_md) + "\n", encoding="utf-8")
    (DOCS / "CONTENT_URLS.csv").write_text("\n".join(urls_csv) + "\n", encoding="utf-8")
    print("Wrote docs/CONTENT_MAP.md and docs/CONTENT_URLS.csv")

if __name__ == "__main__":
    write_outputs()
