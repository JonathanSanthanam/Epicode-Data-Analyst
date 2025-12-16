Analisi COVID-19 Italia 2020–2025 con Excel
Gruppo F: Jonathan Santhanam (lead tecnico), Giorgia Molari, Cesare Francia, Marc Randrianarisoa, Emanuel Grotteria

Analisi dell’evoluzione di contagi, guarigioni, decessi e vaccinazioni nelle regioni italiane 2020–2025 usando Power Query e Power Pivot in Excel.
Layout stampabile A4 orizzontale, tabelle pivot + grafici coerenti e puliti.

🔗 Download completo (dataset + modello Excel):
https://drive.google.com/drive/folders/1Q5WTwxYBUnw2UIkhPbjcnw6hUw6HoS_9

Obiettivi
Integrare dataset COVID e vaccinazioni per regione.
Pulire e normalizzare le entità (date, regioni, campi).
Costruire KPI e rapporti: contagiati/guariti, contagiati/deceduti, contagiati/vaccinati.
Consegna con dashboard leggibile e stampabile.
Strumenti
Excel (Power Query, Power Pivot, Tabelle/Grafici Pivot)
Dataset
Dati COVID per regione (2020–2022) — Protezione Civile
https://github.com/pcm-dpc/COVID-19/tree/master/dati-regioni
Somministrazioni vaccini (2020–2025) — Developers Italia / Open Data Vaccini
https://github.com/italia/covid19-opendata-vaccini/tree/master/dati
Licenza: CC-BY-4.0 (attribuzione obbligatoria)
Metodologia (sintesi)
Import COVID: Recupera dati → Da cartella (tutti i CSV “dati-regioni”), Combina e trasforma.
Pulizie: normalizzazione data (YYYY-MM-DD), rinomina denominazione_regione → regione, standardizzazione nomi (es. “P.A.” rimossa; “Friuli Venezia Giulia” → “Friuli”; “Trentino Alto Adige” → “Trentino”).
Import Vaccini: CSV annuali 2020–2025 importati singolarmente, poi Accoda in unica tabella; uniformati i nomi regione (Bolzano/Trento → “Trentino”, ecc.).
Calcolo totale_vaccinati = somma di prima_dose, seconda_dose, pregressa_infezione, dose_addizionale, booster_1, booster_2 (e booster_3 se presente).
Merge finale COVID↔Vaccini su data + regione (Left Outer).
Tabelle dimensione: date (distinte) e regioni (distinte).
Modello in Power Pivot: relazioni dati_regioni/vaccinazioni ↔ date e regioni.
Aggregati 2020–2025 per regione (chiave del progetto):
contagiati_2020_2025 = MAX(totale_casi) ✅
guariti_2020_2025 = MAX(dimessi_guariti)
deceduti_2020_2025 = MAX(deceduti)
vaccinati_2020_2025 = MAX(prima_dose) o campo totale scelto
KPI: contagiati/guariti, contagiati/deceduti, contagiati/vaccinati (formattati %).
Output: fogli “Contagiati”, “Guariti”, “Deceduti”, “Maschera”, “Rapporti”, “Efficacia Vaccini”; layout uniforme e pronto stampa.
Problema → Soluzione (post-presentazione)
Problema: contagiati < guariti in alcune viste.
Causa: uso di totale_positivi (attivi) invece di totale_casi (cumulativi).
Fix: ricalcolo dei totali regionali 2020–2025 con MAX(totale_casi).
Risultato coerente: Contagiati > Guariti > Deceduti in tutte le regioni.
Output principali
Classifiche regionali 2020–2025 per contagiati, guariti, deceduti.
Rapporti % tra indicatori (lettura rapida della severità/efficacia).
Dashboard stampabili A4 con logo e formattazione consistente.
Come riprodurre
Clona il repo e scarica i dataset dalle fonti ufficiali (o usa i file nel link Drive).
Apri l’Excel, aggiorna Tutte le connessioni.
Verifica nelle pivot che i campi 2020–2025 siano MAX dei cumulativi.
COVID-19 Analysis Italy 2020–2025 with Excel
Team F: Jonathan Santhanam (technical lead), Giorgia Molari, Cesare Francia, Marc Randrianarisoa, Emanuel Grotteria

Regional analysis of cases, recoveries, deaths, and vaccinations (2020–2025) using Excel Power Query and Power Pivot.
Clean A4 landscape dashboards with consistent pivots and charts.

🔗 Full download (datasets + Excel model):
https://drive.google.com/drive/folders/1Q5WTwxYBUnw2UIkhPbjcnw6hUw6HoS_9

Goals
Integrate COVID and vaccination datasets by region.
Clean/normalize entities (dates, regions, fields).
Build KPIs and ratios: cases/recoveries, cases/deaths, cases/vaccinated.
Deliver a readable, printable dashboard.
Tools
Excel (Power Query, Power Pivot, Pivot Tables/Charts)
Datasets
Regional COVID data (2020–2022) — Italian Civil Protection
https://github.com/pcm-dpc/COVID-19/tree/master/dati-regioni
Vaccination data (2020–2025) — Developers Italia / Open Data Vaccini
https://github.com/italia/covid19-opendata-vaccini/tree/master/dati
License: CC-BY-4.0
Method (summary)
COVID import from folder (all daily CSVs), combine & clean (normalize date, rename denominazione_regione→regione, harmonize region names).
Vaccines import (2020–2025 CSVs), append into a single table; harmonize region names; compute totale_vaccinati.
Final merge on date + regione (Left Outer).
Build date and regioni dimensions; load to Power Pivot and set relationships.
Regional totals 2020–2025 (core logic):
contagiati_2020_2025 = MAX(totale_casi) ✅
guariti_2020_2025 = MAX(dimessi_guariti)
deceduti_2020_2025 = MAX(deceduti)
vaccinati_2020_2025 = MAX(prima_dose) or chosen total field
KPIs: cases/recoveries, cases/deaths, cases/vaccinated (percentage).
Outputs: ranked regional tables + charts, A4-ready dashboards.
Issue → Fix (after presentation)
Issue: recoveries > cases in some views.
Root cause: used totale_positivi (active cases) instead of totale_casi (cumulative).
Fix: recomputed regional totals with MAX(totale_casi).
Final result: Cases > Recoveries > Deaths across all regions.
How to reproduce
Clone the repo and download datasets (or use the Drive bundle).
Open Excel and Refresh All.
Ensure 2020–2025 totals use MAX of cumulative fields in pivots.

