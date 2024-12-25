\version "2.24.3"
\paper {
  ragged-right = ##f	% pour occuper toute la ligne
}

%%%%%%%%%%%%%%%%%%%%
\header {
  title = "Praeludium II"
  subtitle = "En Do mineur, bv 847, Clavier bien tempéré"
  composer ="BAcH"
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \minor
  \time 4/4
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Part one : doubles croches
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
chords_A = \chordmode {
 \set minorChordModifier = \markup { "-" }% symbole accords mineurs %
 c1:m
 f1:m7+
 b1:dim7/c
 c1:m
}
right = \relative c'' {
  \global
  % C- add9,4
  c16 ees, d ees     c ees d ees
  c' ees, d ees    c ees d ees
  %Fmin/maj 9
  aes f e f          c f e f 
  aes f e f          c f e f 
  %Bdim7 /C
  b f ees! f          d f ees f
  b f ees f          d f ees f         
  %C- add 9,4
  c' g f g           ees g f g 
  c g f g           ees g f g

  
}
%------------------------------------------------
left = \relative c' {
  \global
  % C- add9,4
  c,16 g' f g        ees g f g 
  c,16 g' f g        ees g f g 
  %Fmin/maj 9
  c, aes' g aes       f aes g aes
  c, aes' g aes       f aes g aes
  %Bdim7 /C
  c, aes' g aes       f aes g aes
  c, aes g aes        f aes g aes
  %C- add 9,4
  c ees d ees        g ees d ees
  c ees d ees        g ees d ees
  
  
  
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff \with {
    %instrumentName = "Piano"
  }
  %---------------------------------------------------------
  <<
    \new ChordNames {
    \chords_A
    }
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  %---------------------------------------------------------
  \layout { }
  \midi {
    \tempo 4=100
  }
}
