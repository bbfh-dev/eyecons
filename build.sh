#!/usr/bin/bash

THREADS=$(ls /dev/cpu/ | wc -l)
PREVIOUS_VERSION="v1.3.2"
VERSION="v1.3.3"
NAME="eyecons-$VERSION"
DIR="./dist/$NAME"
PREVIOUS_DIR="./dist/eyecons-$PREVIOUS_VERSION"
CHANGELOG_FILE="./dist/CHANGELOG.md"

mkdir -p $DIR
if [ -d $PREVIOUS_DIR ]; then
    rm -r /tmp/eyecons-previous
    mv $PREVIOUS_DIR /tmp/eyecons-previous
fi
rm -rf $DIR/*

cp ./LICENSE $DIR/.

source ./_build.symbolic.sh
source ./_build.raster.sh

echo "Compress:"
cd $DIR
echo "    Compress into .tar.gz"
tar -czf /tmp/eyecons.tar.gz ./LICENSE ./raster ./symbolic
echo "    Compress into .zip"
zip -rq /tmp/eyecons.zip .
cd ..
mv /tmp/eyecons.tar.gz "$NAME.tar.gz"
mv /tmp/eyecons.zip "$NAME.zip"

echo "    Symlinking ./build/latest/"
rm latest
ln -s $NAME latest

cd ..
echo "Generating CHANGELOG.md..."
old_dir="/tmp/eyecons-previous/symbolic/white/"
new_dir="${DIR}/symbolic/white/"
source ./_build.changelog.sh

echo "Done."
