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

= Introduction
Hydrochlorothiazide (HCTZ) is a widely prescribed thiazide diuretic in the treatment of hypertension. Hypertension is a leading modifiable risk factor for cardiovascular morbidity and mortality, contributing substantially to the global burden of ischemic heart disease, stroke, heart failure and chronic kidney disease. According to the World Health Organization, over 1.28 billion adults worldwide are affected, yet fewer than one in five achieve adequate blood pressure control. Effective antihypertensive therapy is therefore a cornerstone of public health strategies aimed at reducing cardiovascular events and improving long-term outcomes.

Thiazide diuretics, introduced in the late 1950s, remain a first-line pharmacological option in major international guidelines due to their proven efficacy, cost-effectiveness, and favorable long-term outcome data. HCTZ, one of the most widely prescribed agents in this class, acts on the distal convoluted tubule of the nephron to inhibit the Na+/Cl- symporter, thereby increasing urinary sodium and water excretion. However, clinical studies suggest that the mechanism of action responsible for the antihypertensive effect is most likely only in part due to the diuretic effect; however, the exact mechanism responsible for the additional antihypertensive effect remains unknown.

Despite its extensive clinical use, inter-individual variability in HCTZ pharmacokinetics and pharmacodynamics remains poorly understood. Factors such as renal function, comorbid conditions, and concomitant medications could influence drug exposure and therapeutic response. While empirical PK  and PD models exist, they often lack comorbidity-associated physiological specificity, limiting their utility in patient-specific simulations. A few PK and/or PD models were developed to investigate drug-drug interactions. Commander et al developed a 1-compartment PK model for HCTZ in children, identifying body weight and postmenstrual age as significant covariates for apparent clearance, while obesity had no effect @Commander2021. 

This study aims to develop and validate a PBPK/PD model for HCTZ to enhance our understanding of how HCTZ changes urinary volume and plasma volume and ion balance (sodium, potassium, chloride) and how renal impairment alters these processes.

== Pharmacokinetics of HCTZ
=== Absorption
HCTZ is rapidly absorbed following oral administration. Maximal plasma concentrations are generally reached within 1.5-5 hours after dosing, varying by individual and study conditions.

The absorption of HCTZ has been studied using radiolabeled hydrochlorothiazide, showing that only an insignificant fraction of the drug is absorbed in the stomach, with the duodenum and proximal jejunum serving as the primary sites of uptake @Beermann1976. The efficiency of absorption appears to be independent of dose and to generally follow first-order kinetics @Barbhaiya1982. The effect of food on absorption remains uncertain: one investigation reported an increase in systemic availability under fed conditions, whereas another demonstrated a decrease compared with the fasting state. Variations in the volume of accompanying fluid exert little influence. Marked impairment of absorption has been documented in patients following intestinal shunt surgery for obesity, where urinary recovery of unchanged hydrochlorothiazide averaged only 31% of the administered 75 mg oral dose @Backman1979. Similarly, patients with congestive heart failure exhibited approximately 50% lower absorption compared to healthy subjects, likely explained by altered intestinal wall properties or compromised splanchnic blood flow @Beermann1979. Overall, hydrochlorothiazide absorption seems to be efficient and dose-independent in healthy individuals, but can be significantly compromised by gastrointestinal surgery or systemic disease.

=== Distribution
Following absorption, hydrochlorothiazide distributes primarily within the extracellular fluid compartment and exhibits limited penetration into tissues or tissue binding. Plasma protein binding is moderate, with reported values of approximately 40-70%, and is not considered a major determinant of variability in drug disposition. The apparent volume of distribution ranges from 0.5 to 1.1 L/kg, consistent with confinement to extracellular water. Concentrations in erythrocytes are generally low, with a blood-to-plasma ratio close to unity. Passage across the blood-brain barrier is negligible, whereas distribution to the kidney is pronounced. It crosses the placenta and is excreted into breast milk. Hydrochlorothiazide distribution is relatively restricted, stable across therapeutic dosing ranges, and largely dictated by renal elimination dynamics rather than tissue sequestration.

=== Metabolism & Excretion
Hydrochlorothiazide is minimally metabolized in humans, with the vast majority of the administered dose eliminated unchanged. Renal clearance is the primary elimination pathway through both glomerular filtration and active tubular secretion. Urinary recovery of the unchanged drug typically accounts for 70-90% of the oral dose under normal renal function, underscoring the kidney’s central role in drug disposition. The reported elimination half-life ranges from 6 to 15 hours, supporting once- or twice- daily dosing clinical practice. Biliary excretion is not significant. Thus explaining how renal impairment has a marked influence on hydrochlorothiazide elimination. Reduced glomerular filtration and tubular function prolong the elimination half-life and lead to increased systemic exposure, necessitating cautious use in advanced chronic kidney disease. Conversely, hepatic impairment appears to exert little effect given the limited role of hepatic metabolism. The dependence on renal clearance also renders hydrochlorothiazide susceptible to drug-drug interactions involving renal transporters, although clinically meaningful interactions are uncommon.

= Materials & Method
Computational modeling developing a PBPK/PD model using ordinary differential equations (ODE) encoded in Systems Biology Markup Language (SBML) @Hucka2019 @Keating2020, an XML-based format for models of biological processes. An extensive literature research was conducted for base characteristics including the absorption, distribution, metabolism and elimination of hydrochlorothiazide. The initial PBPK model was constructed from literature data and subsequently refined through parameter optimisation using …. Fitting. The detailed input parameters used are provided in …Table X.

= Results
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



= Discussion

= Outlook

= Supplement


#bibliography("thesis.bib")