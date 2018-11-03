#!/bin/bash


TGTMD=README.md
SRCMD=./md
IHTML=index.html

source ./src/config.sh
source ./src/make_readme_file.sh
source ./src/make_html_file.sh

make_readme_file $TGTMD $SRCMD
make_html_file $TGTMD $IHTML

open $IHTML
