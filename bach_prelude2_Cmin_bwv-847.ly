\version "2.24.3"
\paper {
  ragged-right = ##f	% pour occuper toute la ligne
}

%%%%%%%%%%%%%%%%%%%%
\header {
  title = "Praeludium II"
  subtitle = "En Do mineur, bv 847, Clavier bien tempéré"
  composer ="Bach"
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \minor
  \time 4/4
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Part one : doubles croches
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

right = \relative c'' {
  \global
  % C- add9,4
  c16 ees, d ees     c ees d ees
  c'16 ees, d ees    c ees d ees
  %Fmin/maj 9
  aes f e f          c f e f 
  aes f e f          c f e f 



}
%------------------------------------------------
left = \relative c' {
  \global
  % C- add9,4
  c,16 g' f g        ees g f g 
  c,16 g' f g        ees g f g 
  %Fmin/maj 9
  c, aes' g aes       f aes g aes
  c aes g aes        f aes g aes
  
  
  
  
  
  
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff \with {
    %instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
