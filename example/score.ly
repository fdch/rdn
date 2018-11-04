\include "violini.ly"
\include "violinii.ly"
\include "viola.ly"
\include "cello.ly"

#(set! paper-alist (cons '("papersize" . (cons (* 6 in) (* 5 in))) paper-alist))

\paper {
  #(set-paper-size "papersize")
}

\header {
  tagline = "" 
} 

\score {
  \new StaffGroup <<
    \new Staff << \violini >>
    \new Staff << \violinii >>
    \new Staff << \viola >>
    \new Staff << \cello >>
  >>
  \layout { }
}

\version "2.19.56"