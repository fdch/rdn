
#(set! paper-alist (cons '("papersize" . (cons (* 6 in) (* 1 in))) paper-alist))
\paper {
  #(set-paper-size "papersize")
}
\header {
  tagline = "" 
} 
\include "cello.ly"

\score {
	\new Staff \cello
	\layout { 
     \context { 
       \Staff 
       	\override TimeSignature #'stencil = #point-stencil
       	} 
 	  }
}
\version "2.19.56"

