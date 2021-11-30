\version "2.18.2"
\language "english"

\header {
  title = "Cantiga de Santa Maria 178"
  subtitle = "Based on www.cantigasdesantamaria.com with my rhythms"
  subsubtitle = "See that site for full lyrics and pronunciation guide"
  instrument = "\"A que faz o hóme mórto resurgir sen nulla falla\""
}

global = {
  \key g \dorian
  \numericTimeSignature
  \time 3/4
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Refrain
  d4^"Refrain" d4.( c8)
  bf8( a) g4( f)
  f f( g)
  bf bf2
  \bar "||"
  
  bf4 c( d)
  f f2
  f4 g( f8 e)
  d( c) bf2
  \bar "||" \break
  
  bf4 c( d8 c)
  bf8( a) g4( f)
  f f( g)
  bf bf2
  \bar "||"
  
  bf4 c8( bf d c)
  bf8( a) g4( f)
  g4 bf4.( a8)
  g2( f4)
  g2.
  \bar "||" \break
  
  % Verse
  bf4^"Stanza" c8( bf d c)
  bf8( a) g4( f)
  g f( g)
  bf bf2
  \bar "||"
  
  bf4 c8( bf d c)
  bf8( a) g4( f)
  g4 bf4.( a8)
  g2.
  \bar "||" \break
  
  bf4 c4( d8 c)
  bf8( a) g4( f)
  g f( g)
  bf bf2
  \bar "||"
  
  bf4 c4( d8 c)
  bf8( a) g4( f)
  g4 bf4.( a8)
  g2.  
  \bar "||" \break
  
  d'4 d( c)
  d d( e)
  f4 g( f8 e)
  d4 c2
  \bar "||"
  
  d4 d( e)
  d d( c)
  bf bf( c)
  d2.
  \bar "||" \break
  
  bf4 c4( d8 c)
  bf8( a) g4( f)
  f f( g)
  bf bf2
  \bar "||"

  bf4 c8( bf d c)
  bf8( a) g4( f)
  g4 bf4.( a8)
  g8( f) g2
  \bar "||" \break
}

verse = \lyricmode {
  % Refrain
   	A que faz o __ hó -- me mór -- to
   	re -- sur -- gir sen nu -- lla __  fa -- lla,
   	
 	ben pó -- de fa -- zer que vi -- va 
 	ou -- tra __ mór -- ta __ a -- ni -- ma -- lla.
 	
  % Stanza
 	Des -- to __ mos -- trou, un mi -- rag -- re  a Ma -- dre do Sal -- va -- dor,
        mui gran -- de, por un me -- ni -- nno  que fi -- llo dun la -- vra -- dor
 	é -- ra; __ e poi -- lo o -- ír -- des, ha -- ve -- re -- des __ ên sa -- bor
 	e lo -- a -- re -- des a __ Vir -- gen que sem -- pre por nós tra -- ba -- lla.
}

\score {
  \new Staff \with {
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \sopranoVoice }
  \addlyrics { \verse }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
