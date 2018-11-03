#!/bin/bash

TITLE="RELACIONES DE NUBE"
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

function sep() {
	echo "
	
---

"	
}
function titelize() {
	echo "

# $1

" 
}
function subtitelize() {
	echo "

## $1

" 
}
CONFIG=1

