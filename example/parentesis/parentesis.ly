viola = \new Voice \relative c' {
\override Score.BarLine.stencil= ##f
  \clef alto
  d1^"30-90''"(\< ~ <d cis ees>)\pppp
}

#(set! paper-alist (cons '("papersize" . (cons (* 2 in) (* 1 in))) paper-alist))

\paper {
  #(set-paper-size "papersize")
}

\header {
  tagline = "" 
} 

\score {
	\new Staff \viola
	\layout { 
     \context { 
       \Staff 
       	\override TimeSignature #'stencil = #point-stencil
       	} 
 	  }
}
\version "2.19.56"

