#!/bin/bash

set -e

number_of_images=$1
gallery_dir=$2

for i in $(seq 1 "$number_of_images"); do
  formatted_num=$(printf "%03d" "$i")
  echo "            <article>
                <a href=\"images/gallery/$gallery_dir/fulls/$formatted_num.jpg\" class=\"image\">
                    <img src=\"images/gallery/$gallery_dir/thumbs/$formatted_num.jpg\" alt=\"\"/>
                </a>
                <div class=\"caption\">
                    <h3></h3>
                    <p></p>
                    <ul class=\"actions fixed\">
                        <li><span class=\"button small\">Увеличи</span></li>
                    </ul>
                </div>
            </article>"
done
