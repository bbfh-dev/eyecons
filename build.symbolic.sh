#!/usr/bin/bash

echo "[*] Export: symbolic icons"

mkdir_and_cp() {
    mkdir -p $(dirname "$2") && cp "$1" "$2"
}

function copyIcon {
    file=$1
    dest=$2
    mkdir_and_cp $file "$DIR/symbolic/web/$dest"
    mkdir_and_cp $file "$DIR/symbolic/white/$dest"
    mkdir_and_cp $file "$DIR/symbolic/black/$dest"
}

shopt -s globstar dotglob
for file in ./icons/**/*.svg; do
    parent_dir=$(basename $(dirname "$file../"))
    dest=$(basename $file)
    if [ $parent_dir == "icons" ]; then
        copyIcon $file $dest &
    else
        copyIcon $file "${parent_dir}_$dest" &
    fi

    # once we hit $THREADS jobs, wait for one to finish
    while (( $(jobs -rp | wc -l) >= THREADS )); do
        wait -n
    done
done

wait

echo "    1/1) Apply colors"
sed -i 's/#ffffff/#ffffff/g' $DIR/symbolic/white/*
sed -i 's/#ffffff/#000000/g' $DIR/symbolic/black/*
sed -i 's/#ffffff/currentColor/g' $DIR/symbolic/web/*
