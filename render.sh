#!/usr/bin/env bash

export DBUS_SESSION_BUS_ADDRESS=""
rm -rf ./dist/
mkdir -p ./dist/
mkdir -p ./dist/black/16x16/
mkdir -p ./dist/black/24x24/
mkdir -p ./dist/black/32x32/
mkdir -p ./dist/black/48x48/
mkdir -p ./dist/black/64x64/
mkdir -p ./dist/white/16x16/
mkdir -p ./dist/white/24x24/
mkdir -p ./dist/white/32x32/
mkdir -p ./dist/white/48x48/
mkdir -p ./dist/white/64x64/
mkdir -p ./dist/symbolic/
python --version
python ./scripts/render/main.py
