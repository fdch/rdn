
#(set! paper-alist (cons '("papersize" . (cons (* 6 in) (* 1 in))) paper-alist))
\paper {
  #(set-paper-size "papersize")
}
\header {
  tagline = "" 
} 
\include "viola.ly"

\score {
	
ew Staff iola
	\layout { 
     