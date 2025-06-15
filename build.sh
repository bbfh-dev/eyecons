#!/usr/bin/bash

THREADS=$(ls /dev/cpu/ | wc -l)
VERSION="v1.2.0"
NAME="eyecons-$VERSION"
DIR="./build/$NAME"

SET_OPACITY="0.4"

mkdir -p $DIR
rm -rf $DIR/*

cp ./LICENSE $DIR/.

#region: Symbolic
echo "==> Export: symbolic icons"
# --------

mkdir_and_cp() {
    mkdir -p $(dirname "$2") && cp "$1" "$2"
}

function copyIcon {
    file=$1
    mkdir_and_cp $file "$DIR/symbolic/web/$(basename $file)"
    mkdir_and_cp $file "$DIR/symbolic/white/$(basename $file)"
    mkdir_and_cp $file "$DIR/symbolic/black/$(basename $file)"
}

for file in ./icons/default/*.svg ./icons/misc/*.svg; do
    copyIcon $file &

    # once we hit $THREADS jobs, wait for one to finish
    while (( $(jobs -rp | wc -l) >= THREADS )); do
        wait -n
    done
done

wait

echo "--- Apply: colors"
sed -i 's/@color/#ffffff/g' $DIR/symbolic/white/*
sed -i 's/@color/#000000/g' $DIR/symbolic/black/*
sed -i 's/@color/currentColor/g' $DIR/symbolic/web/*

echo "--- Apply: opacity"
sed -i "s/@opacity/$SET_OPACITY/g" $DIR/symbolic/**/*
#endregion

#region: Render icons
echo "==> Export: render icons"

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
    echo "--- Rendered ${color}:${size}x${size}"
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
#endregion

#region Pixel art icons
echo "==> Export: pixel art icons"

mkdir -p $DIR/raster/pixelart/8x8/
mkdir -p $DIR/raster/pixelart/16x16/
mkdir -p $DIR/raster/pixelart/32x32/
mkdir -p $DIR/raster/pixelart/64x64/

for file in ./icons/pixel/*.png; do
    base=$(basename $file)
    cp $file "$DIR/raster/pixelart/8x8/$base"
    for size in 16 32 64; do
        ffmpeg -loglevel quiet -i $file -vf scale=$size:$size -sws_flags neighbor "$DIR/raster/pixelart/${size}x${size}/$base" &
    done

    # once we hit $THREADS jobs, wait for one to finish
    while (( $(jobs -rp | wc -l) >= THREADS )); do
        wait -n
    done
done
#endregion

#region Pixel art icons
cd $DIR

echo "==> Compress into .tar.gz"
tar -czf /tmp/eyecons.tar.gz ./LICENSE ./raster ./symbolic

echo "==> Compress into .zip"
zip -rq /tmp/eyecons.zip .

cd ..

mv /tmp/eyecons.tar.gz "$NAME.tar.gz"
mv /tmp/eyecons.zip "$NAME.zip"
#endregion

#region (Chore) create a symlink
echo "==> Creating ./build/latest/ symlink"

rm latest
ln -s $NAME latest
#endregion
