#show table.cell.where(y: 0): strong
#set text(7pt)
#set table(
  stroke: (x, y) => (
    if y == 0 {
    (top: 0.7pt + black,
      bottom: 0.7pt + black
    )
    },
    if y == 3 {
      (bottom: 0.7pt + black)
    },
  )
  align: (x, y) => (
    if x > 0 { center }
    else { left }
  )
)

#table(columns: (17mm,14mm,10mm,8mm,auto,auto,auto,auto,auto,auto, auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto),
//stroke: none,
table.header[Study][PK-DB][Dosing][Dose [mg]][R][H][CI][RI][HI][FA][FD][Pl][Ur][Fe][BP][Diu][Na][Cl][ACE][Ren][Ald][S],
[Anderson1961], [PKDB01102], [single], [50], [p.o.], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [-], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Anderson1961],
[Azumaya1990], [PKDB01103], [single], [12.5, 25], [p.o.], [#sym.checkmark], [-], [-], [-], [-], [-], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [-], [@Azumaya1990],
[Barbhaiya1982], [PKDB00751], [single], [50], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Barbhaiya1982]
)

//[Barbhaiya1982a]
[Beerman1976]
[Beermann1977a]	
[Beermann1979]
[Devineni2014]
[Giudicelli1987]
[Heise2015]
[Howes1991]
[Hsiao2015]
[Hunninghake1986]
[Jeon2012]
[Jordo1979]
[Koytchev2004]
[Niemeyer1983]
[Nilsen1989]
[Niopas2011]
[Patel1984]
[Ripley2000]
[Vaidyanathan2006]
[Weir1998]
[Williams1982]

#bibliography("thesis.bib")
