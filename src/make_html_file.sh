#!/bin/bash

if [ -z $CONFIG ]; then source config.sh ; fi

function make_html_file() {
	if [[ $1 ]]; then
		local SOURCE=$1
	else
		local SOURCE=README.md
	fi
	if [[ $2 ]]; then
		local TARGET=$2
	else
		local TARGET=index.html
	fi

	pandoc --toc -s $SOURCE -f markdown -t html -o $TARGET  

	HBODY=`cat $TARGET | sed 's/<p>//g;s/<\/p>//g'`
	echo "$HINTRO
	<!DOCTYPE html><html><head><title>"$TITLE" | "$STITLE"</title>
	<meta charset=\"UTF-8\">
	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
	<meta name=\"viewport\" content=\""$META"\">
	<link rel=\"stylesheet\" type=\"text/css\" href=\""$CSS"\"></head>
	<body>
	<main>"$HBODY"</main></body></html>
	" > $TARGET

}
