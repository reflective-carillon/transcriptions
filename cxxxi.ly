\version "2.18.2"
\language "english"

\header {
  title = "Dances from Terpsechore: CXXXI à 4"
  subtitle = "Michael Praetorius, published 1612"
  subsubtitle = "from http://ks.imslp.net/files/imglnks/usimg/4/46/IMSLP342801-PMLP176492-Terps1.pdf"
  composer = "Courante M. M. Wustrow"
  arranger = "M. P. C. , moved to bass clef by Isabel Reilly"
  copyright = "Public Domain"
}

global = {
  \key g \dorian
  \numericTimeSignature
  \time 6/4
  \partial 4
    \override Score.BarNumber.break-visibility = ##(#f #t #t)
  
}

scoreATromboneI = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
  d4
  
  d4. c8 d4 bf4 g bf
  bf2. bf2 d4
  c4. bf8 c4 a4 f c'
  c2. c2 c4
  
  bf4. a8 g4 fs4 g2
  a4. g8 f?4 e4 d2
  cs2 d8 e f g e2
  
  
  d2. d2
  } 
  d4
  
  d2. g4. f8 g4
  fs4 d bf' a4. bf8 g4
  fs4 d2 bf'2.
  c2. d2 g,8 a
  
  bf8 c a2 g2
  \bar "||"
  d'4
  
  d4. c8 d4 ef4 d2
  c4. d8 bf4 bf4 a2
  bf2 bf4 a2 bf4
  c4. bf8 a4 g4. a8 bf4
  
  a4. g8 f4 e4 d2
  cs2 d8 e f g e2
  
  d2
  \bar "||"
  d4 d2.
  
  g2. fs4 d bf'
  a4. bf8 g4 fs4 d bf'
  a4. bf8 g4 fs4 d2
  bf'2. c
  d2 g,8 a bf c a2
  g2. g2 s4 
  \bar "||"
  g1.
  
  \bar "|."
}

scoreATromboneII = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
  bf4
  
  bf2 bf4 g2 f4
  g2. g2 bf4
  a4. g8 a4 f4 c g'4
  f2. a2 g4
  
  g2 c,4 d2 e4
  f4 c2 c4 bf2
  a2 a4 d4 cs2
  d4 a2 a2
  
  } 
  a4
  
  bf4. a8 bf4 d2 d4
  d8 e fs4 g d4 d2
  d4 fs2 g4 d2
  f?4 c f f2 bf,4
  
  ef4 d4. c8 b2
  \bar "||"
  g'4

  g4. c,8 f4 g4 f4. g8
  a4. bf8 g4 g4 f2
  f2 f4 f4 f2
  e2 fs4 g4 d2
  
  f4 c2 c4 d g
  e2 d4 d4 cs2

  d2
  \bar "||"
  a4 bf4. a8 bf[ c]
  
  d4. c8 d4 d8 e fs4 g
  d4 d2 d8 e fs4 g
  d4 d2 d8 e fs g a4
  d,2 bf4 f'? c f
  f2 bf,4 ef4 d4. c8
  
  b2. b2 s4
  \bar "||"
  b1.
  
  \bar "|."
}

scoreATromboneIII = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
  d4
  
  g2 f4 ef4 bf2
  bf2. bf2 f'4
  f4. d8 f4 c4 a g
  a2. c2 ef4
  
  d2 g,4 a bf2
  c4. bf8 a4 g4 g2
  e2 f4 d4 a'4. g8
  
  fs2. fs2
  } 
  f4^\markup { \natural } 

  g4 f2 bf4. a8 bf4
  a2 g4 a4. d8 bf4
  a2. bf2 bf4
  a2 a4 bf4 f g

  g4 fs2 g2
  \bar "||"
  bf4
  
  bf4. f'8 d4 bf2 bf4
  c4. f8 d4 ef4 c2
  d4 d2 c2 d4
  g,2 d'4 bf4. c8 d[ bf]
  c4. bf8 a4 g4 bf2
  a4. g8 f[ g] d4 a'4. g8
  
  fs2
  \bar "||"
  f4^\markup { \natural } f4. e8 f4
  
  bf4. a8 bf4 a2 g4
  a4. d8 bf4 a2 g4
  a4. d8 bf4 a4. g8 fs4
  g8 a bf c d4 a4. g8 a4
  bf4 f g g fs2
  
  g2. g2 s4
  \bar "||"
  g1.
  
  \bar "|."
}

scoreATromboneIV = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
  g'4
  
  g4. a8 bf4 ef,2 d4
  ef2. ef2 bf4
  f'4. g8 f4 f2 e4
  f2. f2 c4
  
  g'2 e4 d g2
  f2 f,4 c'4 g2
  a2 d4 g,4 a2 
  
  d2. d2
  } 
  d4
  
  bf4. c8 bf4 g4 g2
  d'2 g4 fs2 g4
  d2 d4 g2.
  f2. bf,2 ef4
  
  c4 d2 g,2
  \bar "||"
  g'4
  
  g4. a8 bf4 ef,4 bf2
  f'2 g4 ef f2
  bf,2 bf4 f'2 d4
  c2 d4 g,2 g'4
  f2 f,4 c'4 g2
  a2 bf4~ bf8 g8 a2
  
  d2
  \bar "||"
  d4 bf2.
  
  g2. d'2 g4
  fs2 g4 d2 g4
  fs2 g4 d2.
  g2. f?2. 
  bf,2 ef4 c d2 
  
  g,2. g2 s4
  \bar "||"
  g1.
  
  \bar "|."
}

scoreATromboneIPartTreble = \new Staff \with {
  midiInstrument = "oboe"
} { \clef treble \transpose c c' { \scoreATromboneI } }

scoreATromboneIPart = \new Staff \with {
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneI }

scoreATromboneIIPart = \new Staff \with {
  midiInstrument = "bassoon"
    instrumentName = "was 8va"
} { \clef bass \scoreATromboneII }

scoreATromboneIIIPart = \new Staff \with {
  midiInstrument = "trombone"
  instrumentName = "was 8va"
} { \clef bass \scoreATromboneIII }

scoreATromboneIVPart = \new Staff \with {
  midiInstrument = "bassoon"
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
    \tempo 4 = 200
  }
}

\markup {
 dih kan eine Quinta höher gemacht werden / wann man sich imaginiret / als stlände der Clavis Signata 
 }
\markup {
g auff der untersten Linien: wie ich dann auch in allen Stimmen den andern Clavem Signatam vornher
}
\markup {
gezeichnet: und in der Praefation weitlefftiger hiervon berichtet worden 
}
\markup {
  Google Translate says: this can be made a fifth higher / when one imagines / as the state of the 
  }
\markup {
Clavis Signata g on the bottom lines: as I then drawn the other Clavem Signatam 
}
\markup {
in front of all the voices: and more widely reported about this in the presentation 
}