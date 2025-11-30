= Results
== Hydrochlorothiazide Database
A total of 24 studies meeting all the inclusion criteria were curated for PBPK/PD model development. An overview of key data characteristics of each study is displayed in @study_table.

#figure(
  image("figures/PRISMA.png", width:80%),
  caption: [*PRISMA flow diagram of the literature search and study selection process.*]
)

#figure(
  image("tables/studies.png", width: 100%),
  caption: [*Overview of hydrochlorothiazide studies.* This table summarizes the included studies with key identifiers (Study PK-DB ID) dosing regimen (Dosing) dose (Dose) and participant characteristics: H (healthy) RI (renal impairment) HI (hepatic impairment) and CI (cardiac impairment). Fasting status is indicated as FA (fasted) or FE (fed). Pharmacokinetic data include plasma concentrations (P-HCTZ) urinary recovery (U-HCTZ) and fecal recovery (F-HCTZ); pharmacodynamic data include BP (blood pressure) Diu (diuresis) UNa (urinary sodium excretion) UCl (urinary sodium excretion) Renin (renin activity) ACE (ACE activity) and Ald (aldosterone).
  ]
) <study_table>

== Computational Model
=== Model Overview
An overview of the computational model is provided in @model.

#figure(
  image("figures/hctz_model.png", width: 80%),
  caption: [
    *Physiologically based pharmacokinetic/pharmacodynamic (PBPK/PD) model of hydrochlorothiazide.*
    *A)* Whole-body model illustrating oral administration of hydrochlorothiazide (HCTZ) its distribution via systemic circulation and the key organs involved in its absorption metabolism and elimination—including the gastrointestinal tract liver and kidneys.
    *B)* Gastrointestinal model depicting the absorption of HCTZ and showing minimal role of intestinal excretion.
    *C)* Kidney model emphasizing renal excretion as the principal elimination route of HCTZ ensuring that the fraction of drug reaching the tubular site of action is appropriately represented.
    *D)* Kidney model illustrating HCTZ mechanism of action: capturing inhibition of sodium-chloride co-transporter in the early distal convoluted tubule thereby reducing sodium and chloride reabsorption.
  ]
) <model>


=== Intestine model
The computational model of the intestine describes the dissolution absorption and transport of hydrochlorothiazide as well as its excretion directly through the gastrointestinal tract. The model is structured into five compartments: the stomach intestinal lumen enterocytes blood plasma and feces. Hydrochlorothiazide dissolves in the stomach and is subsequently absorbed into the plasma via enterocytes. 

=== Kidney model
The computational kidney model simulates the renal excretion of hydrochlorothiazide from plasma. As shown in Fig.X the model is structured into two compartments: blood plasma and urine. Renal clearance is modeled as unidirectional flow from plasma to urine.

A nephron sub-model is integreated in the kidney model in order to simulate ion and water transport in the early distal tubule (hydrochlorothiazide site of action). Ion transport for sodium and chloride.

=== RAAS model
A model of the Renin-Angiotensin-Aldosteron-System (RAAS) was created in order to investigate the pharmacodynamic effects of hydrochlorothiazide on RAAS. Hydrochlorothiazide has minimal direct pharmacodynamic activity pertaining the RAAS however.... //frequent co-medication with ACE-I? or why we do this?
The physiological basis of the renin angiotensin aldosterone system is provided in Fig X. A technical overview of the computational RAAS model is presented in Fig.Y.

=== Fluid model
Fluid compartments in the body was modeled in order to investigate the pharmacodynamic activity of hydrochlorothiazide on diuresis and blood pressure. Linked to the kidney and especially the nephron sub-model.

== Parameter Fitting
Once the structure of the PBPK/PD model of hydrochlorothiazide is established a subset of parameters were optimized using a subset of the available data. Initially parameters of the pharmacokinetic model was optimized (Table X) and subsequently those of the pharmacokinetic model (Table Y). The result of the optimization process in terms of error convergence and goodness-of-fit is depicted in @optimization_pk.

#figure(
  image("figures/optimization.png"),
  caption: [Optimization Performance: Parameter optimization convergence (cost vs. optimization step) and Goodness-of-fit (model predictions vs. experimental data)]
) <optimization_pk>

//insert table overview of parameters optimized

== Dose Dependency
Hydrochlorothiazide doses ranging from 12.5 mg to 200 mg were simulated to evaluate dose-dependent behavior. As shown in @dosedependency_pk hydrochlorothiazide concentration in plasma urine and feces increases with dose. 

AUC and Cmax increase more than proportionally
with dose.
Elimination rate constant and half-life unstable. 
Decreasing half-life in higher doses.

Simulated pharmacokinetic and pharmacodynamic results match the general trends observed in curated dose-dependent clinical studies.

#figure(
  image("figures/dose_dependency_pk.png"),
  caption: [Dose dependency model for pharmacokinetics]
) <dosedependency_pk>

== Renal Impairment

Simulations of various renal function levels ranging from 0.1 to 1.0 
//corresponding to what eGFR
were performed to investigate the effects of renal impairment. As shown in @renal_impairment_model hydrochlorothiazide concentration in plasma and urine decreases with increasing renal function indicating the significance of renal elimination in maintaining sufficient therapeutic plasma concentration while no change in hydrochlorothiazide concentration in feces was observed.
AUC and half-life (t1/2) decrease exponentially
with dose.

Simulated pharmacokinetic and pharmacodynamic results match the general trends observed in curated clinical studies.

#figure(
  image("figures/renal_impairment.png"),
  caption: [Renal impairment model]
) <renal_impairment_model>


== Cardiac Impairment
Various levels of cardiac output ranging from 0 to 6 L/min
//corresponding to what eGFR
were simulated to investigate the effects of congestive heart failure. As shown in @cardiac_impairment_model hydrochlorothiazide concentration in plasma and urine decreases slightly with increasing cardiac function while no change in hydrochlorothiazide concentration in feces was observed.
AUC and half-life (t1/2) decrease more than proportionally
with cardiac impairment however less steep than renal impairment.

Simulated pharmacokinetic and pharmacodynamic results match the general trends observed in curated clinical studies.

#figure(
  image("figures/cardiac_impairment.png"),
  caption: [Cardiac impairment model]
) <cardiac_impairment_model>


== Hepatic Impairment
Simulations of various degrees of liver cirrhosis ranging from Child-Pugh score of 0 to 15
//corresponding to what
were performed to investigate the effects of hepatic impairment. As shown in @hepatic_impairment_model changes in hepatic function show no significant effect on hydrochlorothiazide concentration in plasma urine and feces which aligns with the miniscule level of hepatic metabolism of hydrochlorothiazide.
AUC increases more than proportionally
with increasing cirrhosis degree while half-life (t1/2) decreases. // with a plateau in the middle?

Simulated pharmacokinetic and pharmacodynamic results diverge from the general trends observed in curated clinical studies.

#figure(
  image("figures/hepatic_impairment.png"),
  caption: [Hepatic impairment model]
) <hepatic_impairment_model>