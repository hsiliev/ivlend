#!/bin/bash

set -e

mkdir -p gallery/"$1"/thumbs

for path in gallery/"$1"/fulls/*; do
  file=$(basename "${path}")
  echo "Processing image $file ..."
  convert -thumbnail x400 "$path" gallery/"$1/thumbs/$file"
done
