\version "2.24.3"
\paper {
  ragged-right = ##f	% pour occuper toute la ligne
}

%%%%%%%%%%%%%%%%%%%%
\header {
  title = "Triades majeures , rooted ( 3 sons ) "
  subtitle = "Echelle Chromatique "
  subsubtitle = "Six manières d'ordonner trois notes ..."
  author ="cHArQ"
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



global = {
  \key c \major
  \time 4/4
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 3 sons root chord
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_root_maj_chord = \relative c'{
  <c e g>4 
}
triades_root_maj_chord = \relative c' {
  \global
  \motif_root_maj_chord
  \transpose c des {\motif_root_maj_chord}
  \transpose c d   {\motif_root_maj_chord}
  \transpose c ees {\motif_root_maj_chord}
  |%
  \transpose c e   {\motif_root_maj_chord}
  \transpose c f   {\motif_root_maj_chord}
  \transpose c fis {\motif_root_maj_chord}
  \transpose c g   {\motif_root_maj_chord}
  |%
  \transpose c aes {\motif_root_maj_chord}
  \transpose c a   {\motif_root_maj_chord}
  \transpose c bes {\motif_root_maj_chord}
  \transpose c b   {\motif_root_maj_chord}
  |%
  \transpose c c'  {\motif_root_maj_chord}
  \transpose c b   {\motif_root_maj_chord}
  \transpose c bes {\motif_root_maj_chord}
  \transpose c a   {\motif_root_maj_chord}
  |%
  \transpose c aes {\motif_root_maj_chord}
  \transpose c g   {\motif_root_maj_chord}
  \transpose c fis {\motif_root_maj_chord}
  \transpose c f   {\motif_root_maj_chord}
  |%
  \transpose c e   {\motif_root_maj_chord}
  \transpose c des {\motif_root_maj_chord}
  \transpose c d   {\motif_root_maj_chord}
  \transpose c des {\motif_root_maj_chord}
  |%
  <c e g >1
  |%
}

%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_maj_chord" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 1 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_maj_chord
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 3 sons broken-un
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_maj_un = \relative c'{
  c16 e g8 
}
triades_root_maj_broken_un = \relative c' {
  \global
  \motif_maj_un
  \transpose c des {\motif_maj_un}
  \transpose c d {\motif_maj_un}
  \transpose c ees {\motif_maj_un}
  |%
  \transpose c e {\motif_maj_un}
  \transpose c f {\motif_maj_un}
  \transpose c fis {\motif_maj_un}
  \transpose c g {\motif_maj_un}
  |%
  \transpose c aes {\motif_maj_un}
  \transpose c a {\motif_maj_un}
  \transpose c bes {\motif_maj_un}
  \transpose c b {\motif_maj_un}
  |%
  \transpose c c' {\motif_maj_un}
  \transpose c b {\motif_maj_un}
  \transpose c bes {\motif_maj_un}
  \transpose c a {\motif_maj_un}
  |%
  \transpose c aes {\motif_maj_un}
  \transpose c g {\motif_maj_un}
  \transpose c fis {\motif_maj_un}
  \transpose c f {\motif_maj_un}
  |%
  \transpose c e {\motif_maj_un}
  \transpose c des {\motif_maj_un}
  \transpose c d {\motif_maj_un}
  \transpose c des {\motif_maj_un}
  |%
  c16 e g8~g2.
  |%
}

%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_maj_broken_un" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 2 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_maj_broken_un
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 3 sons broken-deux
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_maj_deux = \relative c'{
  g'16 e c8  
}
triades_root_maj_broken_deux = \relative c' {
  \global
  \motif_maj_deux
  \transpose c des {\motif_maj_deux}
  \transpose c d   {\motif_maj_deux}
  \transpose c ees {\motif_maj_deux}
  |%
  \transpose c e {\motif_maj_deux}
  \transpose c f {\motif_maj_deux}
  \transpose c fis {\motif_maj_deux}
  \transpose c g {\motif_maj_deux}
  |%
  \transpose c aes {\motif_maj_deux}
  \transpose c a {\motif_maj_deux}
  \transpose c bes {\motif_maj_deux}
  \transpose c b {\motif_maj_deux}
  |%
  \transpose c c' {\motif_maj_deux}
  \transpose c b {\motif_maj_deux}
  \transpose c bes {\motif_maj_deux}
  \transpose c a {\motif_maj_deux}
  |%
  \transpose c aes {\motif_maj_deux}
  \transpose c g {\motif_maj_deux}
  \transpose c fis {\motif_maj_deux}
  \transpose c f {\motif_maj_deux}
  |%
  \transpose c e {\motif_maj_deux}
  \transpose c des {\motif_maj_deux}
  \transpose c d {\motif_maj_deux}
  \transpose c des {\motif_maj_deux}
  |%
  g'16 e c8~c2.
  |%
}

