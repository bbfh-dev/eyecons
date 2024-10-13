import os
import pathlib
import subprocess
import threading

print("-!- Script expects Python 3.12.6")

parent = pathlib.Path(__name__).resolve().parent
dir_icons = os.path.join(parent, "icons")
dir_dist = os.path.join(parent, "dist")
tmp = os.path.join("/tmp", "eyecons-icon.svg")
icons = os.listdir(dir_icons)
icons.sort()

def call_inkscape(icon: str, size: int, color: str):
    subprocess.run([
        "inkscape",
        "--export-type=png",
        f"--export-filename={os.path.join(dir_dist, color, f"{size}x{size}", icon+".png")}",
        f"--export-width={size}",
        f"--export-height={size}",
        tmp,
    ])

length = len(icons)
for icon_id, icon in enumerate(icons):
    print(f"--- Rendering {icon} ({icon_id+1}/{length})")
    with open(os.path.join(dir_icons, icon), "r") as fp:
        icon_lines = fp.readlines()

    with open(os.path.join(dir_dist, "symbolic", icon), "w") as fp:
        fp.writelines(icon_lines)

    for color_name, color in {"white": "#ffffff", "black": "#000000"}.items():
        lines = [line.replace("currentColor", color) for line in icon_lines]
        with open(tmp, "w") as fp:
            fp.writelines(lines)
        threads: list[threading.Thread] = []
        for size in [16, 24, 32, 48, 64]:
            threads.append(thread := threading.Thread(target=call_inkscape, args=(icon.replace(".svg", ""), size, color_name)))
            thread.start()
        for thread in threads:
            thread.join()

print("=== Finished rendering")
