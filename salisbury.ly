\version "2.18.2"
\language "english"

\header {
  title = "Earl of Salisbury Pavan"
  composer = "arr. P. Butler"
  arranger = "moved to bass clef by Isabel Reilly"
}

global = {
  \key c \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
}

scoreATromboneI = \relative c {
  \global
  % Music follows here.
  
  \repeat volta 2 {
   c'4 a2 c4
   b2. e,4
   fs8 g a2 gs4
   a2. a4
   c2~ c8 c b a 
   b2~ b8 b a g
   a2~ a8 c b a
   gs2. b4
  }
  \repeat volta 2 {
   c4 a d b
   e4. d8 c4 e~
   e8 c f4~ f8 d g4
   e4. d8 c4 e~
   e4 d4~ d8 e c4
   b4. a8 gs a b c
   b a a2 gs4
  } \alternative {
    { a2. b4 }
    { a1 }
  }
  \bar "|."
}

scoreATromboneII = \relative c {
  \global
  % Music follows here.
    \repeat volta 2 {
   e4. a8 e4 a~
   a gs8 fs gs a b c
   d4 a d2
   cs4. a8 e2
   r4 e'4 f2~
   f8 f e d e2~
   e8 e d c d4. a8
   e'2. e,4
  }
  \repeat volta 2 {
   e8 c f4~ f8 d g4
   c,2. g'4
   c4 a d b
   c g a c
   b2. a4
   gs4 e'2 d4~
   d8 e c4 e4. d8
  } \alternative {
    { cs2. e,4 }
    { cs'1 }
  }
  \bar "|."
}

scoreATromboneIII = \relative c {
  \global
  % Music follows here.
    \repeat volta 2 {
   a2. c4
   e2 gs4 b
   a4 fs d2
   a'2 cs,
   a'2 f?
   g g4 e
   a2 f4 d
   e2. r4
  }
  \repeat volta 2 {
   a2 g
   c, c
   e g
   c, e4 a
   e2 gs4 a
   e2 e
   a2 c,4 e
   
  } \alternative {
    { a2. r4 }
    { a,1 }
  }
  \bar "|."
}

scoreATromboneIPartTreble = \new Staff \with {
  midiInstrument = "oboe"
} { \clef treble \transpose c c' { \scoreATromboneI }}

scoreATromboneIPart = \new Staff \with {
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneI }

scoreATromboneIIPart = \new Staff \with {
  midiInstrument = "bassoon"
  instrumentName = "was 8va"
} { \clef bass \scoreATromboneII }

scoreATromboneIIIPart = \new Staff \with {
  midiInstrument = "trombone"
  instrumentName = "8vb?"
} { \clef bass \scoreATromboneIII }

\score {
  \new StaffGroup <<
    \new GrandStaff <<
      \scoreATromboneIPartTreble
      \scoreATromboneIPart
    >>
    \scoreATromboneIIPart
    \scoreATromboneIIIPart
  >>
  \layout { 
     \context {
      \Voice
      \consists "Ambitus_engraver"
    }
  }
  \midi {
    \tempo 4=100
  }
}
