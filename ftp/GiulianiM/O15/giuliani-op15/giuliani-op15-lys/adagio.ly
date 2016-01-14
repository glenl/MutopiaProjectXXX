\version "2.19.32"

% Giuliani Opus 15 Sonate Brilliant
% Adagio

upperVoice = \relative c' {
  \voiceOne\slurDown\tieDown
  b4 a16 d c a |
  g4 r8 d |
  b8 d g a |
  b8 d16( c) a8 r |
  <g b>8 d' <g, cis> e' |
  <e, d'>4. dis'8 |

  \mbreak
  <g, b e>32 ais'( b) fis( a g) b,_. e_. <fis, d'>8 <e cis'> |
  <g e'>4 <fis d'>8 r |
  b'4 a16 d c a |
  <b, d g>4 r8 d |
  b8 d <d g> <g b> |
  q4 <fis a>8 r |
  <g b>4 <fis a>8 <f b> |

  \mbreak
  <e g c>8 <g d'> <g e'>^\fermata
  % use a tuplet to deal with the cadenza here
  \omit TupletNumber \tuplet 5/2 {
    dis'32[( e)_\apiacere fis e d c b c e, a ]
  } |
  r16 <b, g'> q q <d b'> <c a'> <b g'> <a fis'> |
  g'8 r r16 d e fis |
  g16 a b c cis d b g |
  g8 fis r16 gis a fis |
}

lowerVoice = \relative c' {
  \voiceTwo\slurUp\tieUp
  g4\p d |
  b4 r8 a |
  g8 fis b <d fis> |
  <d g>4 <d fis>8 r |
  <g, d'>4 <a e'> |
  b4. <a fis' c'>8\sf |

  g8 r a a |
  cis8\f a d16_\dolce <a' c> <g b> <d a'> |
  <g g'>4 <d d'> |
  g4 r8 a\p |
  g8 a b d |
  d,8\pf d' d, r |
  g8\p g\< g g |

  c8\sf b\p c_\fermata r |
  d,4\pf d |
  \repeat unfold 16 { <b d>16 } |
  \repeat unfold 8 { <c d>16 } |

  \repeat unfold 8 { <c d>16 } |
  \repeat unfold 16 { <b d>16 } |
  \repeat unfold 16 { <c d>16 } |
}
