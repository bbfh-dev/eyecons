#!/usr/bin/bash

dir=$(basename $(pwd))
header='<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="@color">'

if [ dir = "scripts" ]; then
    cd ..
fi

cp -r icons/ /tmp/eyecons.bak

function myformat {
    file=$1
    base=$(basename $file)

    cp $file /tmp/$base.backup
    echo $header > $file
    tail -n+2 /tmp/$base.backup >> $file

    prettier --log-level silent --config scripts/.prettierrc.json --parser html --write $file
    echo "--- Formatted $base"
}

shopt -s globstar

for file in icons/**/*.svg; do
    myformat $file &
done

wait

# prettier --config .prettierrc.json --parser html --write "../icons/**/*.svg"
