#!/bin/bash
#==============================================================================
#
#	WAVES CONFIGURATION FILE
#
#	DISSERTATION OUTLINE GENERATOR FOR:
#	PDF, HTML, MARKDOWN, DOCX, OPEN OFFICE, PLAIN TEXT 
#
#	CONTACT FCH226@NYU.EDU
#
#==============================================================================

#	Title and Subtitle of Dissertation Outline

TITLE="DATABASE MULTIMEDIA COMPOSITION"
STITLE="Extended Outline"

#	Fontsize

FONTSIZE=12pt

#	Main Latex container and body
MDIR=`pwd`
TTEX="$MDIR/main.tex"
ODIR="$MDIR/output"
STYLES="$MDIR/styles"

#	HTML STUFF

THTML="$MDIR/index.html"
CSS=$STYLES/style.css
META="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"

#	FORMATS

FORMATS=(docx odt md txt) # pdf)
FMT=(docx odt markdown plain) # latex)

#	Set Verbosity

VERBOSE=0

#	pdflatex Flags

FLAGS="-interaction nonstopmode -file-line-error"

#==============================================================================
#	META INFO
#==============================================================================
CMDNAME=generate
CINTRO="THIS FILE IS PART OF:"
CAUTO="AUTOMATICALLY GENERATED FROM: 'sh $CMDNAME'"
EMAIL="FCH226@NYU.EDU"
DDATE=`date`
LINTRO="%
%
%	$CINTRO
%	$TITLE | $STITLE
%
%	$CAUTO
%	$DDATE
%	
%	CONTACT $EMAIL
%
%"
HINTRO="<!--

	$CINTRO
	$TITLE | $STITLE

	$CAUTO
	$DDATE

	CONTACT $EMAIL

-->"
WELCOME="
#==============================================================================
#
#	'generate'
#
#	DISSERTATION OUTLINE GENERATOR FOR:
#	PDF, HTML, MARKDOWN, DOCX, OPEN OFFICE 
#
#	CONTACT FCH226@NYU.EDU
#
#==============================================================================
"
#==============================================================================
#	USAGE MESSAGE
#==============================================================================
USAGE="Usage:

		./$CMDNAME
	Executes the program

		./$CMDNAME -v
	Executes the program posting extra log info to console

		./$CMDNAME -o <fmt>
	Executes the program and opens the output in any of these formats:
			html, pdf, or: ${FORMATS[*]}
	
		./$CMDNAME -n
	Concatenates all sections into the main Latex file and exits.
		
		./$CMDNAME -t
	Concatenates all sections into the main Latex file compiles and exits.

		./$CMDNAME -h
	Displays this message and exits.

"
#==============================================================================
#	Trick new line and tabs
#==============================================================================
NL="
"
T="
	"
TT="
		"
