\version "2.18.2"
\language "english"

\header {
  title = "Mariam Matrem Virginem"
  subtitle = "Llibre Vermell 25r"
  meter = "note lengths halved from original"
  composer = "transcribed from https://imslp.org/wiki/Special:ImagefromIndex/297165/hfpb"
  arranger = "Aífe an tSneachta"
  copyright = "2023, CC-BY"
}

global = {
  \key c \major
  \time 2/2
}

sopranoVoice = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
} \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  d2 r4 d4 f2 g a c8( b!4 a8) a8[( g f e]) e8( d4 c8) d2
  r4 e4 g8( f4 e  f) d8 c1
  r2 r4 d4 f2 g a c8( b!4 a8) a4( g) g8( f4 e8) f2
  r4 f4 a8( g4 f8) e2 f\breve
  
  r4 a4 d2 a4 b!4 c8( b4) a8 a2 g a
  r4 a4 c2 d8( c8 b8 c8) a1 R1
  r4 a4 d2 a4 b c8( b4 a8) a2 g2 a
  r4 a4 c2 d8( c8 b8 c8) a2 r2 R1 r2
  r4 g4 f2 g a 
  
  c8( b4 a8) a8[( g f e]) e8( d4 c8) d2
  r4 e4 g8( f4 e f4) d8 c1 r2
  r4 d4 f2  g a c8( b4 a8) a[( g f e]) e( d4 c8) d2
  r4 e f8( e4 d8) c2 d1\fermata
  
  \bar "|."
  
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  
}

tenorVoice = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
} \relative c' {
  \global
  \dynamicUp
  % Music follows here.
    
  d2( c2~ c4) d2\( c4 e1( c)\) d4( a2 b!4 c b a g) f1\( a
  bf4 c2 d4 e1( c) d2( bf) a2. g4\) a\breve
  d,1( a'1) b!4( c2 d4) e1 f4( e2 d4) e\breve
  d,1( a') b4( c2 d4) e1\( f4 e2 d4 e\breve~ e1 d4 e f d e1( c)
  d4 a2 b!4 c4 b! a g f1( a1) bf4 c2 d4 e1( c) d2( b!) a2. g4 a1\)\fermata
  
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.
  
}

bassVoice = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
}
  \relative c {
  \global
  \dynamicUp
  % Music follows here.
  
  d2( a' bf1 a1~ a1) d,1 c2( d4 e) f\breve bf1( a1~ a1) d,2( g2) f2 ( e2 d\breve)
  a'\breve d1( c) c2( b!2 a1) f2( g2 a1~ a1)
  d1( c) c2( b!2 a1) f2( g2 a1 bf a1~ a1) d,1\( c2 d4 e f1~ f1 bf1( a1~ a1)
  d,2( g2) f2( e2 d1)\)\fermata
  
}

verseBassVoice = \lyricmode {
  % Lyrics follow here.
  
}

sopranoVoicePart = \new Staff \with {
  midiInstrument = "trombone"
} { \clef treble \sopranoVoice }
%\addlyrics { \verseSopranoVoice }

tenorVoicePart = \new Staff \with {
  midiInstrument = "bassoon"
} { \clef bass \tenorVoice }
%\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  midiInstrument = "trombone"
} { \clef bass \bassVoice }
%\addlyrics { \verseBassVoice }

\score {
  \new StaffGroup <<
    \sopranoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout { 
    \override Score.BarNumber.break-visibility = ##(#f #t #t)
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration =
        #(ly:make-moment 1/4)
    }
  }
  \midi {
    \tempo 2=72
  }
}

    \paper {
      page-count = #1
    }
