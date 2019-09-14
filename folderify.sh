#!/bin/bash

# Option flag parsing using bash's getopts function
while getopts ":e:d:" option; do
    case "${option}" in
        e) e=${OPTARG} ;;       # enables "-e" flag for specifying file extension [dpx, exr, tiff, etc]
        d) d=${OPTARG} ;;       # enables "-d" flag for specifying sub-directory path [i.e. resolution]
    esac
done

# Request for file extension if one is not specified
if [ -z "${e}" ];
    then echo "Please specify a file extension: ./folderify -e [dpx,exr,tif,etc]";
    else

# Filename parsing, directory creation, and move operations
for file in *."${e}"; do
           dir=${file%%.*}
           mkdir -p -- "$dir/${d}"
           mv "$file" "$dir/${d}"
done
fi
