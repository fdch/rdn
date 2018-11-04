#!/bin/bash


TGTMD=README.md
SRCMD=./md
IHTML=index.html

source ./src/config.sh
source ./src/make_readme_file.sh
source ./src/reformat_html.sh
source ./src/make_audio_html.sh
source ./example/make_parts.sh



make_readme_file $TGTMD $SRCMD

pandoc --toc --css css/pandoc.css -s $TGTMD -f markdown -t html5 -o $IHTML 

cd src
make_audio_divs
cd ..

cd example
compile_all_parts
cd ..

open $IHTML
