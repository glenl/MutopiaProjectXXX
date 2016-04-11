\version "2.19.35"

\header {
  title = "Six Petites Pièces"
  composer = "F. Sor"
  opus = "Op. 45 No. 6"
  style = "Classical"
  source = "Paris:Shonenberger, n.d. Plate S.1767, edited by N. Coste"
  date = "c.1835"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Six Petites Pièces, No. 6"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  moreinfo = "With the forward: Let's see if that's that. Six short and easy pieces in stages, which aim to lead to what has generally been agreed are difficulties. Composed and dedicated to the person with the least patience, by Fernando Sor. Opus 45."
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #12
%  system-count = #8
}
\layout {
  \context {
    \Voice
    \override Fingering.add-stem-support = ##t
  }
}

mbreak = { \break }
global = {
  \time 3/8
  \key a \major
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \repeat volta 2 {
    <cis-2>16. <e-1>32 <a,-3>8 a' |
    \shiftOn <a-4>4 gis8 |
    <b-4>16.[ <gis-1>32] e8 e |
    <fis-4>4 <e-1>8 |
    cis16. e32 a8 <cis-4> |
    cis4 cis8 |
    <a-4>8. <gis-4>16 <fis-1> gis |
    \shiftOff

    \mbreak
    \barNumberCheck #8
    <cis, a'>4 r8 |
  }
  \repeat volta 2 {
    <gis'-1>16( <b-4>) e,8[ e] |
    fis8 r4 |
    gis16( b) e,8[ e] |
    fis8 b, b |
    \shiftOn
    b16. e32 gis8[ <b-4>8] |
    b4 <a-1>8 |
    <gis-4>8. fis16 gis[( fis)] |
    \shiftOff

    \mbreak
    \barNumberCheck #16
    \once\stemDown e4 s8 |
    <cis-2>16. <e-1>32 a,8 <a'-1> |
    \shiftOn <a-4>4 gis8 |
    b16.( gis32) e8[ e] |
    fis4 e8 |
    \shiftOff cis16. e32 a8[ cis] |
    \shiftOn cis4 b8 |
    a8. gis16 fis gis |

    \mbreak
    \barNumberCheck #24
    <cis, a'>4 r8 |
    <a'-1>16. b32 a8[ fis] |
    a16. b32 a8[ fis] |
    a16. b32 a8[ d] |
    d4 cis8 |
    <e,-4>16. <g-2>32 <b-1>8[ <gis b>8] |
    <gis b>8 <fis a> <d fis>~ |
    q8 <e g> <gis, cis e> |

    \mbreak
    \barNumberCheck #32
    \once\override NoteColumn.force-hshift=#-1 d'4 r8 |
  }
  \repeat volta 2 {
    \slurDown
    e16. b'32( <a-1>4->) |
    fis16. b32( a4->) |
    g16. b32( a4) |
    fis16 d'( cis) b a8 |
    e16. b'32( a4->) |
    fis16. b32( a4) |
    e16. b'32 a8[ cis,] |
  }
  \alternative {
    { <fis, d'>4 r8 }
    { <fis d'>4 r8 }
  }
  \barNumberCheck #42
  \repeat volta 2 {
    cis'16. e32 a,8 a' |
    a4 gis8 |
    b16. gis32 e8[ e] |
    fis4 e8 |
    cis16. e32 a8 cis |
    cis4 b8 |
    a8. gis16 fis gis |

    \mbreak
    \barNumberCheck #49
    <cis, a'>4 r8 |
  }
  \repeat volta 2 {
    gis'16( b) e,8[ e] |
    fis4 r8 |
    gis16 b e,8[ e] |
    fis8 b, b |
    b16. e32 gis8[ b] |
    b4 a8 |
    gis8. fis16 gis16[ fis] |

    \mbreak
    \barNumberCheck #57
    \once\stemDown e4 s8 |
    cis16. e32 a,8[ a'] |
    a4 gis8 |
    \tuplet 3/2 { d'16( b) gis } e8[ e] |
    fis4 e8 |
    cis16. e32 a8[ cis] |
    cis4 b8 |
    a8. gis16 fis gis |
    <cis, a'>4 r8
  }

  \bar "|."
}

fdown = { \set fingeringOrientations = #'(down) }

lowerVoice = \relative c {
  \voiceTwo
  \fdown
  a4 <a' cis>8 |
  << {e,4.} \\ {e8 <b'' d> q} >> |
  << {e,,4.} \\ {e8 <b'' d> <gis d'>} >> |
  << {a,4.} \\ {a8 <a' cis> q} >> |
  << {a,4.} \\ {s4 <cis' e>8} >> |
  << {d,4.} \\ { d8 <d' fis> q} >> |
  << {e,,4.} \\ {e8 <b'' d> q} >> |

  \barNumberCheck #8
  a,8 a' a, |
  e4. |
  << {\voiceTwo <dis' a'>4.} \\ {s8 b' b} >>
  << {\voiceTwo e,,4.} \\ {s8 gis'8\rest gis} >> |
  <dis a'>4. |
  << {\voiceTwo e,4.} \\ {s4 <gis' b>8} >> |
  << {a,4.} \\ {\fdown a8 <a' cis-2> q} >> |
  << {b,4.} \\ {b8 <a' dis> q} >> |

  \barNumberCheck #16
  << {\voiceTwo\fdown r8 <e-3 gis-2>4} \\ {\stemUp e'8 b d } >> |
  << {\voiceTwo a,4.} \\ {a8 a\rest <a' cis>} >> |
  << {\voiceTwo\stemUp e,4.} \\ {e8 <b'' d> q} >> |
  << {\voiceTwo\stemUp e,,4.} \\ {e8 <b'' d> q} >> |
  << {\voiceTwo\stemUp a,4.} \\ {a8 <gis' d'> <a cis>} >> |
  << {\voiceTwo\shiftOnn a,4.} \\ {cis'4 <cis e>8} >> |
  << {\voiceTwo\stemUp d,4.} \\ {d8 <d' fis> q} >> |
  << {\voiceTwo\stemUp e,4.} \\ {e8 <b' d> q} >> |

  \barNumberCheck #24
  a,4 r8 |
  << {\voiceTwo d4.} \\ {fis'4 d8 } >> |
  << {\voiceTwo d,4.} \\ {fis'4 d8 } >> |
  << {\voiceTwo d,4.} \\ {fis'4 <d fis>8} >> |
  << {\voiceTwo a,4.} \\ {a8 <e'' g> q} >> |
  cis,4. |
  d4. |
  a4. |

  \barNumberCheck #32
  << {\voiceTwo d4 r8} \\ {\stemUp fis8 d d} >> |
  << {\voiceTwo \repeat unfold 7 {a4 \shiftOn a8}} \\ 
     {cis'4. | d4 <d fis>8 | e4 <e gis>8 | d4. | cis4. | d4. | cis4 gis8} >> |

  \barNumberCheck #40
  d8 a a |
  d8 r4 |
  a4. |
  << {\voiceTwo e4.} \\ {e8 <b'' d> q} >> |
  << {\voiceTwo e,,4.} \\ {e8 <b'' d> q} >> |
  << {\voiceTwo a,4.} \\ {a8 <a' cis>8 q} >> |
  a,4 <cis' e>8 |
  << {\voiceTwo d,4.} \\ {d8 <d' fis> q} >> |
  << {\voiceTwo e,,4.} \\ {e8 <b'' d> q} >> |

  \barNumberCheck #49
  a,8 a' a, |
  << {\voiceTwo\stemUp e4.} \\ {e8 <gis' b> gis} >> |
  << {\voiceTwo <dis a'>4.} \\ { s8 b' b} >> |
  << {\voiceTwo e,,4.} \\ {gis'4\rest gis8} >> |
  <dis a'>4 r8 |
  << {\voiceTwo e,4.} \\ {c'4\rest <gis' b>8} >> |
  << {\voiceTwo\stemUp a,4 s8} \\ {a8 <a' cis> q } >> |
  << {\voiceTwo\stemUp b,4.} \\ {b8 <a' dis> q} >> |

  \barNumberCheck #57
  << {\voiceTwo r8 <e gis>4} \\ {\stemUp e'8 b d} >> |
  << {\voiceTwo\shiftOn a,4 r8} \\ {a'8 s <a cis>} >> |
  << {\voiceTwo\stemUp e,4.} \\ {e8 <b'' d> q} >> |
  << {\voiceTwo e,,4.} \\ {b''4\rest <b d>8} >> |
  << {\voiceTwo\stemUp a,4.} \\ {a8 <gis' d'> <a cis>} >> |
  a,4 <cis' e>8 |
  << {\voiceTwo\stemUp d,4.} \\ {d8 <d' fis> q} >> |
  << {\voiceTwo\stemUp e,,4.} \\ {e8 <b'' d> q} >> |
  a,4 r8_\markup{"Fin."}
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 6"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"

      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 74
  }
}
