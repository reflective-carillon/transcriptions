\version "2.18.2"
\language "english"

\header {
  title = "Horses Bransle"
  subtitle = "from Arbeau (1589)"
  composer = "Arrangement by Paul Butler from Thoinot Arbeau‘s L’Orchesographie published 1589. "
  arranger = "Moved to bass clef by Isabel Reilly"
  subsubtitle = "Mimed bransle with dancers prancing like horses."
  meter = ""
}

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
}

scoreATromboneI = \relative c {
  \global
  % Music follows here.
  g'4 a b b
  c b a c
  b a g fs
  e2 d
  
   g4 a b b
  c b a c
  b g a a
  g2 g
  
  d'4 c8 b a4 a8 b
  c4 b8 a g4 b
  a4 g fs g
  a2 a
  
  d4 c8 b a4 a8 b
  c4 b8 a g4 b
  a4 g g fs
  g2 g
  
  
  \key f \major
  \bar "||"
  
  bf4 a8 g bf4 a8 g
  f?4 g a2
  d,4 e f g
  a bf a g
  
 bf4 a8 g bf4 a8 g
  f4 g a2
 d,4 e f g 
 g4 fs g2
  
  \bar "|."
  
}

scoreATromboneII = \relative c' {
  \global
  % Music follows here.
  
  b4 c d d
  a g fs a
  g d g b
  c2 b
  
  b4 c d d
  a g fs a
  g b d d
  b2 b
  
  b4 g fs d
  g g d g
  fs e d e
  fs2 fs
  
  
  b4 g fs d
  g g d g
  fs d d a'
  b2 b
  
  \key f \major
  \bar "||"
  
  g4. d8 g4. d8
  d4 e f? d
  g a bf? g
  f g f d
  
  g4. d8 g4. d8
  d4 e f d
  g g d d 
  bf' a b2
  
  \bar "|."
}

scoreATromboneIII = \relative c {
  \global
  % Music follows here.
  
  d4 e g g
  c, d d c
  d d b d
  e2 g
  
  d4 e g g
  c, d d c
  d d fs fs 
  d2 d
  
  g,4 g d'4 d
  e e d d 
  d e d c
  d2 d
  
  g,4 g d'4 d
  e e d d 
  d g, g d'
  d2 d
  
  
  
  \key f \major
  \bar "||"
  
  d4. bf8 d4. bf8
  a4 g d'2
  bf4 a d d
  d d a d
  
  d4. bf8 d4. bf8
  a4 g d'2
  d4 d bf bf
  d d d2
  
  \bar "|."
}

scoreATromboneIV = \relative c {
  \global
  % Music follows here.
  g'4 g d d
  c d a d
  g g d d
  c2 g'2
  
    g4 g d d
  c d a d
  g g d d
  g2 g2
  
  g4 g d a
  c c g' g
  d a d d
  d2 d
  
  g4 g d a
  c c g' g
  d a d d
  g2 g
  
  \key f \major
  \bar "||"
  
  g2 g
  d4 e d2
  g2 g 
  d d
  
  
  g2 g
  d4 e d2
  g2 g 
  g4 d g,2
  
  \bar "|."
}

scoreATromboneIPartTreble = \new Staff \with {
  midiInstrument = "oboe"
} { \clef treble \transpose c c' { \scoreATromboneI } }

scoreATromboneIPart = \new Staff \with {
  midiInstrument = "oboe"
} { \clef bass \scoreATromboneI }

scoreATromboneIIPart = \new Staff \with {
  midiInstrument = "trombone"
  instrumentName = "was 8va"
} { \clef bass \scoreATromboneII }

scoreATromboneIIIPart = \new Staff \with {
  midiInstrument = "bassoon"
  instrumentName = "was 8va"
} { \clef bass \scoreATromboneIII }

scoreATromboneIVPart = \new Staff \with {
  midiInstrument = "trombone"
  instrumentName = "8vb?"
} { \clef bass \scoreATromboneIV }

\score {
  \new StaffGroup
  <<
    \new GrandStaff <<
    \scoreATromboneIPartTreble
    \scoreATromboneIPart
    >>
    \scoreATromboneIIPart
    \scoreATromboneIIIPart
    \scoreATromboneIVPart
  >>
  \layout {
    \context {
      \Voice
      \consists "Ambitus_engraver"
    }
  }
  \midi {
  \tempo 2 = 120
  }
}
