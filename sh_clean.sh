#!/bin/bash

DIRS_TO_BE_CLEANED=(/settings/watermark /document /settings/config)
FILE_ENDINGS=(-blx.bib .aux .bcf* .fdb_latexmk .fls .glo .lof .log .run.xml .synctex* .toc .lot .bbl* .for .ist .blg .lol)


################### DO NOT CHANGE SOMETHING BELOW THIS LINE ###################

##>--- CONSTANTS ---<##
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

##>--- FUNCTIONS ---<##
clean_dir()
{
    # Change to the directory to be cleaned and save its path
    cd $SCRIPT_DIR$1
    CURRENT_DIR=$(pwd)

    echo "Cleaning '$CURRENT_DIR'"
    # Loop through all file endings
    for i in ${FILE_ENDINGS[@]}; do
        FILE_PATH=$CURRENT_DIR/*$i
        # Check if there are files with the ending $i, if so, remove them
        if ls $FILE_PATH &> /dev/null; then
            rm $FILE_PATH
            echo "Removed all files with the ending '$i'"
        fi
    done
    echo ""
}

##>--- MAIN ---<##
# Loop through all directories to be cleaned
for i in ${DIRS_TO_BE_CLEANED[@]}; do
    clean_dir $i
done