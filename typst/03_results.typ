= Results
== Hydrochlorothiazide Database
A total of 24 studies meeting all the inclusion criteria were curated for PBPK/PD model development. An overview of key data characteristics of each study is displayed in 
//@study_table.

#figure(
  image("figures/PRISMA.png", width:80%),
  caption: [*PRISMA flow diagram.* The diagram illustrates the systematic literature search and study selection process including the database searches, the number of abstracts screened and the full texts assessed, which resulted in the 24 studies that were included.]
) <prisma>

#include("035_table.typ")

*Overview of included studies.* All 24 studies included are listed with key identifiers (Study, PK-DB ID), dosing regimen (Dosing), dose (Dose), route (R) and participant characteristics: H (healthy), CI (cardiac impairment), RI (renal impairment), and HI (hepatic impairment). Fasting status is indicated as FA (fasted) or FD (fed). Pharmacokinetic data include plasma concentrations (Pl) urinary recovery (Ur) and fecal recovery (Fc); pharmacodynamic data include BP (blood pressure), Diu (diuresis), Na (urinary sodium excretion), Cl (urinary sodium excretion), Renin (renin activity), ACE (ACE activity), and Ald (aldosterone).


//#figure(image("tables/studies.png", width: 100%),
//  caption: [*Overview of hydrochlorothiazide studies.* This table summarizes the included studies with key identifiers (Study PK-DB ID) dosing regimen (Dosing) dose (Dose) and participant characteristics: H (healthy) RI (renal impairment) HI (hepatic impairment) and CI (cardiac impairment). Fasting status is indicated as FA (fasted) or FE (fed). Pharmacokinetic data include plasma concentrations (P-HCTZ) urinary recovery (U-HCTZ) and fecal recovery (F-HCTZ); pharmacodynamic data include BP (blood pressure) Diu (diuresis) UNa (urinary sodium excretion) UCl (urinary sodium excretion) Renin (renin activity) ACE (ACE activity) and Ald (aldosterone).])<study>

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
  caption: [*Optimization Performance.* Parameter optimization convergence (cost vs. optimization step) and goodness-of-fit (model predictions vs. experimental data)]
) <optimization_pk>

//insert table overview of parameters optimized

== Dose Dependency
Hydrochlorothiazide oral doses ranging from 5 mg to 200 mg and intravenous doses from 1 to 35 mg were simulated. The model confirmed dose-dependent behavior of hydrochlorothiazide pharmacokinetic and pharmacodynamic profiles in the simulated doses, as shown in @dosedependency_pk. Simulated hydrochlorothiazide concentration in plasma, urine and feces increases with dose, matching the general trends in observed clinical data from multiple studies, both with single and multiple doses. $C#sub[max]$ and $A U C_(0-∞)$ increased more than proportionally
with dose. Conversely, the half-life and renal elimination rate decreased exponentially with increasing dose. The simulations matched the data from Azumaya et al. (1990) @Azumaya1990, Jordo et al. (1979) @Jordo1979, Patel et al. (1984) @Patel1984, and Beermann et al. (1976) @Beermann1976. Additionally, pharmacodynamic responses are also scaled with the dose,
showing higher values of maximum diuresis (up to 270 ml/hr for 100 mg dose), sodium and chloride excretion as well as a more significant decrease in systolic and diastolic blood pressure (up to 106 and 70 mmHg respectively) for higher doses.

#figure(
  image("figures/dose_dependency_pk.png", width:85%),
  caption: [*Dose dependent pharmacokinetics and pharmacodynamics of hydrochlorothiazide.* *(A)* Hydrochlorothiazide oral dose range (5–200 mg) evaluated in the simulations. *(B)* Simulated PK and PD time-courses for various doses across the dose range. *(C)* Dose dependency relationships for key pharmacokinetic parameters for hydrochlorothiazide. *(D)* Dose dependency relationships for key pharmacodynamic parameters for hydrochlorothiazide. *(E)* Simulated (solid lines) versus observed (symbols with dashed lines) plasma and urine concentration-time profiles of hydrochlorothiazide across various single oral doses in selected studies: Azumaya et al. (1990) @Azumaya1990, Jordo et al. (1979) @Jordo1979, Patel et al. (1984) @Patel1984, Beermann et al. (1976) @Beermann1976, and Hunninghake et al. (1986) @Hunninghake1986. Observed data are presented as mean or mean ± SD where available.]
) <dosedependency_pk>


#figure(image("figures/dose_dependency_pd.png", width:95%),
caption: [*(continued).* *(F)* Simulated (solid lines) versus observed (symbols with dashed lines) plasma and urine concentration-time profiles of hydrochlorothiazide across various multiple oral doses in selected studies: Giudicelli et al. (1987) @Giudicelli1987, Devineni et al. (2014) @Devineni2014, Jeon et al. (2012) @Jeon2012, Vaidyanathan et al. (2006) @Vaidyanathan2006, and Weir et al. (1998) @Weir1998. *(G)* Simulated (solid lines) versus observed (symbols with dashed lines) pharmacodynamic profiles of hydrochlorothiazide across various oral doses in selected studies. Observed data are presented as mean or mean ± SD where available.]) <dosedependency_pd>