%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_maj_broken_deux" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 3 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_maj_broken_deux
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 3 sons broken-trois
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_maj_trois = \relative c'{
  c,,16 g' e8  
}
triades_root_maj_broken_trois = \relative c' {
  \clef bass
  \key c \major
  \time 4/4
  
  \motif_maj_trois
  \transpose c des {\motif_maj_trois}
  \transpose c d   {\motif_maj_trois}
  \transpose c ees {\motif_maj_trois}
  |%
  \transpose c e {\motif_maj_trois}
  \transpose c f {\motif_maj_trois}
  \transpose c fis {\motif_maj_trois}
  \transpose c g {\motif_maj_trois}
  |%
  \transpose c aes {\motif_maj_trois}
  \transpose c a {\motif_maj_trois}
  \transpose c bes {\motif_maj_trois}
  \transpose c b {\motif_maj_trois}
  |%
  \transpose c c' {\motif_maj_trois}
  \transpose c b {\motif_maj_trois}
  \transpose c bes {\motif_maj_trois}
  \transpose c a {\motif_maj_trois}
  |%
  \transpose c aes {\motif_maj_trois}
  \transpose c g {\motif_maj_trois}
  \transpose c fis {\motif_maj_trois}
  \transpose c f {\motif_maj_trois}
  |%
  \transpose c e {\motif_maj_trois}
  \transpose c des {\motif_maj_trois}
  \transpose c d {\motif_maj_trois}
  \transpose c des {\motif_maj_trois}
  |%
  c16 g e8~e2.
  |%
}
%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_maj_broken_trois" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 4 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_maj_broken_trois
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 3 sons broken-quatre
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_maj_quatre = \relative c'{
  g'16 c, e8  
}
triades_root_maj_broken_quatre = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  
  \motif_maj_quatre
  \transpose c des {\motif_maj_quatre}
  \transpose c d   {\motif_maj_quatre}
  \transpose c ees {\motif_maj_quatre}
  |%
  \transpose c e {\motif_maj_quatre}
  \transpose c f {\motif_maj_quatre}
  \transpose c fis {\motif_maj_quatre}
  \transpose c g {\motif_maj_quatre}
  |%
  \transpose c aes {\motif_maj_quatre}
  \transpose c a {\motif_maj_quatre}
  \transpose c bes {\motif_maj_quatre}
  \transpose c b {\motif_maj_quatre}
  |%
  \transpose c c' {\motif_maj_quatre}
  \transpose c b {\motif_maj_quatre}
  \transpose c bes {\motif_maj_quatre}
  \transpose c a {\motif_maj_quatre}
  |%
  \transpose c aes {\motif_maj_quatre}
  \transpose c g {\motif_maj_quatre}
  \transpose c fis {\motif_maj_quatre}
  \transpose c f {\motif_maj_quatre}
  |%
  \transpose c e {\motif_maj_quatre}
  \transpose c des {\motif_maj_quatre}
  \transpose c d {\motif_maj_quatre}
  \transpose c des {\motif_maj_quatre}
  |%
  g'16 c, e8~e2.
  |%
}
%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_maj_broken_quatre" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 5 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_maj_broken_quatre
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 3 sons broken-cinq
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_maj_cinq = \relative c {
  e16 g c,8  
}
triades_root_maj_broken_cinq = \relative c' {
  \clef bass
  \key c \major
  \time 4/4
  
  \motif_maj_cinq
  \transpose c des {\motif_maj_cinq}
  \transpose c d   {\motif_maj_cinq}
  \transpose c ees {\motif_maj_cinq}
  |%
  \transpose c e {\motif_maj_cinq}
  \transpose c f {\motif_maj_cinq}
  \transpose c fis {\motif_maj_cinq}
  \transpose c g {\motif_maj_cinq}
  |%
  \transpose c aes {\motif_maj_cinq}
  \transpose c a {\motif_maj_cinq}
  \transpose c bes {\motif_maj_cinq}
  \transpose c b {\motif_maj_cinq}
  |%
  \transpose c c' {\motif_maj_cinq}
  \transpose c b {\motif_maj_cinq}
  \transpose c bes {\motif_maj_cinq}
  \transpose c a {\motif_maj_cinq}
  |%
  \transpose c aes {\motif_maj_cinq}
  \transpose c g {\motif_maj_cinq}
  \transpose c fis {\motif_maj_cinq}
  \transpose c f {\motif_maj_cinq}
  |%
  \transpose c e {\motif_maj_cinq}
  \transpose c des {\motif_maj_cinq}
  \transpose c d {\motif_maj_cinq}
  \transpose c des {\motif_maj_cinq}
  |%
  e,16 g c,8~c2.
  |%
}
%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_maj_broken_cinq" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 6 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_maj_broken_cinq
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 3 sons broken-six
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_maj_six = \relative c' {
  e16 c g'8  
}
triades_root_maj_broken_six = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  
  \motif_maj_six
  \transpose c des {\motif_maj_six}
  \transpose c d   {\motif_maj_six}
  \transpose c ees {\motif_maj_six}
  |%
  \transpose c e {\motif_maj_six}
  \transpose c f {\motif_maj_six}
  \transpose c fis {\motif_maj_six}
  \transpose c g {\motif_maj_six}
  |%
  \transpose c aes {\motif_maj_six}
  \transpose c a {\motif_maj_six}
  \transpose c bes {\motif_maj_six}
  \transpose c b {\motif_maj_six}
  |%
  \transpose c c' {\motif_maj_six}
  \transpose c b {\motif_maj_six}
  \transpose c bes {\motif_maj_six}
  \transpose c a {\motif_maj_six}
  |%
  \transpose c aes {\motif_maj_six}
  \transpose c g {\motif_maj_six}
  \transpose c fis {\motif_maj_six}
  \transpose c f {\motif_maj_six}
  |%
  \transpose c e {\motif_maj_six}
  \transpose c des {\motif_maj_six}
  \transpose c d {\motif_maj_six}
  \transpose c des {\motif_maj_six}
  |%
  e16 c g'8~g2.
  |%
}
%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_maj_broken_six" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 7 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_maj_broken_six
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%