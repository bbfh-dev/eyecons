#!/usr/bin/bash

THREADS=$(ls /dev/cpu/ | wc -l)
header='<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="@color">'

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

for file in icons/default/**/*.svg; do
    myformat $file &

    # once we hit $THREADS jobs, wait for one to finish
    while (( $(jobs -rp | wc -l) >= THREADS )); do
        wait -n
    done
done

wait
