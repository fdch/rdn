
#(set! paper-alist (cons '("papersize" . (cons (* 6 in) (* 1 in))) paper-alist))
\paper {
  #(set-paper-size "papersize")
}
\header {
  tagline = "" 
} 
\include "violinii.ly"

\score {
	\new Staff \violinii
	\layout { 
     \context { 
       \Staff 
       	\override TimeSignature #'stencil = #point-stencil
       	} 
 	  }
}
\version "2.19.56"

