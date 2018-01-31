\version "2.19.51"

\header {
  title = "18 Progressive Lessons"
  composer = "Mauro Giuliani"
  opus = "Op. 51"
  style = "Classical"
  source = "Chez Richault, Paris. Plate 3307 R."
  date = "c.1827"
  mutopiacomposer = "GiuilaniM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "18 Progressive Lessons, No. 11"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
}

\paper {
  line-width = 18.0\cm
  top-margin = 4\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing.basic-distance = #10
  top-system-spacing.basic-distance = #12
  last-bottom-spacing.padding = #2
}

mbreak = { \break }

elevenT = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \once\override DynamicText.X-offset = -4
  g4\mf r16 d b16. a32 |
  g4 r16 d d'16. b32 |
  g4 r16 d b16. a32 |
  g8 g g g |

  \mbreak
  gis8 a r16 d c'16. b32 |
  a4 r16 d d'16. c'32 |
  a4 r16 d c'16. b32 |
  a8 a a a |
  ais8 b r16 d g16. g32 |

  \mbreak
  g4 r16 g c' e' |
  d'4 r16 b a g |
  g8 c' e' e' |
  d'4 r16 d e' d' |
  a8 c' b16 d e' d' |

  \mbreak
  a8 c' r16 b a g |
  r16 dis( e) gis( a) c' b a |
  r16 g b g <fis a>8 r |
  r4 r16 d b16. a32 |
  g4 r16 d d'16. b32 |

  \mbreak
  g4 r16 d b16. a32 |
  g8 b d' d' |
  d'4 r16 d d'16. c'32 |
  b4 r16 d b16. a32 |
  gis4 r16 d b16. a32 |

  \mbreak
  gis8 b e' e' |
  a,16 <c' e'> e[ <c' e'>] c <c' e'> a,[ <c' e'>] |
  gis,16 <d' e'> b,[ <d' e'>] e, <d' e'> gis,[ <d' e'>] |
  a,16 <c' e'> c[ <c' e'>] a, <c' e'> g,![ <c' e'>] |
  fis,16 <a d'> c[ <a d'>] d <a d'> c[ <a d'>] |

  \mbreak
  d'8 b g' e' |
  d'8 b g' e' |
  d'8 r8 r4 |
  r16 g b g d' g g' g |
  r16 g g' g r16 g e' g |

  \mbreak
  r16 <g d'>16[ r <a c'>16] r <g b>16[ r <fis a>16] |
  \repeat unfold 3 {g4 r16 d b16. a32 |}
  g8 b d' g' |
  g4 <g b g'> |
  <b, d g>4 r |

  \bar "||"
}

elevenB = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(Down)
  \override Fingering.add-stem-support = ##t

  \repeat unfold 3 {g,16 d b, d g,8 r |}
  g,16 d b, d g, d b, d |

  \repeat unfold 3 {fis,16 d a, d fis,8 r |}
  fis,16 d a, d fis, d a, d |
  g,16 d b, d g,8 r |

  g,16 e c e g,8 r |
  g,16 d b, d g,8 r |
  g,16 e c e g, e c e |
  g,16 d b, d g,8 r |
  fis,16 d a, d g,8 r |

  fis,16 d a, d g,8 r |
  c4 r16 a, b, c |
  d!4 d16 c b, a, |
  \repeat unfold 2 {g,16 d b, d g,8 r |}

  g,16 d b, d g,8 r |
  g,16 d b, d g,16 d b, d |
  \repeat unfold 2 {f,16 d b, d f,8 r |}
  e,16 d b, d e,8 r |

  e,16 d b, d e, d b, d |
  a,8 e c a, |
  gis,8 b, e, gis, |
  a,8 c a, g, |
  fis,8 c d c |

  \repeat unfold 2 {b,16 g g, b e g c g |}
  b,16 g g, a, b, c d e |
  f2 |
  e4 c |

  b,8 c d d |
  \repeat unfold 3 {g,16 d b, d g,8 r |}
  g,16 d b, d g, d b, d |
  g,4 g, |
  g,4 r |
}

eleven = {
  <<
    \clef "treble_8"
    \time 2/4 \key g \major
    \tempo "Allegretto."
    \context Voice = "Etude 11 treble" \elevenT
    \context Voice = "Etude 11 bass" \elevenB
  >>
}


\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 11"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \eleven
    >>
    % \eleven_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 96
  }
}
