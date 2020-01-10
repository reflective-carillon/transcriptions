\version "2.18.2"
\language "english"

\header {
  title = "Chaconne for Flutes"
  subtitle = "from The History of Dioclesian (Z. 627)"
  composer = "Henry Purcell (1659–1695)"
  arranger = "Arranged for recorders by R. D. Tennent, moved to bass clef by Isabel Reilly"
  meter = "Two in one upon a Ground."
  copyright = "CC-BY-SA, based on http://ks4.imslp.net/files/imglnks/usimg/f/f9/IMSLP219246-PMLP202980-dio06.pdf"
}

global = {
  \key d \minor
  \numericTimeSignature
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
}

\paper {
  % force it to fit on 2 pages
  system-count = #10
}

melody = \relative c {
   f4. e8 d4
   a'4 e a,
   d4. e8 f4
   cs2.
   r4 a' d,
   e e8 f g e
   f4 f g
   a2.~
   a4 d d
   d4. e8 cs4
   d2.
   r4 a e
   f f bf
   e, e a
   d, d8 f e d
   cs4. b8 a4
   r4 r f'
   f( e) e16( f g8)
   g4( f) r
   r r e
   e( d) d16( e f8)
   f4( e) r
   r r a
   a g8. a16 g4
   g4 f8. g16 f4
   f4 e8. f16 e4
   e4 d8( cs) d4
   d4. e8 cs4 
   d2. 
   r4 r r8 e
   f e d e f g 
   a g f e f cs
   d e f g a bf
   c? bf a g a e
   f g a g f d 
   e4 e4.\prall d8
   d2 r4
   r4 a' a
   a g8 f e d
   cs2 r4
   R2.
   r4 a'4. a8
   bf a g f e d
   e d e g f e
   d cs d b cs d
   cs b cs a b cs
   d4. d8 e f
   e d e f g e
   f g g4.(\trill f16 g)
   a2.
   r4 r d,
   cs4. d8 e4
   a,4 a' bf
   bf4 a8 g f e
   f4 g8 f e d
   e2 a4
   a4 g4. a8
   cs,8 d d4.\prall cs8
   d2 r4
   r e a
   r a f
   r g e
   r f d
   r e cs
   d4 d8 e f4
   e8 f g4 e
   f4 d r
   r r a'4
   d4 d4. d8
   d8( a) c?4. c8
   c8( f,) bf4. bf8
   bf8( e,) a4. a8
   a8( d,) g8 e f d
   e4 f8 d e cs
   d4 e8 cs d b 
}

scoreATromboneI = \relative c {
  \global
  % Music follows here.
  R2.*6
  \melody
  cs4 a r8 e'
  a8. bf16 g8. a16 f8. g16
  e8. f16 f4.\prall e16 d
  d2.
  \bar "|."
}

scoreATromboneII = \relative c {
  \global
  % Music follows here.
  R2.*8
  \melody
  cs8. d16 d4.\prall cs8
  d2.
  \bar "|."
}

bassline = \relative c {
  d2.
  c2.
  bf2.
  a4 a' g
  f e d
  a' a,2
}

scoreATromboneIII = \relative c {
  \global
  % Music follows here.
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  \bassline
  d2.
  \bar "|."
}

scoreATromboneIPart = \new Staff \with {
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneI }

scoreATromboneIIPart = \new Staff \with {
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneII }

scoreATromboneIIIPart = \new Staff \with {
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneIII }

\score {
  \new StaffGroup
  <<
    \scoreATromboneIPart
    \scoreATromboneIIPart
    \scoreATromboneIIIPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
