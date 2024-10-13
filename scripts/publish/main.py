import pathlib
import os

print("-!- Script expects Python 3.12.6")

parent = pathlib.Path(__name__).resolve().parent
dir_icons = os.path.join(parent, "icons")
dir_dist = os.path.join(parent, "dist")
readme_file = os.path.join(parent, "README.md")
icons = os.listdir(dir_icons)
icons.sort()

do_replace = False
length = len(icons)

with open(readme_file, "r") as fp:
    lines = fp.readlines()

before, after = [], []
for i, line in enumerate(lines):
    if "<!-- begin preview -->" in line:
        before = lines[:i+1]
    if "<!-- end preview -->" in line:
        after = lines[i:]

def render(icon: str, tag: str) -> str:
    icon = icon.replace(".svg", ".png")
    return f"<img src=\"./.github/preview/{icon}#{tag}\" width=\"32px\" height=\"32px\" />\n"


lines = []
for icon in icons:
    lines.append(render("white__"+icon, "gh-dark-mode-only"))
for icon in icons:
    lines.append(render("black__"+icon, "gh-light-mode-only"))

with open(readme_file, "w") as fp:
    fp.writelines([*before, *lines, *after])
