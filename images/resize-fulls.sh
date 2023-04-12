#!/bin/bash

set -e

mkdir -p "$1"/fulls/resized

for path in "$1"/fulls/*; do
  file=$(basename "${path}")
  echo "Processing image $file ..."
  convert -thumbnail x1300 "$path" "$1/fulls/resized/$file"
done
