#!/bin/bash
for file in *.dpx; do
           dir=${file%%.*}
           mkdir -p -- "$dir"
           mv "$file" "$dir"
done
