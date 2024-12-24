\version "2.24.3"
\paper {
  ragged-right = ##f	% pour occuper toute la ligne
}

%%%%%%%%%%%%%%%%%%%%
\header {
  title = "Triades majeures rooted : 4 sons"
  subtitle = "Echelle Chromatique, "
  subsubtitle = "Doublure de la basse, à l'octave supérieur."
  %copyright  ="cHArQ"
  composer  ="cHArQ"
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \time 4/4
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 4 sons root_chord
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_root_oct_maj_chord = \relative c'{
  <c e g c>4 
}
triades_root_oct_maj_chord = \relative c' {
  \global
  <c^1_5 e^2_4 g^3_3 c^5_1>4 
  \transpose c des {\motif_root_oct_maj_chord}
  \transpose c d   {\motif_root_oct_maj_chord}
  \transpose c ees {\motif_root_oct_maj_chord}
  |%
  \transpose c e   {\motif_root_oct_maj_chord}
  \transpose c f   {\motif_root_oct_maj_chord}
  \transpose c fis {\motif_root_oct_maj_chord}
  \transpose c g   {\motif_root_oct_maj_chord}
  |%
  \transpose c aes {\motif_root_oct_maj_chord}
  \transpose c a   {\motif_root_oct_maj_chord}
  \transpose c bes {\motif_root_oct_maj_chord}
  \transpose c b   {\motif_root_oct_maj_chord}
  |%
  \transpose c c'  {\motif_root_oct_maj_chord}
  \transpose c b   {\motif_root_oct_maj_chord}
  \transpose c bes {\motif_root_oct_maj_chord}
  \transpose c a   {\motif_root_oct_maj_chord}
  |%
  \transpose c aes {\motif_root_oct_maj_chord}
  \transpose c g   {\motif_root_oct_maj_chord}
  \transpose c fis {\motif_root_oct_maj_chord}
  \transpose c f   {\motif_root_oct_maj_chord}
  |%
  \transpose c e   {\motif_root_oct_maj_chord}
  \transpose c des {\motif_root_oct_maj_chord}
  \transpose c d   {\motif_root_oct_maj_chord}
  \transpose c des {\motif_root_oct_maj_chord}
  |%
  <c e g c >1
  |%
}

%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_oct_maj_chord" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 1 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_oct_maj_chord
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 4 sons root_broken_un/deux
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_root_oct_maj_broken_un = \relative c'{
  c16 e g c  
}
motif_root_oct_maj_broken_deux = \relative c'{
  c'16 g e c  
}
triades_root_oct_maj_brok_un_deux = \relative c' {
  \global
  \motif_root_oct_maj_broken_un 
  \transpose c des {\motif_root_oct_maj_broken_un}
  \transpose c d   {\motif_root_oct_maj_broken_un}
  \transpose c ees {\motif_root_oct_maj_broken_un}
  |%
  \transpose c e   {\motif_root_oct_maj_broken_un}
  \transpose c f   {\motif_root_oct_maj_broken_un}
  \transpose c fis {\motif_root_oct_maj_broken_un}
  \transpose c g   {\motif_root_oct_maj_broken_un}
  |%
  \transpose c aes {\motif_root_oct_maj_broken_un}
  \transpose c a   {\motif_root_oct_maj_broken_un}
  \transpose c bes {\motif_root_oct_maj_broken_un}
  \transpose c b   {\motif_root_oct_maj_broken_un}
  |%
  \transpose c c'  {\motif_root_oct_maj_broken_un}
  <c' e g c>2.
  |%
  \transpose c c'  {\motif_root_oct_maj_broken_deux}
  \transpose c b   {\motif_root_oct_maj_broken_deux}
  \transpose c bes {\motif_root_oct_maj_broken_deux}
  \transpose c a   {\motif_root_oct_maj_broken_deux}
  |%
  \transpose c aes {\motif_root_oct_maj_broken_deux}
  \transpose c g   {\motif_root_oct_maj_broken_deux}
  \transpose c fis {\motif_root_oct_maj_broken_deux}
  \transpose c f   {\motif_root_oct_maj_broken_deux}
  |%
  \transpose c e   {\motif_root_oct_maj_broken_deux}
  \transpose c des {\motif_root_oct_maj_broken_deux}
  \transpose c d   {\motif_root_oct_maj_broken_deux}
  \transpose c des {\motif_root_oct_maj_broken_deux}
  |%
  c16 g e c~c2.
  |%
}

%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_oct_maj_brok_un_deux" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 2 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_oct_maj_brok_un_deux
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 4 sons root_broken_trois/quatre
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_root_oct_maj_broken_trois = \relative c'{
  c16 g' e c'  
}
motif_root_oct_maj_broken_quatre = \relative c'{
  c'16 e, g c,  
}
triades_root_oct_maj_brok_trois_quatre = \relative c' {
  \global
  \motif_root_oct_maj_broken_trois 
  \transpose c des {\motif_root_oct_maj_broken_trois}
  \transpose c d   {\motif_root_oct_maj_broken_trois}
  \transpose c ees {\motif_root_oct_maj_broken_trois}
  |%
  \transpose c e   {\motif_root_oct_maj_broken_trois}
  \transpose c f   {\motif_root_oct_maj_broken_trois}
  \transpose c fis {\motif_root_oct_maj_broken_trois}
  \transpose c g   {\motif_root_oct_maj_broken_trois}
  |%
  \transpose c aes {\motif_root_oct_maj_broken_trois}
  \transpose c a   {\motif_root_oct_maj_broken_trois}
  \transpose c bes {\motif_root_oct_maj_broken_trois}
  \transpose c b   {\motif_root_oct_maj_broken_trois}
  |%
  \transpose c c'  {\motif_root_oct_maj_broken_trois}
  <c' e g c>2.
  |%
  \transpose c c'  {\motif_root_oct_maj_broken_quatre}
  \transpose c b   {\motif_root_oct_maj_broken_quatre}
  \transpose c bes {\motif_root_oct_maj_broken_quatre}
  \transpose c a   {\motif_root_oct_maj_broken_quatre}
  |%
  \transpose c aes {\motif_root_oct_maj_broken_quatre}
  \transpose c g   {\motif_root_oct_maj_broken_quatre}
  \transpose c fis {\motif_root_oct_maj_broken_quatre}
  \transpose c f   {\motif_root_oct_maj_broken_quatre}
  |%
  \transpose c e   {\motif_root_oct_maj_broken_quatre}
  \transpose c des {\motif_root_oct_maj_broken_quatre}
  \transpose c d   {\motif_root_oct_maj_broken_quatre}
  \transpose c des {\motif_root_oct_maj_broken_quatre}
  |%
 c16 e, g c,~c2.
  |%
}

%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_root_oct_maj_brok_trois_quatre" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 3 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_root_oct_maj_brok_trois_quatre
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%   ok 24/12/24 15:19