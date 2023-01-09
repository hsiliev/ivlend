#!/bin/bash

set -e

for path in fulls/*; do
  file=$(basename ${path})
  echo "Prcoessing image $file ..."
  convert -thumbnail 360 $path thumbs/$file
done
