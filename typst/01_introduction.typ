= Introduction
Hydrochlorothiazide (HCTZ) is a widely prescribed thiazide diuretic in the treatment of hypertension. Hypertension is a leading modifiable risk factor for cardiovascular morbidity and mortality, contributing substantially to the global burden of ischemic heart disease, stroke, heart failure and chronic kidney disease. According to the World Health Organization, over 1.28 billion adults worldwide are affected, yet fewer than one in five achieve adequate blood pressure control. Effective antihypertensive therapy is therefore a cornerstone of public health strategies aimed at reducing cardiovascular events and improving long-term outcomes.

Thiazide diuretics, introduced in the late 1950s, remain a first-line pharmacological option in major international guidelines due to their proven efficacy, cost-effectiveness, and favorable long-term outcome data. HCTZ, one of the most widely prescribed agents in this class, acts on the distal convoluted tubule of the nephron to inhibit the Na#super[+]/Cl#super[-] symporter, thereby increasing urinary sodium and water excretion. However, clinical studies suggest that the mechanism of action responsible for the antihypertensive effect is most likely only in part due to the diuretic effect; however, the exact mechanism responsible for the additional antihypertensive effect remains unknown.

Despite its extensive clinical use, inter-individual variability in HCTZ pharmacokinetics and pharmacodynamics remains poorly understood. Factors such as renal function, comorbid conditions, and concomitant medications could influence drug exposure and therapeutic response. While empirical PK  and PD models exist, they often lack comorbidity-associated physiological specificity, limiting their utility in patient-specific simulations. A few PK and/or PD models were developed to investigate drug-drug interactions. Commander et al developed a 1-compartment PK model for HCTZ in children, identifying body weight and postmenstrual age as significant covariates for apparent clearance, while obesity had no effect @Commander2021. 

This study aims to develop and validate a PBPK/PD model for HCTZ to enhance our understanding of how HCTZ changes urinary volume and plasma volume and ion balance (sodium, potassium, chloride) and how renal impairment alters these processes.

== Pharmacokinetics of Hydrochlorothiazide

=== Absorption
HCTZ is rapidly absorbed following oral administration. Maximal plasma concentrations are generally reached within 1.5-5 hours after dosing, varying by individual and study conditions.

The absorption of HCTZ has been studied using radiolabeled hydrochlorothiazide, showing that only an insignificant fraction of the drug is absorbed in the stomach, with the duodenum and proximal jejunum serving as the primary sites of uptake @Beermann1976. The efficiency of absorption appears to be independent of dose and to generally follow first-order kinetics @Barbhaiya1982. The effect of food on absorption remains uncertain: one investigation reported an increase in systemic availability under fed conditions, whereas another demonstrated a decrease compared with the fasting state. Variations in the volume of accompanying fluid exert little influence. Marked impairment of absorption has been documented in patients following intestinal shunt surgery for obesity, where urinary recovery of unchanged hydrochlorothiazide averaged only 31% of the administered 75 mg oral dose @Backman1979. Similarly, patients with congestive heart failure exhibited approximately 50% lower absorption compared to healthy subjects, likely explained by altered intestinal wall properties or compromised splanchnic blood flow @Beermann1979. Overall, hydrochlorothiazide absorption seems to be efficient and dose-independent in healthy individuals, but can be significantly compromised by gastrointestinal surgery or systemic disease.

#figure(
  image("figures/pharmacokinetics.png", width: 60%),
  caption: [
    *Pharmacokinetics of hydrochlorothiazide.*

  ],
) <pk>

=== Distribution
Following absorption, hydrochlorothiazide distributes primarily within the extracellular fluid compartment and exhibits limited penetration into tissues or tissue binding. Plasma protein binding is moderate, with reported values of approximately 40-70%, and is not considered a major determinant of variability in drug disposition. The apparent volume of distribution ranges from 0.5 to 1.1 L/kg, consistent with confinement to extracellular water. Concentrations in erythrocytes are generally low, with a blood-to-plasma ratio close to unity. Passage across the blood-brain barrier is negligible, whereas distribution to the kidney is pronounced. It crosses the placenta and is excreted into breast milk. Hydrochlorothiazide distribution is relatively restricted, stable across therapeutic dosing ranges, and largely dictated by renal elimination dynamics rather than tissue sequestration.

=== Metabolism and Excretion
Hydrochlorothiazide is minimally metabolized in humans, with the vast majority of the administered dose eliminated unchanged. Renal clearance is the primary elimination pathway through both glomerular filtration and active tubular secretion. Urinary recovery of the unchanged drug typically accounts for 70-90% of the oral dose under normal renal function, underscoring the kidney’s central role in drug disposition. The reported elimination half-life ranges from 6 to 15 hours, supporting once- or twice- daily dosing clinical practice. Biliary excretion is not significant. Thus explaining how renal impairment has a marked influence on hydrochlorothiazide elimination. Reduced glomerular filtration and tubular function prolong the elimination half-life and lead to increased systemic exposure, necessitating cautious use in advanced chronic kidney disease. Conversely, hepatic impairment appears to exert little effect given the limited role of hepatic metabolism. The dependence on renal clearance also renders hydrochlorothiazide susceptible to drug-drug interactions involving renal transporters, although clinically meaningful interactions are uncommon.

