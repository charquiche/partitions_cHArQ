\version "2.24.3"
\paper {
  ragged-right = ##f	% pour occuper toute la ligne
}

%%%%%%%%%%%%%%%%%%%%
\header {
<<<<<<< HEAD
  title = "Triades majeures : 3 ou 4 sons"
=======
  title = "Triades majeures : 3 ou 4 sons rooted bis"
>>>>>>> triades-4-sons
  subtitle = "Echelle Chromatique"
  author ="cHArQ"
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



global = {
  \key c \major
  \time 4/4
}
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
    } 
    \triades_root_maj_chord
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
    } 
    \triades_root_maj_broken_un
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
    } 
    \triades_root_maj_broken_deux
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
    } 
    \triades_root_maj_broken_trois
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
    } 
    \triades_root_oct_maj_chord
   >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