== Renal Impairment

Simulations of various renal function levels ranging from 0.1 to 1.0 
//corresponding to what eGFR
were performed to investigate the effects of renal impairment. As shown in @renal_impairment hydrochlorothiazide concentration in plasma and urine decreases with increasing renal function indicating the significance of renal elimination in maintaining sufficient therapeutic plasma concentration while no change in hydrochlorothiazide concentration in feces was observed.
$A U C_(0-∞)$ and half-life ($t_(1/2)$) decrease exponentially
with dose.

Simulated pharmacokinetic and pharmacodynamic results match the general trends observed in curated clinical studies.

#figure(
  image("figures/renal_impairment.png"),
  caption: [*Effects of renal impairment on the pharmacokinetics and pharmacodynamics of hydrochlorothiazide.*
  *(A)* Classification of renal function levels based on estimated glomerular filtration rate (eGFR), distinguishing normal function from mild, moderate, and severe renal impairment.
  *(B)* Simulated pharmacokinetic and pharmacodynamic time-course profiles across graded renal function levels. Correlation between cardiac function and key pharmacokinetic parameters is illustrated for $A U C_(0-∞)$ and $t_(1/2)$.
  *(C)* Comparison of simulated (solid lines) and observed data (symbols with dashed lines) for plasma concentration-time profiles and cumulative urinary excretion across renal function levels in selected studies: Anderson et al. (1961) @Anderson1961, Niemeyer et al. (1983) @Niemeyer1983, and Beermann et al. (1979) @Beermann1979.]
) <renal_impairment>


== Cardiac Impairment
Various levels of cardiac output ranging from 0 to 6 L/min
//corresponding to what eGFR
were simulated to investigate the effects of congestive heart failure. As shown in @cardiac_impairment hydrochlorothiazide concentration in plasma and urine decreases slightly with increasing cardiac function while no change in hydrochlorothiazide concentration in feces was observed.
$A U C_(0-∞)$ and half-life ($t_(1/2)$) decrease more than proportionally
with cardiac impairment however less steep than renal impairment.

Simulated pharmacokinetic and pharmacodynamic results match the general trends observed in curated clinical studies.

#figure(
  image("figures/cardiac_impairment.png"),
  caption: [*Effects of cardiac impairment on the pharmacokinetics and pharmacodynamics of hydrochlorothiazide.*
  *(A)* Classification of heart function levels based on cardiac output, distinguishing normal function from mild, moderate, and severe cardiac impairment.
  *(B)* Simulated pharmacokinetic and pharmacodynamic time-course profiles across increasing degrees of cardiac impairment. Correlation between cardiac function and key pharmacokinetic parameters is illustrated for $A U C_(0-∞)$ and $t_(1/2)$.
  *(C)* Comparison of simulated (solid lines) and observed data (symbols with dashed lines) for plasma concentration-time profiles and cumulative urinary excretion in patients with cardiac impairment from selected studies: Anderson et al. (1961) @Anderson1961 and Beermann et al. (1979) @Beermann1979.]
) <cardiac_impairment>


== Hepatic Impairment
Simulations of various degrees of liver cirrhosis ranging from Child-Pugh score of 0 to 15
//corresponding to what
were performed to investigate the effects of hepatic impairment. As shown in @hepatic_impairment changes in hepatic function show no significant effect on hydrochlorothiazide concentration in plasma urine and feces which aligns with the miniscule level of hepatic metabolism of hydrochlorothiazide.
$A U C_(0-∞)$ increases more than proportionally
with increasing cirrhosis degree while half-life ($t_(1/2)$) decreases. // with a plateau in the middle?

Simulated pharmacokinetic and pharmacodynamic results diverge from the general trends observed in curated clinical studies.

#figure(
  image("figures/hepatic_impairment.png"),
  caption: [*Effects of hepatic impairment on the pharmacokinetics and pharmacodynamics of hydrochlorothiazide.*
  *(A)* Classification of cirrhosis levels as a manifestation of chronic hepatic impairment based on the Child-Pugh score, distinguishing normal liver function from mild, moderate, and severe cirrhosis.
  *(B)* Simulated pharmacokinetic time-course profiles across increasing degrees of cirrhosis. Correlation between degree of cirrhosis and key pharmacokinetic parameters is illustrated for $A U C_(0-∞)$ and $t_(1/2)$.
  *(C)* Comparison of simulated (solid lines) and observed data (symbols with dashed lines) for plasma concentration-time profiles and cumulative urinary excretion in patients with hepatic impairment in Anderson et al. (1961) @Anderson1961]
) <hepatic_impairment>