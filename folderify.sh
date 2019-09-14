#!/bin/bash

# Option flag parsing using bash's getopts function
while getopts ":e:" option; do
    case "${option}" in
        e) e=${OPTARG} ;;
    esac
done

# Filename parsing, directory creation, and move operations
for file in *."${e}"; do
           dir=${file%%.*}
           mkdir -p -- "$dir"
           mv "$file" "$dir"
done
