#set page(
  paper: "a4",
  columns: 1,
  numbering: "1"
)
#set par(
  justify: true,
  leading: 0.52em,
)
#show link: set text(blue)
#set text(
  font: "New Computer Modern",
  size: 11pt
)
#set heading(numbering: "1.")
#show figure.caption: set text(size: 8pt)
#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
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
  clearance: 2em,
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
  clearance: 2em,
)[
  #outline(
    title: "Table of Contents"
  )
]

#pagebreak()

// verbindliches Muster für das Deckblatt der Dissertation

// DISSERTATION


// A physiologically-based pharmacokinetic/ \ pharmacodynamic (PBPK/PD) model \ of the diuretic hydrochlorothiazide
// [Deutsch und Englisch mit in der Regel jeweils max. 160 Zeichen, Titel der Dissertation darf aus bibliografischen Gründen nicht mit dem Titel der Publikation(en) übereinstimmen.]


// zur Erlangung des akademischen Grades 
// Doctor medicinae (Dr. med.)



// vorgelegt der Medizinischen Fakultät 
// Charité – Universitätsmedizin Berlin


// von 


// Amanda Lim



// Erstbetreuung: Prof. Dr. Nils Blüthgen


// Datum der Promotion: [bleibt frei]
 

// -----------------------------------------------------------------------

#include("01_introduction.typ")

#pagebreak()
= Materials & Method
Computational modeling developing a PBPK/PD model using ordinary differential equations (ODE) encoded in Systems Biology Markup Language (SBML) @Hucka2019 @Keating2020, an XML-based format for models of biological processes. An extensive literature research was conducted for base characteristics including the absorption, distribution, metabolism and elimination of hydrochlorothiazide. The initial PBPK model was constructed from literature data and subsequently refined through parameter optimisation using …. Fitting. The detailed input parameters used are provided in …Table X.

== Systematic literature research
A systematic literature review was performed to identify clinical pharmacokinetic and pharmacodynamic data on hydrochlorothiazide (Figure Flowchart). The search, conducted in PubMed and PKPDAI on XXXXX, 2025, using the terms hydrochlorothiazide AND pharmacokinetics, retrieved studies reporting single- and multiple-dose pharmacokinetixs, pharmacodynamic outcomes, and population-specific data (renal impairment). Eligible studies included clinical trials in adults that provided plasma concentraion-time profiles, dosing information and elimination parameters. Preclinical studies, pediatric trials, and reports lacking primary pharmacokinetic endpoints were excluded.

#figure(
  image("figures/PRISMA.png", width:80%),
  caption: [*PRISMA flow diagram of the literature search and study selection process.* Created in https://BioRender.com]
)

== Data curation
Pharmacokinetic and pharmacodynamic data from selected studies were curated in the PK-DB database, including demographics, co-morbidities (renal, cardiac, and hepatic impairment), dosing, co-medications, and fasting state. Graphical data were digitized with WebPlotDigitizer @Rohatgi. Values and units were harmonized to the PK-DB data structure @Grzegorzewski2021. Extracted key PK parameters included Cmax, Tmax, T1/2 and AUC0-infinity.

== Computational model
A whole-body PBPK/PD model of hydrochlorothiazide was developed in SBML format using `sbmlutils`. Simulations were conducted with `sbmlsim` and `libRoadRunner`, and visualizations were generated with `cy3sbml`. The framework encompasses intestinal absorption, systemic distribution across body fluid compartments, renal and biliary elimination as well as pharmacodynamic components describing blood pressure regulation, ion and fluid transport dynamics in the nephron and the renin-angiotensin-aldosterone system (RAAS).

_Cardiac impairment._
Cardiac function was adjusted using the parameter `f_cardiac_function`, where 1.0 represents normal cardiac output of 4.5 to 6 L. Simulated impairments were scaled to reflect mild (0.75), moderate (0.50), and severe (0.25) reductions in cardiac output. The adjustment affected systemic hemodynamics, renal perfusion, and downstream clearance processes to capture the impact of congestive heart failure on drug disposition.

_Renal impairment._
Renal clearance was modulated through the parameter `KI__f_renal_function`, with a value of 1.0 indicating normal kidney function of 101 ml/min. Progressive impairment was represented by scaling this factor to 0.69 (mild), 0.32 (moderate), and 0.19 (severe), reflecting reduced glomerular filtration rate consistent with clinical CKD staging: 69.5 mL/min/1.73 m² for mild, 32.5 mL/min/1.73 m² for moderate, and 19.5 mL/min/1.73 m² for severe dysfunction.
// @KDIGO https://doi.org/10.1016/j.kint.2023.10.018.

