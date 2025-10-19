#!/usr/bin/bash

echo "[*] Export: render icons"

function renderIcon {
    file=$1
    color=$2
    size=$3

    resvg -w $size -h $size $file "$DIR/raster/${color}/${size}x${size}/$(basename -s .svg $file).png"
}

function renderIconCollection {
    color=$1
    size=$2
    mkdir -p "$DIR/raster/${color}/${size}x${size}/"

    for file in $DIR/symbolic/${color}/*.svg; do
        renderIcon $file $color $size
    done
    echo "    Rendered ${color}:${size}x${size}"
}

for color in black white; do
    for size in 12 16 24 32 48 64; do
        renderIconCollection ${color} ${size} &

        # once we hit $THREADS jobs, wait for one to finish
        while (( $(jobs -rp | wc -l) >= THREADS )); do
            wait -n
        done
    done
done

wait
