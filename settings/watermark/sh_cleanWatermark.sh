#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


echo "Cleaning $SCRIPT_DIR"

fileEndings=(-blx.bib .aux .bcf* .fdb_latexmk .fls .glo .lof .log .run.xml .synctex* .toc .lot .bbl* .for .ist .blg .lol)

for i in ${fileEndings[@]}; do
    if ls $SCRIPT_DIR/*$i &> /dev/null; then
        rm $SCRIPT_DIR/*$i
        echo "Removed all files with the ending '$i'"
    fi
done

echo ""