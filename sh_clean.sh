#!/bin/bash

DIRS_TO_BE_CLEANED=(/settings/watermark /document /settings/config)
FILE_ENDINGS_TO_BE_SAVED=(.tex .pdf)


################### DO NOT CHANGE SOMETHING BELOW THIS LINE ###################

##>--- CONSTANTS ---<##
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


##>--- FUNCTIONS ---<##
clean_dir()
{
    # Change to the directory to be cleaned and save its path
    cd $SCRIPT_DIR$1
    current_dir=$(pwd)

    echo "Cleaning '$current_dir'"
    # Loop through all files and delete the ones which don't use a file ending of the ones specified in %FILE_ENDINGS_TO_BE_SAFED%
    for F in *; do
        should_be_removed=true

        # Loop through all file endings
        for e in ${FILE_ENDINGS_TO_BE_SAVED[@]}; do
            # Check if the file has an ending from the list and if so, set flag to false
            if [[ $F == *$e ]]; then
                should_be_removed=false
            fi
        done

        # If the file should be removed, remove it
        if $should_be_removed; then
            rm "$F"
            echo "Removed file: $F"
        fi
    done
    echo ""
}


##>--- MAIN ---<##
# Loop through all directories to be cleaned
for i in ${DIRS_TO_BE_CLEANED[@]}; do
    clean_dir $i
done