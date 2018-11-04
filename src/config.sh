#!/bin/bash

TITLE="RELACIONES DE NUBE"
STITLE="Fede Cámara Halac"

ALLPARTS=(violini violinii viola cello)

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

# `echo $1 | awk '{print toupper($0)}'`

" 
}
function subtitelize() {
	echo "

## `echo $1 | awk '{print toupper($0)}'`

" 
}


function tg() {
	echo "
<$1 id=$3>$2</$1>
"
}
function audioTag() {
	echo "
<audio controls>
<source src=\"$1\" type=\"audio/mpeg\">
Your browser does not support the audio element.
</audio> 
"
}


CONFIG=1

