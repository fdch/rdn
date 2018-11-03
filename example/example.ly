global= {

	
}

violinOne = \new Voice \relative c''' {
\override Score.BarLine.stencil= ##f
  \set Staff.instrumentName = #"Violin 1 "

  fis1 f e es d des c b bes

 % \bar "|."
}

violinTwo = \new Voice \relative c'' {
\override Score.BarLine.stencil= ##f
  \set Staff.instrumentName = #"Violin 2 "

  fis bes, a aes g f e ees d

 % \bar "|."
}

viola = \new Voice \relative c'' {
\override Score.BarLine.stencil= ##f
  \set Staff.instrumentName = #"Viola "
  \clef alto

  c1 b g ees d cis a f e

 %\bar "|."
}

cello = \new Voice \relative c' {
\override Score.BarLine.stencil= ##f
  \set Staff.instrumentName = #"Cello "
  \clef bass

  ees1 d cis a f e b fis dis

  %\bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \violinOne >>
    \new Staff << \global \violinTwo >>
    \new Staff << \global \viola >>
    \new Staff << \global \cello >>
  >>
  \layout { }
  % \midi { }
}

\version "2.19.56"