_Hepatic impairment._
Hepatic function was adjusted using the parameter `f_cirrhosis`, with 1.0 representing normal function. Impairment was scaled according to Child–Pugh classifications, corresponding to mild (0.40), moderate (0.70), and severe (0.81) reductions in functional capacity. While hydrochlorothiazide undergoes minimal hepatic metabolism, hepatic impairment was modeled to capture secondary effects such as altered plasma protein binding, hemodynamic changes, and potential impacts on renal perfusion (hepatorenal physiology). These mechanisms may indirectly influence drug disposition and diuretic response in patients with cirrhosis or advanced liver disease.
// Köller, A.; Grzegorzewski, J.; König, M. Physiologically Based Modeling of the Effect of Physiological and Anthropometric Variability on Indocyanine Green Based Liver Function Tests. Frontiers in Physiology 2021, 12, 757293. https://doi.org/10.3389/fphys.2021.757293.

== Parameter optimization
PK and PD parameters were optimized using curated clinical datasets. For the PK model, fitted parameters included intestinal absorption, distribution, and renal elimination rates. PD optimization targeted Emax and EC50 values for urinary sodium chloride excretion, tubular fluid volume, and blood pressure reduction. Optimization was performed across multiple dose levels under fed and fasted conditions, with multiple local optimization runs (n=100) applied sequentially to PK and then PD parameters. Model performance was validated against independent datasets.

#pagebreak()
= Results
== Hydrochlorothiazide Database
An overview of key pharmacokinetic values is displayed in @study_table
#figure(
  image("tables/studies.png", width: 100%), 
  caption: [*Overview of hydrochlorothiazide studies.* This table summarizes the included studies with key identifiers (Study, PK-DB ID), dosing regimen (Dosing), dose (Dose), and participant characteristics: H (healthy), RI (renal impairment), HI (hepatic impairment), and CI (cardiac impairment). Fasting status is indicated as FA (fasted) or FE (fed). Pharmacokinetic data include plasma concentrations (P-HCTZ), urinary recovery (U-HCTZ), and fecal recovery (F-HCTZ); pharmacodynamic data include BP (blood pressure), Diu (diuresis), UNa (urinary sodium excretion), UCl (urinary sodium excretion), Renin (renin activity), ACE (ACE activity), and Ald (aldosterone).
  ],
) <study_table>

== Computational model

An overview of the computational model is provided in @model.

#figure(
  image("figures/hctz_model.png", width: 80%),
  caption: [
    *Physiologically based pharmacokinetic/pharmacodynamic (PBPK/PD) model of hydrochlorothiazide.*
    *A)* Whole-body model illustrating oral administration of rivaroxaban (RIV), its distribution via systemic circulation, and the key organs involved in its absorption, metabolism, and elimination—including the gastrointestinal tract, liver, and kidneys.
    *B)* Gastrointestinal model depicting the absorption of RIV and highlighting the food and dose dependency in the percentage of absorption.
    *C)* Pharmacodynamic model capturing inhibition of activated Factor Xa by rivaroxaban, with downstream effects on clot formation and consequent prolongation of PT and aPTT.
    *D)* Hepatic model showing metabolism of rivaroxaban, mediated by CYP3A4, CYP3A5 and CYPJ2 to produce its metabolites RX.
  ],
) <model>

// $ A = pi r^2 $
// $ "area" = pi dot "radius"^2 $
// $ cal(A) :=
//     { x in RR | x "is natural" } $
// #let x = 5
// $ #x < 17 $

== Dose Dependency

== Renal Impairment

== Cardiac Impairment

== Hepatic Impairment


#pagebreak()
= Discussion
Modeled impairment effects: 
Cardiac (↓ GI-tract perfusion, ↓ absroption)
Renal (↓ metabolite clearance)

Hepatic (effect vs no effect, hepatorenal syndrome)


Despite minimal metabolization of hydrochlorothiazide by the liver, our data revealed a decrease in peak plasma concentration and urinary excretion in subjects with hepatic impairment. These findings suggest that hepatic dysfunction can indirectly alter hydrochlorothiazide pharmacokinetics through mechanisms beyond metabolism. In advanced liver disease, reduced hepatic function is often accompanied by cirrhosis and systemic hemodynamic changes, such as decreased effective arterial blood volume, splanchnic vasodilation, and secondary renal hypoperfusion, that characterize hepatorenal syndrome. These pathophysiological alterations can impair renal clearance and reduce drug delivery to the kidneys, thereby diminishing both systemic exposure and urinary recovery. Furthermore, hypoalbuminemia associated with cirrhosis may modify the drug's plasma protein binding and distribution. Such effects may warrant caution when dosing in patients with advanced cirrhosis.

Careful monitoring of therapeutic response and volume status is needed in patients with cardiac/renal/hepatic impairment receiving hydrochlorothiazide.




== Limitations of the model

== Limitations of the data

 Beermann1976 Fig 2 is strange, we could never figure it out, we just didnt use it for anything

= Outlook

#pagebreak()
= Supplement



#bibliography("thesis.bib")