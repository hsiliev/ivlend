#!/bin/bash

set -e

gallery_dir=$1
number_of_images=$2

echo "				<!-- Thumbnail -->
				<section id=\"thumbnails\">"

for i in $(seq 1 "$number_of_images"); do
  formatted_num=$(printf "%03d" "$i")
  echo "				<article>
            <a class=\"thumbnail\" href=\"images/gallery/$gallery_dir/fulls/$formatted_num.jpg\" data-position=\"left center\"><img src=\"images/gallery/$gallery_dir/thumbs/$formatted_num.jpg\" alt=\"\" /></a>
            <h2></h2>
            <p></p>
				</article>"
done

echo "				</section>"
