#!/usr/bin/bash

THREADS=$(ls /dev/cpu/ | wc -l)
VERSION="v1.3.6"
NAME="eyecons-$VERSION"
DIR="./dist/$NAME"
CHANGELOG_FILE="./dist/CHANGELOG.md"

rm -fr ./dist/*
mkdir -p $DIR

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
ln -s $NAME latest

echo "Done."
