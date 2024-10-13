#!/usr/bin/env bash

mkdir -p ./.github/preview/

for FILE in ./dist/black/32x32/*
do
    cp $FILE ./.github/preview/black__$(basename $FILE)
done

for FILE in ./dist/white/32x32/*
do
    cp $FILE ./.github/preview/white__$(basename $FILE)
done

python --version
python ./scripts/publish/main.py
