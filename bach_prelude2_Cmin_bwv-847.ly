\version "2.24.3"
\paper {
  ragged-right = ##f	% pour occuper toute la ligne
}

%%%%%%%%%%%%%%%%%%%%
\header {
  title = "Praeludium II"
  subtitle = "Do mineur, bwv 847, Clavier bien tempéré"
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
 f1:m7+/c
 b1:dim7/c
 c1:m
 aes1:7+/c
 d:9/c









}
%-----------------------------------------------
right = \relative c'' {
  \global
  % C- add9,4
  c16-5 ees,-2 d-1 ees    c-1 ees d ees
  c' ees, d ees           c ees d ees
  %Fmin/maj 9
  aes-5 f-3 e-2 f         c-1 f e f 
  aes f e f               c f e f 
  %Bdim7 /C
  b-5 f-3 ees!-2 f        d-1 f ees f
  b f ees f               d f ees f         
  %C- add 9,4
  c'-5 g-2 f-1 g          ees-1 g f g 
  c g f g                 ees g f g
  %Ab maj 9
  ees'-5 aes,-3 g-2 aes   ees-1 aes g aes
  ees' aes, g aes   ees   aes g aes 
  %D9
  d-5 fis,-2 e-1 fis      d-1 fis e fis
  d' fis, e fis            d fis e fis 

  
}
%------------------------------------------------
left = \relative c' {
  \global
  % C- add9,4
  c,16_5 g'_1 f_2 g       ees_3 g f g 
  c,16 g' f g             ees g f g 
  %Fmin/maj 9
  c,_5 aes'_1 g_2 aes     f_3 aes g aes
  c, aes' g aes           f aes g aes
  %Bdim7 /C
  c, aes' g aes           f aes g aes
  c, aes g aes            f aes g aes
  %C- add 9,4
  c_5 ees_2 d_3 ees       g_1 ees d ees
  c ees d ees             g ees d ees
  %Ab maj 9
  c_5 c'_1 bes_2 c        aes_3 c bes c
  c, c' bes c             aes c bes c
  %D9
  c,_5 a'_1 g_2 a         fis_3 a g a
  c, a' g a               fis a g a
  
  
  
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
