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
%%%   Triades 4 sons root_chord
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
motif_fi_oct_maj_chord = \relative c'{
  <e g c e >4 
}
triades_root_oct_maj_chord = \relative c' {
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
