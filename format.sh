#!/usr/bin/bash

header='<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="#ffffff">'
shopt -s globstar dotglob

function do_compress {
    file=$1
    cp $file "${file}.min"

    scour \
        --quiet \
        --strip-xml-prolog \
        --remove-descriptive-elements \
        --enable-comment-stripping \
        --indent=tab \
        --strip-xml-space \
        --enable-id-stripping \
        --shorten-ids \
        $file "${file}.min"
    prettier --parser html --print-width 100 --use-tabs --write "${file}.min"
    mv "${file}.min" $file

    # Second pass to change the header
    echo $header > "${file}.min"
    tail -n+2 $file >> "${file}.min"
    mv "${file}.min" $file
}

for file in ./icons/**/*; do
    if [[ ! -d $file ]]; then
        do_compress $file &
    fi
done

wait
