\version "2.18.2"
\language "english"

\header {
  title = "no. 23 “Che Ual Esser Nudrita”"
  subtitle = "from II secondo libro de madrigali (1568)"
  subsubtitle = "https://imslp.org/wiki/II_secondo_libro_de_madrigali_(Donato%2C_Baldassare)"
  composer = "Baldassare Donato (1525-1530 – 1603)"
  arranger = "transcribed by Isabel of Østgarðr"
  meter = "Note durations same as in original"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 4/1
  \hide Staff.BarLine
}

ficta = { \once \set suggestAccidentals = ##t }

sopranoIncipit = {
 \clef "neomensural-c1"
 \time 2/2
 \key f \major
 bf'1
}

soprano = \relative c'' {
  \global
  % Music follows here.
  bf1 a2. bf4
  a2 g fs g
  r\breve
  r2 g2.
  a4 bf2~ bf2 bf2
  bf2 a2~ a2 g2 bf2
  a2 g1 f1
  r2 bf bf d2~ d4
  c4 bf2 a d2 
  c2 bf1 a2~ 
  a g1 \ficta fs2 
  g1 r2 bf2 
  a2. bf4 a2 g 
  fs g r1 
  r\breve 
  g1 g2 g2~
  g4 f4 f2 f1 
  f2 r4 bf4 bf2 bf 
  a bf c1 
  a1 r2 g2~
  g2 fs2 g1~
  g2 fs2 r1
  r\breve 
  r1 r2 bf2 
  a2. bf4 a2 g 
  fs g r1 
  r\breve 
  r2 d'2 d4 d d2 
  a2 c1 f,2 
  g a bf a 
  f f4 g a1 
  a2 g1 f2 
  r2 a2 a4 bf c2 
  bf a1 d,2 
  d4 e f2 g bf2~
  bf2 c2 d bf 
  a g r2 d'2~
  d2 c2 bf a2~
  a2 g1 \ficta fs2 g\breve
  
  \undo \hide Staff.BarLine \bar "|."
}


altoIncipit = {
 \clef "neomensural-c3"
 \time 2/2
 \key f \major
 g1
}


alto = \relative c' {
  \global
  % Music follows here.
  g1 d'2. d4 c2 bf a g r\breve r2
  bf2. c4 d2 d2 f2 f1~
  f2 e2 f4 e8 d c4 d g, a bf2 a d2~
  d2 d2 g2 g4 g f2 f f d2 g1 g2 r4
  d4 f2 ef2 d1 d r2
  g,2 d'2. d4 c2 bf a g r1 r\breve
  ef'1 ef2 ef2~
  ef4 d4 d2 c1 d2 f2 g d e^\markup { ( \natural ) } f g1~
  g2 f2 r2
  bf,2 c d ef1 d\breve bf2 c a1 g1 r2
  d'2 d2. d4 c2 bf a g r1 r1 r2
  g'2 g4 g g2 d4 g2 f4 c2. d4 ef2 d2 d\breve d2 d4 e f1 c2 ef1 d2 r1
  f2 e4^\markup { ( \natural ) } f g2 f d2 a bf4 c d1 d2 f2 g f d f4 e d c d2 d r2
  g1 f2~
  f2 ef2 d1 d\breve
  
  \undo \hide Staff.BarLine \bar "|."
}


tenorIncipit = {
 \clef "neomensural-c4"
 \time 2/2
 \key f \major
 r\breve r1 r2 bf2
}


tenor = \relative c' {
  \global
  % Music follows here.
  r\breve r1 r2 bf2 a2. bf4 a2 g \ficta fs g r2
  bf2~ 
  bf4 c4 d2 d c c1 r2
  a2 bf4 c d1 a2 bf bf d c4 bf a2 d2 c bf \ficta ef1 d2 d c2. bf4 a1 g2 bf2 bf1 r\breve r2
  bf2 a2. bf4 a2 g fs g g g c2. bf4 bf2 bf1 a2 bf d \ficta ef bf2 c d \ficta ef1 d2 d
    bf2. a4 g2 a c1 a2 a1 bf4 a g f g1 fs2 g bf2 bf1 r\breve r2
  bf2 a2. bf4 a2 g fs g bf2 bf4 bf bf2 a a2. f4 g a bf c d2 d, 
    g a bf a d c4 bf a2 c bf a a a4 bf c2 c d1 r1 r2
  a2 bf4 c d2~
  d2 g,2 a g d' bf a1 g d'1 c2 bf a1 g\breve
  
  \undo \hide Staff.BarLine \bar "|."
}


bassIncipit = {
 \clef "neomensural-f"
 \time 2/2
 \key f \major
 r\breve r1 r2 g2
}

bass = \relative c {
  \global
  % Music follows here.
  r\breve r1 r2
  g2 d'2. d4 c2 bf a g g'2. a4 bf2 bf bf f2~
  f2 c2 d f ef d d1 r2
  g1 g2 d2. e4 f2 g c,2 g'1 f2~
  f2 c2 d1 g,2 g'2 g1 r\breve r2 
  g,2 d'2. d4 c2 bf a g c1 c2 \ficta ef2~
  ef4 bf4 bf2 f'1 bf,1 r1 %{ was r\breve %}
  r1 r2
  c2 d d ef1~
  ef2 d2 r1
  d2. \ficta e4 f2^\markup { ( \natural ) } d \ficta ef2. c4 d1 g,2 g' g1 r\breve r2
  g,2 d'2. d4 c2 bf a g g'2 g4 g g2 d2 f2. e8 d c2 d bf'2 a g f r2
  d2 d4 e f2~
  f2 c2 g'2 d f f4 g a2 a g d d4 e f2 g d2 r2
  g2 d ef d g, r2
  g' d4 e_\markup { ( \natural ) } f2 ef1 d2 d f g2 d1 g,\breve
  
  \undo \hide Staff.BarLine \bar "|."
}

