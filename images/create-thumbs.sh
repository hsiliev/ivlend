#!/bin/bash

set -e

mkdir -p "$1"/thumbs

for path in "$1"/fulls/*; do
  file=$(basename "${path}")
  echo "Processing image $file ..."
  convert -thumbnail x250 "$path" "$1/thumbs/$file"
done
