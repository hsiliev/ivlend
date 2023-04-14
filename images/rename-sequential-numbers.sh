#!/bin/bash

set -e

mkdir -p "$1"/fulls/renamed

num=1
for path in "$1"/fulls/*; do
  file=$(basename "${path}")
  formatted_num=$(printf "%03d" $num)
  echo "Renaming image $file to $1/fulls/renamed/$formatted_num.jpg ..."
  cp "$path" "$1/fulls/renamed/$formatted_num.jpg"
  num=$(( num + 1 ))
done
