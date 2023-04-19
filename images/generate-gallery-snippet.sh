#!/bin/bash

set -e

gallery_dir=$1
number_of_images=$2

echo "				<!-- Main -->
				<div id=\"main\">"

for i in $(seq 1 "$number_of_images"); do
  formatted_num=$(printf "%03d" "$i")
  echo "					<article class=\"thumb\">
        						<a href=\"images/gallery/$gallery_dir/fulls/$formatted_num.jpg\" class=\"image\"><img src=\"images/gallery/$gallery_dir/thumbs/$formatted_num.jpg\" alt=\"\" /></a>
        						<h2></h2>
        						<p></p>
        					</article>"
done

echo "				</div>"
