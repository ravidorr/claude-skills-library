#!/usr/bin/env python3
"""Check or apply the standard README badge block (see references/readme-badges.md).

Usage:
  readme-badges.py check <README.md>
  readme-badges.py apply <README.md> <block.md>

Layout: H1 title, blank, row 1, blank, row 2, blank, description. Each row is one line of
space-separated badges, at most 6 per row. Badge lines (starting with "[![") may appear nowhere else.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

MAX_PER_ROW = 6
BADGE = re.compile(r"\[!\[")
FULL_BADGE = re.compile(r"\[!\[[^\]]*\]\([^)]*\)\]\([^)]*\)")


def check(text: str) -> list[str]:
    lines = text.splitlines()
    problems: list[str] = []
    if not lines or not lines[0].startswith("# "):
        return ["line 1 must be an H1 title"]
    if len(lines) < 7:
        return ["README is too short for the badge block"]
    expected_blank = (1, 3, 5)
    for index in expected_blank:
        if lines[index].strip() != "":
            problems.append(f"line {index + 1} must be blank")
    seen: set[str] = set()
    for index, name in ((2, "row 1"), (4, "row 2")):
        row = lines[index]
        count = len(BADGE.findall(row))
        if count == 0 or not row.startswith("[!["):
            problems.append(f"line {index + 1} ({name}) must be a line of badges")
            continue
        if count > MAX_PER_ROW:
            problems.append(f"line {index + 1} ({name}) has {count} badges, maximum is {MAX_PER_ROW}")
        if FULL_BADGE.sub("", row).strip() != "":
            problems.append(f"line {index + 1} ({name}) has text or malformed badges besides well-formed badges")
        for badge in FULL_BADGE.findall(row):
            if badge in seen:
                problems.append(f"line {index + 1} ({name}) repeats a badge already in the block")
            seen.add(badge)
    if lines[6].strip() == "":
        problems.append("line 7 must be the description, not blank")
    elif lines[6].startswith("[!["):
        problems.append("line 7 must be the description, not a badge")
    for number, line in enumerate(lines[7:], start=8):
        if line.lstrip().startswith("[!["):
            problems.append(f"line {number}: badge outside the block")
    if chr(0x2014) in text:
        problems.append("em dash character found; use a hyphen or rephrase")
    return problems


def apply(text: str, block: str) -> str:
    lines = text.splitlines()
    if not lines:
        raise ValueError("empty README")
    title = lines[0]
    body = [line for line in lines[1:] if not line.lstrip().startswith("[![")]
    while body and body[0].strip() == "":
        body.pop(0)
    collapsed: list[str] = []
    for line in body:
        if line.strip() == "" and collapsed and collapsed[-1].strip() == "":
            continue  # removing a badge line can leave two blank lines in a row (MD012)
        collapsed.append(line)
    while collapsed and collapsed[-1].strip() == "":
        collapsed.pop()
    parts = [title, "", block.strip(), ""] + collapsed
    return "\n".join(parts).rstrip("\n") + "\n"


def main(argv: list[str]) -> int:
    if len(argv) >= 3 and argv[1] == "check":
        problems = check(Path(argv[2]).read_text(encoding="utf-8"))
        for problem in problems:
            print(f"badges: {problem}")
        return 1 if problems else 0
    if len(argv) == 4 and argv[1] == "apply":
        readme = Path(argv[2])
        original = readme.read_text(encoding="utf-8")
        updated = apply(original, Path(argv[3]).read_text(encoding="utf-8"))
        if updated == original:
            print("unchanged")
            return 0
        readme.write_text(updated, encoding="utf-8")
        print("changed")
        return 0
    print(__doc__, file=sys.stderr)
    return 2


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
