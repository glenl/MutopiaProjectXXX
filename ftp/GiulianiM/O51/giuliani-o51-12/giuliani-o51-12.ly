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
  mutopiatitle = "18 Progressive Lessons, No. 12"
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

mbreak = { } % \break }


twelveT = \fixed c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  r16 d\f f d f d f, d r d f d f d f, d |
  r16 d f d f d a, d r d f d f d d, d |

  \mbreak
  r16 cis e cis e cis cis, cis r cis e cis e cis cis, cis |
  r16 cis e cis e cis e, cis r cis e cis e cis a,, cis |
  r16 d f d f d f, d r d f d f d f, d |

  \mbreak
  r16 d f d f d f, d r d f d f d c, d |
  r16 d f d f d d, d r d f d f d d, d |
  r16 d f d f d g,, d r d f d f d b,, d |

  \mbreak
  r16 c e c e c e, c r c e c e c e, c |
  r16 c e c e c g, c r c e c e c c, e |
  r16 c e c e c e, c r c e c e c e, c |

  \mbreak
  r16 c e c e c g, c r c e c e c bes,, c |
  r16 cis e cis e cis cis, cis r cis e cis e cis cis, cis |
  r16 cis e cis e cis bes,, cis r cis e cis e cis g,, cis |

  \mbreak
  r16 d f d f d a,, d r d f d f d a,, d |
  r16 d f d f d d, d r d f d f d f,, d |
  r16 d e d e d g,, d r d f d f d a,, d |

  \mbreak
  r16 d g d g d bes,, d r d f d f d a,, d |
  r16 d e d r d g d r d f d r cis e cis |
  r16 d f d r d f d r\sf d f d r d f d |

  \mbreak
  r16 d e d r d e d r cis e cis r cis e cis |
  r16 d f d r d f\sf d r d f d r d f d |
  r16 d e d r d e d r cis e cis r cis e cis |

  \mbreak
  \repeat unfold 2 {r16 d f d r d f d r d f\sf d r cis e cis |}
  <a, d f>2 r \bar "||"
}

twelveB = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(Down)
  \override Fingering.add-stem-support = ##t

  d4. f8 a4. f8 |
  d4. a8 f4. d8 |

  a,4. cis8 e4. cis8 |
  a,4. e8 cis4. a,8 |
  d4. f8 a4. f8 |

  d4. f8 d4. c8 |
  b,4. d8 g4. d8 |
  b,4. g,8 a,4. b,8 |

  c4. e8 g4. e8 |
  c4. g8 e4. c8 |
  bes,4. e8 g4. e8 |

  bes,4. g8 e4. bes,8 |
  a,4. cis8 e4. cis8 |
  a,4. bes,8 a,4. g,8 |

  f,4. a,8 d4. a,8 |
  f,4. d8 a,4. f,8 |
  g,4. g,8 a,4. a,8 |

  bes,!4. bes,8 a,4. a,8 |
  g,4 bes, a, a, |
  d4 f bes a |

  g4 e a a, |
  d4 f bes, a, |
  g,4 e, a, a |

  d4 f a a, |
  d4 f a a, |
  d2 r |
}

twelve = {
  <<
    \clef "treble_8"
    \time 4/4 \key d \minor
    \tempo "Vivace."
    \context Voice = "Etude 1 treble" \twelveT
    \context Voice = "Etude 1 bass" \twelveB
  >>
}


\score {
  <<
    \new Staff = "midi-guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 12"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \twelve
    >>
    % \twelve_tabs
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 96
  }
}
