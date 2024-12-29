\version "2.24.3"
\paper {
  ragged-right = ##f	% pour occuper toute la ligne
  indent = #0 % pas d'indentation de la première portée
  top-margin = 2
  left-margin = 5
  right-margin = 5
  bottom-margin = 2
}

%%%%%%%%%%%%%%%%%%%%
\header {
  title = "Praeludium II"
  subtitle = "Do mineur, bwv 847"
  composer ="BAcH"
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \minor
  \time 4/4
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   Partie A = " doubles croches "
% Mesure 1 à 24 incluse
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
chords_A = \chordmode {
 \set minorChordModifier = \markup { "-" }% symbole accords mineurs %
 c1:m        % Cmin add9
 f1:m7+/c 
 b1:dim7/c
 c1:m
 aes1:7+/c
 d1:9/c
 g1:m7+/bes
 c1:9/bes
 f1:m7+/aes    %Fmin/maj9
 bes1:9/aes     %Bb9/Ab
 ees1:9/g %Eb 9/G
 aes1:7+/c% Abmaj7/C
 bes1:9/d  %Bb9/D
 ees1:  %Eb
 f1:9 %F9
 b1:dim7/d %B°7/D
 b1:dim7/c %B°7/C
 c2:m7+ %Cmin/maj9
 c2:m7+/bes %Cmin/maj9 /Bb
 f1:m7/aes % Fmin7
 fis1:dim7/a   %F#°7
 c1:m7+/g % CminMaj9/G
 fis:dim7/g %F#°7/G
 g1:7 %G7, b6
 g1:7 %G7 b9
 %%%%%%%%%%%%%%%%%%%%%%%%%%%
 % fin Mesure 24 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%
}
%-----------------------------------------------
right_A = \relative c'' {
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
  d' fis, e fis           d fis e fis 
  %Gmin/maj9
  d'-5 g,-3 fis-2 g       d-1 g fis g
  d' g fis g              d g fis g
  %C9
  c,-5 e,-2 d-1 e         c-1 e d e
  c' e d e                c e d e
  %Fmin/maj9
  c-5 f,-3 e-2 f          c-1 f e f
  c' f, e f               c f e f
  %Bb9/Ab
  bes-5 f-3 ees!-2 f      d-1 f ees f
  bes f ees f             d f ees f
  %Eb 9/G
  bes-5 g-3 f-2 g         ees-1 g f g
  bes g f g               ees g f g
  % Abmaj7/C
  aes-4 g-3 f-2 g         ees-1 g f g
  aes g f g               ees g f-2 g-4
  %Bb9/D
  aes-5 d,-3 c-2 d-3      bes-1 d c d
  aes' d, c d             bes d c d
  %Eb
  g-5 bes,-2 aes-1 bes    ees-4 bes aes bes
  g' bes, aes bes         ees bes aes bes
  %F9
  f'-5 c-3 bes-2 c        a-1 c bes c
  f c bes c               a c bes c
  %B°7/D
  f-5 d-3 c-2 d           b-1 d c d
  f d c d                 b d c d
  %B°7/C
  f d c d                 b d c d
  f d c d                 b d c d
  %Cmin/maj9
  ees-4 c-3 b-2 c         g-1 c b c
  %Cmin/maj9/Bb
  ees-5 c-3 b c               g c b c
  % Fmin7
  f,-1 ees'-4 d-3 ees     f-5 ees d ees
  f, ees' d ees           f ees d ees
  %F#°7
  fis,-1 c'-3 b-2 c       ees-5 c b c
  fis, c' b  c            ees c b c
  %CminMaj 9 /G
  ees-5 c-3 b-2 c         g-1 c b c
  ees c b c               g c b c
  %F#°7/G
  fis-5 c-2 b-1 c         a-1 c b c
  fis c b c               a c b c
  %G7 b6
  g'-5 c,-2 b-1 c         d-3 c b c
  g' c, b c               d c b c
  %G7 b9
  aes'-5 c, b c           d-3 c b c
  aes' c, b c             d c b c
  % fin Mesure 24 
}
%------------------------------------------------
left_A = \relative c' {
  \global
  % C- add9,4
  c,16_5 g'_1 f_2 g       ees_3 g f g 
  c,16 g' f g             ees g f g 
  %Fmin/maj 9
  c,_5 aes'_1 g_2 aes     f_3 aes g aes
  c, aes' g aes           f aes g aes
  %Bdim7 /C
  c, aes' g aes           f aes g aes
  c, aes' g aes           f aes g aes
  %C- add 9,4
  c,_5 ees_2 d_3 ees       g_1 ees d ees
  c ees d ees             g ees d ees
  %Ab maj 9
  c_5 c'_1 bes_2 c        aes_3 c bes c
  c, c' bes c             aes c bes c
  %D9
  c,_5 a'_1 g_2 a         fis_3 a g a
  c, a' g a               fis a g a
  %Gmin/maj9
  bes,_5 bes'_1 a-2 bes   g_3 bes a bes
  bes, bes' a bes         g bes a bes
  %C9
  bes,_5 g'_1 f_2 g       e_3 g f g
  bes, g' f g             e g f g
  %Fmin/maj9
  aes,_5 aes'_1 g_2 aes   f_3 aes g aes
  aes, aes' g aes         f aes g aes
  %Bb9/Ab
  aes,_5 d_2 c_3 d        f_1 d c d
  aes d c d               f d c d 
  %Eb 9/G
  g,_5 ees'_2 d_3 ees     g_1 ees d ees
  g, ees' d ees           g ees d ees
  % Abmaj7/C
  c_4 ees_2 d_3 ees       aes_1 ees d ees
  c ees d ees             aes ees_3 d_4 ees_3
  %Bb9/D
  d_4 f_2 ees_3 f         aes_1 f ees f
  d f ees f               aes f ees f
  %Eb
  ees_4 g_1 f_3 g         aes_2 g f g
  ees g f g               aes g f g 
  %F9
  ees_4 a_1 g_2 a         f_3 a g a 
  ees a g a               f a g a 
  %B°7/D
  d,_4 f_2 ees_3 f        aes!_1 f ees f
  d f ees f               as f ees f 
  %B°7/C
  c_5 f_2 e_3 f           aes_1 f e f
  c f e f                 aes f e f 
  %Cmin/maj9
  c_5 ees_2 d_3 ees       f_1 ees d ees
  %Cmin/maj9 /Bb
  bes_5 ees_2 d_3 ees     f_1 ees d ees
  % Fmin7
  aes,_5 c_2 b_3 c        d_1 c b c
  aes c b c               d c d c
  %F#°7/A
  a_5 ees'_1 d_2 ees      c_3 ees d ees  
  a, ees' d ees           c ees d ees 
  % CminMaj9/G
  g,_5 ees'_2 d_3 ees     f_1 ees d ees
  g, ees' d ees           f ees d ees
  %F#°7/G
  g,_5 ees'_1 d_2 ees_1   c_3 ees d ees
  g, ees' d ees           c ees d ees
  %G7, b6
  g,_5 ees'_2 d_3 ees     f_1 ees d ees
  g, ees' d ees           f ees d ees
  %G7 b9  basse inchangée !
  g, ees' d ees           f ees d ees
  g, ees' d ees           f ees d ees
  % fin Mesure 24 
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Partie B = avant le Presto
% mesure 25 à 27 incluse
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
chords_B = \chordmode {
  \set minorChordModifier = \markup { "-" }% symbole accords mineurs %
  g1:7 % G7 b9
  c1:m/g % Cmin /G 
  fis:dim7/g %F#°7/G

}

right_B = \relative c'{
  %\global
  % G7 b9
  r1
  %r4
  %a16-3 f-1 e-2 f-1 % Main droite
  %b-4 f-1 d'-5 b-4
  %a-3 f-1 e-2 f-3
  % Cmin / G
  r1
  %r4
  %c16-3 g-1 fis-2 g-1  % Main droite
  %ees'-3 c-1 g'-5 ees-3
  %c-1 aes-3 g-2 aes-3
  %F#°7 / G
  r8.
  c16-1       % Main droite
  ees-3 c-1 bes-2 c-1
  fis-4 c-1 a'-5 fis-4
  ees-2 c-1 b-2 c-1
  
}

left_B = \relative c{
  %\global --> Inutile !
  %et même génant 
  %car cela imprime l'armure de la clé 
  %et la métrique
  %
  % G7 b9
  g16_1 b_4 d_2 f_5 % Main gauche
  %r2.
   a-3 f-1 e-2 f-1 % Main droite
   b-4 f-1 d'-5 b-4
   a-3 f-1 e-2 f-3
  %
  % Cmin / G
  g,16_5 c_3 ees_2 g_1 % Main gauche
  %r2.
   c-3 g-1 fis-2 g-1  % Main droite
   ees'-3 c-1 g'-5 ees-3
   c-1 aes-3 g-2 aes-3
  %  
  %F#°7 / G
  g,16_5 a_4 fis'_1 % Main gauche
  r16 r2.
  % c'-1       % Main droite
  % ees-3 c-1 bes-2 c-1
  % fis-4 c-1 a'-5 fis-4
  % ees-2 c-1 b-2 c-1
  
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
    \chords_B
    }
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } {
      \right_A
      \right_B
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } {
      \clef bass
      \left_A
      \left_B
    }
  >>
  %---------------------------------------------------------
  \layout {}
  \midi {
    \tempo 4=100
  }
}
