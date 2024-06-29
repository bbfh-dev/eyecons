#!/usr/bin/env bash

generate_table() {
  local images=("$@")
  local rows=""

  rm -rf .docs
  mkdir .docs
  for img in "${images[@]}"; do
    cp ./icons/$img ./.docs/white_$img
    cp ./icons/$img ./.docs/$img
    sed -i 's/currentColor/#ffffff/g' ./.docs/white_$img
    sed -i 's/currentColor/#000000/g' ./.docs/$img
    rows+="<img src=\"./.docs/white_$img#gh-light-mode-only\" width=\"32px\" height=\"32px\" />\n"
    rows+="<img src=\"./.docs/$img#gh-dark-mode-only\" width=\"32px\" height=\"32px\" />\n"
    # rows=$rows"\n<p>"$(tr -d '\0' < ./icons/$img)"</p>"
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
