\version "2.19.32"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 12"
  source = "Vienna: Ant. Diabelli et comp. Plate No. 4050"
  %source = "Statens musikbibliotek - The Music Library of Sweden"
  date = "c.1832"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 12"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
 footer = "Mutopia-2015/12/01-1808"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2015" " by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
}

upperVoice = \relative c' {
  \voiceOne
  r16 g[ b d b g] r fis[ c' d c fis,] |
  r16 d[ g d' g, d] r g[ bes e bes g] |
  r16 fis[ a d a fis] r d[ a' c a d,] |
  r16 d[ a' c a d,] r d[ g b g d] |
  r16 d[ g b g d] r d[ a' d a d,] |
  r16 a'[ cis g' cis, a] r a[ d fis d a] |
  r16 g[ b e b g] r e[ a cis a e] |
  r16 fis[ a d a fis] r d'^\markup{"VII"} [ g b g d] |
  r16 d^\markup{"V"} [ fis a fis d] r d^\markup{"IV"} [ eis gis eis d] |
  r16 d^\markup{"V"} [ fis a fis d] r b^\markup{"III"} [ d g d b] |
  r16 a^\markup{"I"} [ d fis d a] r gis[ d' eis d gis,] |
  r16 a[ d fis d a] r g[ b e b g] |
  r16 fis [ a d a fis] r e[ a cis a e] |
  r16 fis[ a d a fis] r fis[ a d a fis] |
  r16 a[ d fis d a] r a[ d fis d a] |
  r16 g[ d' g d g,] r d[ g b g d] |
  r16 d[ a' d a d,] r d[ a' c! a d,] |
  r16 d[ a' c a d,] r d[ g b g d] |
  r16 b'[ d e d b] r a[ c e c a] |
  r16 fis^\markup{"III"} [ c' d c fis,] r g[ b d b g] |
  r16 d[ a' c a d,] r d[ g b g d] |
  r16 fis[ a d a fis] r fis[ a d a fis] |
  r16 g[ b d b g] r fis[ c' d c fis,] |
  r16 d[ g d' g, d] r g[ bes e bes g] |
  r16 fis[ a d a fis] r d[ a' c a d,] |
  r16 d[ a' c a d,] r d[ g b g d] |
  r16 d[ g b g d] r d[ a' d a d,] |
  r16 a'[ cis g' cis, a] r a[ d fis d a] |
  r16 g[ b e b g] r g[ b eis b g] |
  r16 ais[ c fis c ais] r ais[ c fis c ais] |
  r16 ais[ c fis c ais] r ais[ c fis c ais] |
  r16 a![ b fis' b, a] r a[ b fis' b, a] |
  r16 g[ b e b g] r g[ b e b g] |
  r16 g[ a e' a, g] r g[ a e' a, g] |
  r16 a[ d fis d a] r a[ d fis d a] |
  r16 g[ d' g d g,] r g[ bes e bes g] |
  r16 g[ b d b g] r fis[ a d a fis] |
  r16 g[ b d b g] r g[ b d b g] |
  r16 a[ b fis' b, a] r a[ b fis' b, a] |
  r16 g[ b g' b, g] r g[ b g' b, g] |
  r16 g[ a e' a, g] r g[ a e' a, g] |
  r16 a[ d fis d a] r a[ d fis d a] |
  r16 g[ d' g d g,] r g[ d' f d g,] |
  r16 g[ c e c g] r bes[ e g e bes] |
  r16 b![ d g d b] r a[ d fis! d a] |
  <g b g'>2.
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  g4.^\markup{"III"}_\mf g |
  b4.^\markup{"I"} cis^\markup{"III"} |
  d4.^\markup{"II"} fis,^\markup{"I"} |
  g4. g |
  g4. g |
  e4. fis |
  g4. a |
  d4.^\markup{"II"} d |
  \repeat unfold 3 { d4. d | }
  d4. g, |
  a4.^\markup{"II"} a |
  d4. d |
  d4.^\markup{"I"} c! |
  b4. g |
  fis4. fis |
  g4. g |
  gis4. a  |
  a4. g |
  g4.^\markup{"I"} g |
  d'4.^\markup{"II"} d |
  g,4.^\markup{"III"} a |
  b4.^\markup{"I"} cis^\markup{"III"} |
  d4.^\markup{"II"} fis,^\markup{"I"} |
  g4. g |
  g4. fis |
  e4. fis |
  g4. g |
  fis4.^\markup{"II"} fis |
  fis'4. e |
  dis4.^\markup{"I"} b |
  e4. d! |
  cis4.^\markup{"II"} a |
  d4.^\markup{"I"} c! |
  b4. cis^\markup{"III"} |
  d4. d^\markup{"II"} |
  g,4.^\markup{"III"} g |
  dis'4.^\markup{"I"} b |
  e4. d! |
  cis4.^\markup{"III"} a |
  d4.^\markup{"I"} c! |
  b4. b |
  c4. cis^\markup{"III"} |
  d4. d |
  g,2.
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Grazioso."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \key g \major
      \time 6/8
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab"
    <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 96
  }
}
