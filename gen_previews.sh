#!/usr/bin/env bash

generate_table() {
  local images=("$@")
  local rows=""

  for img in "${images[@]}"; do
    # rows+="<img src=\"./icons/$img\" width=\"32px\" height=\"32px\" />"
    rows=$rows"\n<p>"$(tr -d '\0' < ./icons/$img)"</p>"
  done

  rows=$(sed -e 's/width=\"16\"/width=\"32\"/g' <<< $rows)
  rows=$(sed -e 's/height=\"16\"/height=\"32\"/g' <<< $rows)
  echo -e $rows
}

images=($(ls icons))
table_content=$(generate_table "${images[@]}")

# Read the README file and replace the content between the markers
text=""
while IFS= read -r line; do
    text=$text\\n$line
    if echo $line | grep -iqF "insert-icons-preview"; then
        text=$text\\n$(generate_table "${images[@]}")\\n
    fi
done < readme_source.md
echo -ne "$text" > README.md
prettier README.md --write
