#!/usr/bin/bash

# Make sure both directories exist
if [[ ! -d "$old_dir" || ! -d "$new_dir" ]]; then
    echo "Usage: $0 <old_dir> <new_dir>"
    exit 1
fi

echo -e "# Changelog $PREVIOUS_VERSION → $VERSION\n" > $CHANGELOG_FILE

for file in $new_dir/*; do
    name=$(basename $file)
    if [ ! -f "${old_dir}/$name" ]; then
        echo "- 📥 Added \`${name%.svg}\` " >> $CHANGELOG_FILE
    fi
done

for file in $old_dir/*; do
    name=$(basename $file)
    if [ ! -f "${new_dir}/$name" ]; then
        echo "- 📤 Removed \`${name%.svg}\` " >> $CHANGELOG_FILE
    fi
done

for file in $new_dir/*; do
    name=$(basename $file)
    if [ -f "${old_dir}/$name" ]; then
        if [[ $(cmp "$file" "${old_dir}/$name") ]]; then
            echo "- ⚙️ Changed \`${name%.svg}\`" >> $CHANGELOG_FILE
        fi
    fi
done

