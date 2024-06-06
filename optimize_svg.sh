#!/usr/bin/env bash

HEADER="<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" viewBox=\"0 0 16 16\" fill=\"currentColor\">"
for FILE in ./icons/*
do
  if [ -f "$FILE" ]; then
    TEMP_FILE=$(mktemp)
    echo "$HEADER" > "$TEMP_FILE"

    # Append the rest of the original file content to the temporary file, skipping the first line
    tail -n +2 "$FILE" >> "$TEMP_FILE"

    mv "$TEMP_FILE" "$FILE"
    # nvim $FILE -c ":setfiletype html"
  fi
done
