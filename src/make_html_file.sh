#!/bin/bash

if [[ $1 ]]; then
	SOURCE=$1
else
	echo "Please provide a Markdown source via argument 1"
fi
if [[ $2 ]]; then
	TARGET=$2
else
	echo "Please provide a TARGET FILENAME via argument 1"
fi


TITLE="Relaciones de Nube"
STITLE="Fede Cámara Halac"
CMDNAME=make_html_file.sh
CINTRO="THIS FILE IS PART OF:"
CAUTO="AUTOMATICALLY GENERATED FROM: 'sh $CMDNAME'"
EMAIL="FCH226@NYU.EDU"
DDATE=`date`
CSS=css/style.css
META="width=device-width,minimum-scale=0.5,maximum-scale=1.5,user-scalable=yes"
HINTRO="<!--

	$CINTRO
	$TITLE | $STITLE

	$CAUTO
	$DDATE

	CONTACT $EMAIL

-->"
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

open $TARGET

exit