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
        echo -n "- 📥 Added \`${name%.svg}\` " >> $CHANGELOG_FILE
        cat $file >> $CHANGELOG_FILE
    fi
done

echo "" >> $CHANGELOG_FILE

for file in $old_dir/*; do
    name=$(basename $file)
    if [ ! -f "${new_dir}/$name" ]; then
        echo -n "- 📤 Removed \`${name%.svg}\` " >> $CHANGELOG_FILE
        cat $file >> $CHANGELOG_FILE
    fi
done

echo "" >> $CHANGELOG_FILE
