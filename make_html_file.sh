#!/bin/bash

INDEX=index.html
TITLE="Relaciones de Nube"
STITLE="Fede Cámara Halac"
CMDNAME=make_html_file.sh
CINTRO="THIS FILE IS PART OF:"
CAUTO="AUTOMATICALLY GENERATED FROM: 'sh $CMDNAME'"
EMAIL="FCH226@NYU.EDU"
DDATE=`date`
CSS=style.css
META="width=device-width,minimum-scale=0.5,maximum-scale=1.5,user-scalable=yes"
HINTRO="<!--

	$CINTRO
	$TITLE | $STITLE

	$CAUTO
	$DDATE

	CONTACT $EMAIL

-->"
pandoc -f markdown -t html -o $INDEX $1 

HBODY=`cat $INDEX | sed 's/<p>//g;s/<\/p>//g'`
echo "$HINTRO
<!DOCTYPE html><html><head><title>"$TITLE" | "$STITLE"</title>
<meta charset=\"UTF-8\">
<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
<meta name=\"viewport\" content=\""$META"\">
<link rel=\"stylesheet\" type=\"text/css\" href=\""$CSS"\"></head>
<body>
<main>"$HBODY"</main></body></html>
" > $INDEX

open $INDEX

exit