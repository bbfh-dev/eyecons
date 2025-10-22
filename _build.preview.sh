#!/usr/bin/bash

DOCS_DIR=.docs/icon
PREVIEW_SIZE="16px"

rm -rf $DOCS_DIR
mkdir -p $DOCS_DIR
cp -r ./dist/latest/symbolic/white $DOCS_DIR/
cp -r ./dist/latest/symbolic/black $DOCS_DIR/

CONTENT=""
for file in $DOCS_DIR/white/*.svg; do
    name=$(basename $file)
    CONTENT+="    <img src=\"${DOCS_DIR}/white/${name}#gh-dark-mode-only\" width=\"$PREVIEW_SIZE\" height=\"$PREVIEW_SIZE\" />"$'\n'
    CONTENT+="    <img src=\"${DOCS_DIR}/black/${name}#gh-light-mode-only\" width=\"$PREVIEW_SIZE\" height=\"$PREVIEW_SIZE\" />"$'\n'
done

BEGIN="<!-- BEGIN insert-icons-preview -->"
END="<!-- END insert-icons-preview -->"

OUTPUT=""

inside_block=false
while IFS= read -r line; do
    if [[ "$line" == *"$BEGIN"* ]]; then
        OUTPUT+="$BEGIN"$'\n'
        OUTPUT+="$CONTENT"$'\n'
        inside_block=true
    elif [[ "$line" == *"$END"* ]]; then
        OUTPUT+="$END"$'\n'
        inside_block=false
    elif [[ "$inside_block" == false ]]; then
        OUTPUT+="$line"$'\n'
    fi
done < ./README.md

mv ./README.md /tmp/README.md.bak
printf "%s" "$OUTPUT" > ./README.md

ICON_COUNT=$(ls $DOCS_DIR/white | wc -l)
sed -i -E "s|(<!-- INSERT icons-amount -->).*|\1\`${ICON_COUNT} icons\`:|" ./README.md
