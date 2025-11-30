#set page(
  paper: "a4",
  columns: 1,
  numbering: "1"
)
#set par(
  justify: true,
  leading: 0.52em
)
#show link: set text(blue)
#set text(
  font: "New Computer Modern",
  size: 11pt
)
#set heading(numbering: "1.")
#show heading.where(level: 1): it => [
  #colbreak()
  #it
]
#show heading.where(level: 1): it => {
  block(it.body)
}
#show heading.where(level: 3): it => {
  block(it.body)
}

#show figure.caption: set text(size: 8pt)
#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em
)[

  #align(center, text(13pt)[
    Thesis
  ])
  
  #align(center, text(17pt)[
    *A physiologically-based pharmacokinetic/ \ pharmacodynamic (PBPK/PD) model \ of the diuretic hydrochlorothiazide*
  ])
  
  
  #align(center, text(13pt)[
    Amanda Lim \
    #link("mailto:amanda.lim@charite.de")
  ])
]

#place(
  bottom + left,
  float: true,
  scope: "parent",
  clearance: 2em
)[
   #align(left, text(10pt)[
    Charité – Universitätsmedizin Berlin \
    Eingereicht: 
  ])
]

#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em
)[
  #outline(
    title: "Table of Contents"
  )
]

#pagebreak()

// verbindliches Muster für das Deckblatt der Dissertation

// DISSERTATION


// A physiologically-based pharmacokinetic/ \ pharmacodynamic (PBPK/PD) model \ of the diuretic hydrochlorothiazide
// [Deutsch und Englisch mit in der Regel jeweils max. 160 Zeichen Titel der Dissertation darf aus bibliografischen Gründen nicht mit dem Titel der Publikation(en) übereinstimmen.]


// zur Erlangung des akademischen Grades 
// Doctor medicinae (Dr. med.)



// vorgelegt der Medizinischen Fakultät 
// Charité – Universitätsmedizin Berlin


// von 


// Amanda Lim



// Erstbetreuung: Prof. Dr. Nils Blüthgen


// Datum der Promotion: [bleibt frei]
 

// 

#include("01_introduction.typ")
#pagebreak()
#include("02_methods.typ")
#pagebreak()
#include("03_results.typ")
#pagebreak()
#include("04_discussion.typ")
#pagebreak()

#bibliography("thesis.bib")

#pagebreak()
#include("06_supplement.typ")

