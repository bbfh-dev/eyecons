dir=$(basename $(pwd))

if ! [ dir = "scripts" ]; then
    cd scripts
fi

prettier --config .prettierrc.json --parser html --write "../icons/**/*.svg"
