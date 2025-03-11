#!/usr/bin/bash

VERSION="v1.1.1"

function copyIcon {
    file=$1
    cp $file "./dist/symbolic/web/$(basename $file)"
    cp $file "./dist/symbolic/white/$(basename $file)"
    cp $file "./dist/symbolic/black/$(basename $file)"
}

function renderIcon {
    file=$1
    color=$2
    size=$3
    resvg -w $size -h $size $file "./dist/raster/${color}/${size}x${size}/$(basename -s .svg $file).png"
}

function renderIcons {
    color=$1
    size=$2
    echo "--- Rendering ${size}x${size} (${color})"
    mkdir -p "./dist/raster/${color}/${size}x${size}"
    for file in ./dist/symbolic/${color}/*.svg; do
        renderIcon $file $color $size
    done
}

rm -r ./dist/

echo "=== Exporting symbolic"

mkdir -p ./dist/symbolic/web/
mkdir -p ./dist/symbolic/black/
mkdir -p ./dist/symbolic/white/
for file in ./beta/*.svg; do
    copyIcon $file
done
for file in ./prod/*.svg; do
    copyIcon $file
done

echo "--- Saving white icons"
sed -i 's/currentColor/#ffffff/g' ./dist/symbolic/white/*

echo "--- Saving black icons"
sed -i 's/currentColor/#000000/g' ./dist/symbolic/black/*

echo "=== Exporting raster (black)"

for color in black white; do
    for size in 12 16 24 32 48 64; do
        renderIcons ${color} ${size} &
    done
done
wait

cp ./LICENSE ./dist/.
cd ./dist/

echo "=== Creating a .tar.gz"
tar -czf "/tmp/eyecons.tar.gz" ./LICENSE ./symbolic ./raster

echo "=== Creating a .zip"
zip -rq /tmp/eyecons.zip .

mv /tmp/eyecons.tar.gz "./eyecons-${VERSION}.tar.gz"
mv /tmp/eyecons.zip "./eyecons-${VERSION}.zip"

echo "=== Done"
