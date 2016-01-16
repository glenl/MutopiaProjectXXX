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
  \override NoteHead.font-size = #-2 \override Accidental.font-size = #-2
  \omit TupletNumber \tuplet 5/2 {
    dis'32[( e)_\apiacere fis e d c b c e, a ]
  } |
  \revert Accidental.font-size \revert NoteHead.font-size
  r16 <b, g'> q q <d b'> <c a'> <b g'> <a fis'>\sf |
  \override TextSpanner.bound-details.left.text=\markup{\upright "VII "}
  g'8\startTextSpan r r16 d e fis |
  g16 a b c cis d b g |
  g8 fis r16 gis a fis |

  \mbreak
  d16 gis a fis d d' fis, a |
  g8 r r16 cis d ais |
  b16 fis g b a g fis e |
  e8-\tweak X-offset #-3 \sf d r16 d\p d d |
  ees16 d e d f d fis d \stopTextSpan |
  
  \mbreak
  <b d g>16 <g' b> q q \slashedGrace{c8} <g b>16 <fis a> <e g> <d fis> |
  <cis e>4 r16 <cis a'> <d gis> <e g> |
  <d fis>4 r16 a' g fis |
  fis16( e) e e r b d e |
  <a, cis>8 <g b> <fis a> <e g> |

  \mbreak
  <d' fis>8 q q q |
  \tupletSpan 8 \omit TupletNumber \omit TupletBracket
  \tuplet 3/2 { r16 <e g>16[ q] <dis fis>16[( <e g>) q] r q[ q <e a>16]( g[) <e g>_.] } |
  <d fis>8 q q q |
  \tuplet 3/2 { r16 <e g>16[ q] <dis fis>16[( <e g>) q_.] <e a>16[( g) <e g>_.] <e a>16[( g) <e g>_.] } |
  
  \mbreak
  <d fis>8. <cis e>16 <d fis> <e g> <fis a> <g b> |
  <a c>16. <g b>32 <fis a>16. <e g>32 <d fis>16. <c e>32 <b d>16. <a c>32 |
  <g b>16 <g' b>16 q q r <b d> <a cis> <g b> |
  \tuplet 3/2 { r16 <fis b>( a) r <e a>( g) r <d g>( fis) r <cis fis>( e) } |

  \mbreak
  r32 b_\> d e gis e b' g\! d' cis\> b a gis fis e d\! |
  cis8 r g'32 fis e d cis b a g |

  \mbreak
}

lowerVoice = \relative c' {
  \voiceTwo\slurUp\tieUp
  g4-\tweak X-offset #-2 \p d |
  b4 r8 a |
  g8 fis b <d fis> |
  <d g>4 <d fis>8 r |
  <g, d'>4 <a e'> |
  b4. <a fis' c'>8-\tweak X-offset #-3 \sf |

  g8 r a a |
  cis8-\tweak X-offset #-2 \f a d16_\dolce <a' c> <g b> <d a'> |
  <g g'>4 <d d'> |
  g4 r8 a-\tweak X-offset #-2 \p |
  g8 a b d |
  d,8-\tweak X-offset #-4 \pf d' d, r |
  g8-\tweak X-offset #-2 \p g\< g g |

  c8 \sf b\p c_\fermata r |
  d,4\pf d |
  \repeat unfold 16 { <b d>16 } |
  \repeat unfold 8 { <c d>16 } |

  \repeat unfold 8 { <c d>16 } |
  \repeat unfold 16 { <b d>16 } |
  \repeat unfold 16 { <c d>16 } |
  
  g8-\tweak X-offset #-3 \sf r g' r |
  r16 a,( cis) e^! a,8-\tweak X-offset #3 _\dolce r |
  r16 d16( fis) a^! d d,\< e fis\! |
  <g b>4 gis,-\tweak X-offset #-3.5 \f |
  a8 cis d a |

  \tupletSpan 8 \omit TupletNumber \omit TupletBracket
  \tuplet 3/2 { d16[\sf a' g] fis[\sf g e] d[\sf e fis] d[\sf cis b] } |
  a4\f -\tweak X-offset #3 _\dolce a\f -\tweak X-offset #3 _\dolce |
  \tuplet 3/2 { d16[\sf a' g] fis[\sf g e] d[\sf e fis] d[\sf cis b] } |
  a4\f  -\tweak X-offset #3 _\dolce a\f |

  d16\p q\< q q q q q q |
  d8\f d d d |
  g,8\sf r_\dolce g'4 |
  d8 g a a, |
  gis4\f e |
  r32\f gis\> a cis e a cis e e d cis b a g fis e\! |
}
