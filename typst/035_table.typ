#show link: set text(fill: blue)
#show table.cell.where(y: 0): strong
#set text(7pt)
#set table(
  stroke: (x, y) => (
    if y == 0 {
    (top: 0.7pt + black,
      bottom: 0.7pt + black
    )
    }
  ),
  align: (x, y) => (
    if x > 0 { center }
    else { left }
  )
)

#table(columns: (17mm,14mm,10mm,8mm,auto,auto,auto,auto,auto,auto, auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto),
//stroke: none,
table.header[Study][PK-DB][Dosing][Dose [mg]][R][H][CI][RI][HI][FA][FD][Pl][Ur][Fe][BP][Diu][Na][Cl][ACE][Ren][Ald][S],


[Anderson1961], 
[#link("https://identifiers.org/pkdb/PKDB01102")[PKDB01102]],
[single], [50], [p.o.], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [-], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Anderson1961],

[Azumaya1990], 
[#link("https://identifiers.org/pkdb/PKDB01103")[PKDB01103]],
[single], [12.5, 25], [p.o.], [#sym.checkmark], [-], [-], [-], [-], [-], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [-], [@Azumaya1990],

[Barbhaiya1982], 
[#link("https://identifiers.org/pkdb/PKDB00751")[PKDB00751]],
[single], [50], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Barbhaiya1982],

[Barbhaiya1982a],
[#link("https://identifiers.org/pkdb/PKDB01104")[PKDB01104]],
[multiple], [50], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Barbhaiya1982a],

[Beermann1976],
[#link("https://identifiers.org/pkdb/PKDB00752")[PKDB00752]],
[single], [5; 50 p.o.; 1; 35 i.v.], [p.o., i.v.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [@Beermann1976],

[Beermann1977a], [#link("https://identifiers.org/pkdb/PKDB00821")[PKDB00821]],
[single], [12.5, 25, 50, 75], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [#sym.checkmark], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [@Beermann1977a],

[Beermann1979], 
[#link("https://identifiers.org/pkdb/PKDB01105")[PKDB01105]],
[single], [50, 75], [p.o.], [-], [#sym.checkmark], [#sym.checkmark], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Beermann1979],

[Devineni2014], 
[#link("https://identifiers.org/pkdb/PKDB00879")[PKDB00879]],
[multiple], [25], [p.o.], [#sym.checkmark], [-], [-], [-], [-], [-], [#sym.checkmark], [-], [-], [-], [-], [-], [-],[-], [-], [-], [@Devineni2014],

[Giudicelli1987], 
[#link("https://identifiers.org/pkdb/PKDB00753")[PKDB00753]],
[single, multiple], [25], [p.o.], [-], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [#sym.checkmark], [#sym.checkmark], [-], [@Giudicelli1987],

[Heise2015], 
[#link("https://identifiers.org/pkdb/PKDB00852")[PKDB00852]],
[multiple], [25], [p.o.], [-], [-], [-], [-], [-], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Heise2015],

[Howes1991], 
[#link("https://identifiers.org/pkdb/PKDB00777")[PKDB00777]],
[single], [25], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [@Howes1991],

[Hsiao2015], 
[#link("https://identifiers.org/pkdb/PKDB00754")[PKDB00754]],
[multiple], [25], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [-], [-], [-], [-], [-], [-],[-], [-], [-], [@Hsiao2015],

[Hunninghake1986], 
[#link("https://identifiers.org/pkdb/PKDB00755")[PKDB00755]],
[single], [75], [p.o.], [#sym.checkmark], [-], [-], [-], [-], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Hunninghake1986],

[Jeon2012], 
[#link("https://identifiers.org/pkdb/PKDB00756")[PKDB00756]],
[multiple], [25], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [#sym.checkmark], [@Jeon2012],

[Jordo1979], 
[#link("https://identifiers.org/pkdb/PKDB00757")[PKDB00757]],
[multiple], [12.5, 25], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Jordo1979],

[Koytchev2004], 
[#link("https://identifiers.org/pkdb/PKDB00853")[PKDB00853]],
[single], [12.5], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [-], [@Koytchev2004a],

[Niemeyer1983], 
[#link("https://identifiers.org/pkdb/PKDB00758")[PKDB00758]],
[single], [50], [p.o.], [#sym.checkmark], [-], [#sym.checkmark], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [@Niemeyer1983],

[Nilsen1989], 
[#link("https://identifiers.org/pkdb/PKDB01107")[PKDB01107]],
[single], [25], [p.o.], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [-], [#sym.checkmark], [-], [-], [-], [-], [@Nilsen1989],

[Niopas2011], 
[#link("https://identifiers.org/pkdb/PKDB00789")[PKDB00789]],
[single], [12.5], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [-], [@Niopas2004],

[Patel1984], 
[#link("https://identifiers.org/pkdb/PKDB00759")[PKDB00759]],
[single], [25, 50, 100, 200], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [@Patel1984],

[Ripley2000], 
[#link("https://identifiers.org/pkdb/PKDB01108")[PKDB01108]],
[single], [25], [p.o.], [-], [-], [-], [-], [-], [-], [-], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [-], [#sym.checkmark], [#sym.checkmark], [@Ripley2000],

[Vaidyanathan2006], 
[#link("https://identifiers.org/pkdb/PKDB00681")[PKDB00681]],
[multiple], [12.5], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-], [-], [@Vaidyanathan2006],

[Weir1998], 
[#link("https://identifiers.org/pkdb/PKDB00760")[PKDB00760]],
[multiple], [25], [p.o.], [#sym.checkmark], [-], [-], [-], [-], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [-], [-], [-], [-], [-],[@Weir1998],

[Williams1982], 
[#link("https://identifiers.org/pkdb/PKDB01109")[PKDB01109]],
[single], [50, 100], [p.o.], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-], [#sym.checkmark], [#sym.checkmark], [-], [-], [-],[@Williams1982],
)
