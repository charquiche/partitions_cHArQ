\version "2.24.3"
\paper {
  ragged-right = ##f	% pour occuper toute la ligne
}

%%%%%%%%%%%%%%%%%%%%
\header {
  title = "Triades majeures : 4 sons"
  subtitle = "Echelle Chromatique, positions fondamentales"
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
