\version "2.24.3"
\paper {
  ragged-right = ##f	% pour occuper toute la ligne
}

%%%%%%%%%%%%%%%%%%%%
\header {
  title = "Triades majeures, 1er renversement : 4 sons"
  subtitle = "Echelle Chromatique, "
  subsubtitle = "Doublure de la basse, à l'octave supérieur."
  author ="cHArQ"
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \time 4/4
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 4 sons FI_chord
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_fi_oct_maj_chord = \relative c'{
  <e g c e >4 
}
triades_fi_oct_maj_chord = \relative c' {
  \global
  <e^1_5 g^2_4 c^4_2 e^5_1>4 
  \transpose c des {\motif_fi_oct_maj_chord}
  \transpose c d   {\motif_fi_oct_maj_chord}
  \transpose c ees {\motif_fi_oct_maj_chord}
  |%
  \transpose c e   {\motif_fi_oct_maj_chord}
  \transpose c f   {\motif_fi_oct_maj_chord}
  \transpose c fis {\motif_fi_oct_maj_chord}
  \transpose c g   {\motif_fi_oct_maj_chord}
  |%
  \transpose c aes {\motif_fi_oct_maj_chord}
  \transpose c a   {\motif_fi_oct_maj_chord}
  \transpose c bes {\motif_fi_oct_maj_chord}
  \transpose c b   {\motif_fi_oct_maj_chord}
  |%
  \transpose c c'  {\motif_fi_oct_maj_chord}
  \transpose c b   {\motif_fi_oct_maj_chord}
  \transpose c bes {\motif_fi_oct_maj_chord}
  \transpose c a   {\motif_fi_oct_maj_chord}
  |%
  \transpose c aes {\motif_fi_oct_maj_chord}
  \transpose c g   {\motif_fi_oct_maj_chord}
  \transpose c fis {\motif_fi_oct_maj_chord}
  \transpose c f   {\motif_fi_oct_maj_chord}
  |%
  \transpose c e   {\motif_fi_oct_maj_chord}
  \transpose c des {\motif_fi_oct_maj_chord}
  \transpose c d   {\motif_fi_oct_maj_chord}
  \transpose c des {\motif_fi_oct_maj_chord}
  |%
  <e g c e>1
  |%
}

%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_fi_oct_maj_chord" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 1 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_fi_oct_maj_chord
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 4 sons FI_broken_un/deux
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_fi_oct_maj_broken_un = \relative c'{
  e16 g c e  
}
motif_fi_oct_maj_broken_deux = \relative c'{
  e'16 c g e  
}
triades_fi_oct_maj_brok_un_deux = \relative c' {
  \global
  \motif_fi_oct_maj_broken_un 
  \transpose c des {\motif_fi_oct_maj_broken_un}
  \transpose c d   {\motif_fi_oct_maj_broken_un}
  \transpose c ees {\motif_fi_oct_maj_broken_un}
  |%
  \transpose c e   {\motif_fi_oct_maj_broken_un}
  \transpose c f   {\motif_fi_oct_maj_broken_un}
  \transpose c fis {\motif_fi_oct_maj_broken_un}
  \transpose c g   {\motif_fi_oct_maj_broken_un}
  |%
  \transpose c aes {\motif_fi_oct_maj_broken_un}
  \transpose c a   {\motif_fi_oct_maj_broken_un}
  \transpose c bes {\motif_fi_oct_maj_broken_un}
  \transpose c b   {\motif_fi_oct_maj_broken_un}
  |%
  \transpose c c'  {\motif_fi_oct_maj_broken_un}
  <e g c e'>2.
  |%
  \transpose c c'  {\motif_fi_oct_maj_broken_deux}
  \transpose c b   {\motif_fi_oct_maj_broken_deux}
  \transpose c bes {\motif_fi_oct_maj_broken_deux}
  \transpose c a   {\motif_fi_oct_maj_broken_deux}
  |%
  \transpose c aes {\motif_fi_oct_maj_broken_deux}
  \transpose c g   {\motif_fi_oct_maj_broken_deux}
  \transpose c fis {\motif_fi_oct_maj_broken_deux}
  \transpose c f   {\motif_fi_oct_maj_broken_deux}
  |%
  \transpose c e   {\motif_fi_oct_maj_broken_deux}
  \transpose c des {\motif_fi_oct_maj_broken_deux}
  \transpose c d   {\motif_fi_oct_maj_broken_deux}
  \transpose c des {\motif_fi_oct_maj_broken_deux}
  |%
  e'16 c g e~e2.
  |%
}

%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_fi_oct_maj_brok_un_deux" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 2 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_fi_oct_maj_brok_un_deux
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Triades 4 sons FI_broken_trois/quatre
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_fi_oct_maj_broken_trois = \relative c'{
  e16 c' g e'  
}
motif_fi_oct_maj_broken_quatre = \relative c'{
  e'16 g, c e,  
}
triades_fi_oct_maj_brok_trois_quatre = \relative c' {
  \global
  \motif_fi_oct_maj_broken_trois 
  \transpose c des {\motif_fi_oct_maj_broken_trois}
  \transpose c d   {\motif_fi_oct_maj_broken_trois}
  \transpose c ees {\motif_fi_oct_maj_broken_trois}
  |%
  \transpose c e   {\motif_fi_oct_maj_broken_trois}
  \transpose c f   {\motif_fi_oct_maj_broken_trois}
  \transpose c fis {\motif_fi_oct_maj_broken_trois}
  \transpose c g   {\motif_fi_oct_maj_broken_trois}
  |%
  \transpose c aes {\motif_fi_oct_maj_broken_trois}
  \transpose c a   {\motif_fi_oct_maj_broken_trois}
  \transpose c bes {\motif_fi_oct_maj_broken_trois}
  \transpose c b   {\motif_fi_oct_maj_broken_trois}
  |%
  \transpose c c'  {\motif_fi_oct_maj_broken_trois}
  <e' g c e>2.
  |%
  \transpose c c'  {\motif_fi_oct_maj_broken_quatre}
  \transpose c b   {\motif_fi_oct_maj_broken_quatre}
  \transpose c bes {\motif_fi_oct_maj_broken_quatre}
  \transpose c a   {\motif_fi_oct_maj_broken_quatre}
  |%
  \transpose c aes {\motif_fi_oct_maj_broken_quatre}
  \transpose c g   {\motif_fi_oct_maj_broken_quatre}
  \transpose c fis {\motif_fi_oct_maj_broken_quatre}
  \transpose c f   {\motif_fi_oct_maj_broken_quatre}
  |%
  \transpose c e   {\motif_fi_oct_maj_broken_quatre}
  \transpose c des {\motif_fi_oct_maj_broken_quatre}
  \transpose c d   {\motif_fi_oct_maj_broken_quatre}
  \transpose c des {\motif_fi_oct_maj_broken_quatre}
  |%
  e16 g, c e,~e2.
  |%
}

%-------------------------------------------------------------------------
\score {
   <<
    \new Staff = "triades_fi_oct_maj_brok_trois_quatre" \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup { \concat {N \super ° } 3 }
    %\override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.font-series = #'bold
    } 
    \triades_fi_oct_maj_brok_trois_quatre
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%   ok 24/12/24 15:19