== Pharmacodynamics of Hydrochlorothiazide
Hydrochlorothiazide is a thiazide diuretic that lowers blood pressure primarily by inhibiting the sodium–chloride symporter in the distal convoluted tubule of the kidney. This reduces sodium and water reabsorption, leading to increased urinary excretion, decreased plasma volume, and a subsequent reduction in cardiac preload and blood pressure. Chronic administration also promotes sustained vasodilatory effects, likely mediated by changes in peripheral vascular resistance and modulation of neurohormonal pathways.

#figure(
  image("figures/nacl_cotransporter_moa.png", width: 60%),
  caption: [
    *Mechanism of action of hydrochlorothiazide.* Hydrochlorothiazide acts on the luminal membrane of the early distal convoluted tubule, where it inhibits the sodium-chloride co-transporter, thereby reducing sodium and chloride reabsorption.

  ],
) <pd>

== Comorbidities
Hypertension frequently coexists with other chronic conditions that influence both pharmacokinetics and pharmacodynamics of antihypertensive therapy. Among these, congestive heart failure (CHF), renal impairment, and hepatic impairment are particularly relevant due to their high prevalence in hypertensive populations and their mechanistic impact on hydrochlorothiazide disposition and response.

=== Cardiac impairment
Congestive heart failure (CHF) affects an estimated 1–2% of adults in developed countries, with prevalence rising to over 10% in individuals aged 70 years or older. CHF is characterized by impaired cardiac output, neurohormonal activation, and fluid overload. Hypertension is a major risk factor for the development of CHF, and diuretics such as hydrochlorothiazide are often prescribed to relieve fluid overload and optimize blood pressure control. However, reduced cardiac output and neurohormonal activation in CHF alter hemodynamics, gastrointestinal absorption, and renal drug handling, thereby modifying both hydrochlorothiazide pharmacokinetics and diuretic efficacy.

=== Renal impairment
Chronic kidney disease (CKD) is present in up to 30–40% of hypertensive patients and is both a cause and consequence of poorly controlled blood pressure. Renal function plays a central role in hydrochlorothiazide elimination, with glomerular filtration and active tubular secretion accounting for the majority of drug clearance. In renal impairment, reduced glomerular filtration rate and tubular dysfunction can prolong drug half-life, increase systemic exposure, and blunt the diuretic response due to limited nephron function. 

Importantly, CHF can precipitate renal impairment through the cardiorenal syndrome, in which decreased cardiac output and increased venous congestion compromise renal perfusion and accelerate CKD progression. Thus, patients with concomitant CHF and CKD represent a particularly vulnerable subgroup with altered HCTZ pharmacology. Understanding these changes is essential for appropriate dose adjustment and therapeutic optimization in this population.

=== Hepatic impairment
Liver disease, while less directly linked to hypertension, frequently co-occurs due to shared risk factors such as obesity, diabetes, and metabolic syndrome. Patients with cirrhosis or advanced hepatic impairment may develop secondary renal dysfunction (hepatorenal syndrome), hypoalbuminemia, and altered systemic hemodynamics. Although hydrochlorothiazide undergoes minimal hepatic metabolism, these changes could still indirectly influence hydrochlorothiazide disposition by modifying plasma protein binding, fluid distribution, and renal clearance. The interplay between hepatic and renal impairment further complicates drug dosing and therapeutic response.

Taken together, CHF, renal impairment, and hepatic impairment are highly prevalent in patients receiving hydrochlorothiazide and often coexist in the same individual. Their pathophysiological interactions—particularly the cardiorenal and hepatorenal syndromes—underscore the need for mechanistic modeling approaches to predict how these comorbidities jointly affect drug disposition and response, with the ultimate aim of informing individualized therapy.

== Question, Scope and Hypotheses
This study investigates the effects of dosing and comorbidities on the pharmacokinetics and pharmacodynamics of hydrochlorothiazide using computational modeling. Specifically, a physiologically-based pharmacokinetic/pharmacodynamic (PBPK/PD) model of hydrochlorothiazide was developed to systematically address the following questions:
- What are the effects of different administered doses of hydrochlorothiazide on its pharmacokinetics and pharmacodynamics?
- What are the effects of renal impairment, hepatic impairment, or congestive heart failure on the pharmacokinetics and pharmacodynamics of hydrochlorothiazide?
The objective is to advance the mechanistic understanding of inter-individual variability in blood pressure regulation and diuretic response through hydrochlorothiazide. Such insights could support optimized dosing strategies and improved therapeutic outcomes in diverse patient groups.
