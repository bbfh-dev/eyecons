# Eyecons

A 16x16 (vector) icon pack that prioritizes consistency and quality over quantity.

<!-- vim-markdown-toc GFM -->

* [Preview](#preview)
* [Usage](#usage)
* [Building](#building)

<!-- vim-markdown-toc -->

# Preview

Navigate to [my personal website](https://bbfh.me/eyecons.html) to see an up-to-date preview of all icons.

# Usage

Simply download the [latest version](https://github.com/bbfh-dev/eyecons/releases/latest). You **do NOT** need to give attributing when doing fair-use (e.g. using it on your website for buttons, but not creating your own icon repository).

```bash
# File structure:
$ tree -d ./build/latest/
├── raster/
│   ├── black/
│   │   ├── 12x12/
│   │   ├── 16x16/
│   │   ├── 24x24/
│   │   ├── 32x32/
│   │   ├── 48x48/
│   │   └── 64x64/
│   ├── pixelart/
│   │   ├── 16x16/
│   │   ├── 32x32/
│   │   └── 64x64/
│   └── white/
│       ├── 12x12/
│       ├── 16x16/
│       ├── 24x24/
│       ├── 32x32/
│       ├── 48x48/
│       └── 64x64/
└── symbolic/
    ├── black/
    ├── web/
    └── white/
```

# Building

Building requires the following additional binaries to be installed: `resvg`, `tar` & `zip`

```bash
./build.sh
```