sopranoVerse = \lyricmode {
  % Lyrics follow here.
  Che ual es -- ser nu -- dri -- ta
  U -- na don -- na gen -- til leg -- gia -- dr'e bel -- la
  Da'un -- a fe -- ra Le -- on -- za'o da'un -- a Ti __ _ _ gre
  Che ual es -- ser cre -- a -- ta sot -- to ge -- li -- da stel -- la
  Che fa le uo -- glie fred -- de len -- t'e pi -- gre 
  Che ual lo star ru -- bel -- la 
  A quel -- la leg -- ge che d'a -- mor n'e da -- ta s'un' -- a -- mo -- ro -- so stra -- le
  Piu che na -- tur' as -- sai
  Piu che na -- tur' as -- sai
  piu ch'il ciel ua -- le
  piu ch'il ciel ua __ _ _ -- le.
}

altoVerse = \lyricmode {
  % Lyrics follow here.
    Che ual es -- ser nu -- dri -- ta
  U -- na don -- na gen -- til leg -- gia __ _ _ _ dr'e bel __ _ _ -- la
  Da'un -- a fe -- ra Le -- on -- za'o da'un -- a Ti -- gre
  o da'un -- a Ti -- gre
  Che ual es -- ser cre -- a -- ta sot -- to ge -- li -- da stel -- la
  Che fa le uo -- glie fred -- de le uo -- glie fred -- de len -- t'e pi -- gre 
  Che ual lo star ru -- bel -- la 
  A quel -- la leg -- ge che d'a -- mor n'e da __ _ -- ta s'un' -- a -- mo -- ro -- so stra -- le
  Piu che na -- tur' as -- sai
  Piu che na -- tur' as -- sai
  piu ch'il ciel ua __ _ _ _ _ -- le
  piu ch'il ciel ua -- le.
}

tenorVerse = \lyricmode {
  % Lyrics follow here.
    Che ual es -- ser nu -- dri -- ta
  U -- na don -- na gen -- til leg -- gia -- dr'e bel -- la
  Da'un -- a fe -- ra Le -- on -- za'o da'un -- a Ti -- gre
  o da'un -- a Ti -- gre Che ual
  Che ual es -- ser cre -- a -- ta sot -- to ge -- li -- da stel __ _ -- la
  Che fa le uo -- glie fred -- de le uo __ _ _ -- glie fred -- de len -- t'e __ _ _ _ _ pi -- gre Che ual
  Che ual lo star ru -- bel -- la 
  A quel -- la leg -- ge che d'a -- mor __ _ _ _ _ d'a -- mor n'e da -- ta s'un' -- a -- mo -- ro -- so stra -- le
  Piu che na -- tur' as -- sai
  Piu che na -- tur' as -- sai
  piu ch'il ciel ua -- le
  piu ch'il ciel ua -- le.
}

bassVerse = \lyricmode {
  % Lyrics follow here.
    Che ual es -- ser nu -- dri -- ta
  U -- na don -- na gen -- til leg -- gia -- dr'e bel __ _ -- la
  Da'un -- a fe -- ra Le -- on -- za -- 'o da'un -- a Ti -- gre
  Che ual 
  Che ual es -- ser cre -- a -- ta sot -- to ge -- li -- da stel -- la
  le uo -- glie fred -- de len __ _ _ -- t'e pi __ _ _ -- gre 
  Che ual Che ual lo star ru -- bel -- la 
  A quel -- la leg -- ge che __ _ _ _ d'a -- mor n'e da -- ta s'un' -- a -- mo -- ro -- so stra -- le
  Piu che na -- tur' as -- sai
  Piu che na -- tur' as -- sai
  piu ch'il ciel ua -- le
   Piu che na -- tur' as -- sai
  piu ch'il ciel ua -- le.
}

\score {
  \new StaffGroup <<
    \new Staff \with {
        midiInstrument = "bassoon"
      %     midiInstrument = "choir aahs"
      instrumentName = "Canto"
         \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
  \consists "Ambitus_engraver"
\consists "Rhythmic_column_engraver" 
   % } {  \set Score.skipBars = ##t \skip 1*4  \incipit \sopranoIncipit \soprano }
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
       midiInstrument = "bassoon"
      %      midiInstrument = "choir aahs"
      instrumentName = "Alto"
         \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
  \consists "Ambitus_engraver"
\consists "Rhythmic_column_engraver" 
 %   } {  \set Score.skipBars = ##t \skip 1*4  \incipit \altoIncipit \alto }
     } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
           midiInstrument = "bassoon"
      %  midiInstrument = "choir aahs"
      instrumentName = "Tenore"
         \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
  \consists "Ambitus_engraver"
\consists "Rhythmic_column_engraver" 
   % } {  \set Score.skipBars = ##t \skip 1*4 \incipit \tenorIncipit \clef "treble_8" \tenor }
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerse }
    \new Staff \with {
      midiInstrument = "bassoon"
      % midiInstrument = "choir aahs"
      instrumentName = "Basso"
         \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
  \consists "Ambitus_engraver"
\consists "Rhythmic_column_engraver" 
%   } { \set Score.skipBars = ##t \skip 1*4  \incipit \bassIncipit \clef bass \bass }
  } { \clef bass \bass }
    \addlyrics { \bassVerse }
  >>
  \layout { }
  \midi {
    \tempo 2=80
  }
}
