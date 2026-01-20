# Analisi COVID-19 Italia 2020–2025 con Excel — Build Week

**Gruppo F:** Jonathan Santhanam (lead tecnico), Giorgia Molari, Cesare Francia, Marc Randrianarisoa, Emanuel Grotteria

Analisi dell'evoluzione di contagi, guarigioni, decessi e vaccinazioni nelle regioni italiane 2020–2025 usando Power Query e Power Pivot in Excel. Layout stampabile A4 orizzontale, tabelle pivot + grafici coerenti e puliti.

🔗 **Download completo (dataset + modello Excel):** [Google Drive](https://drive.google.com/drive/folders/1Q5WTwxYBUnw2UIkhPbjcnw6hUw6HoS_9)

## Obiettivi

- Integrare dataset COVID e vaccinazioni per regione
- Pulire e normalizzare le entità (date, regioni, campi)
- Costruire KPI e rapporti: *contagiati/guariti*, *contagiati/deceduti*, *contagiati/vaccinati*
- Consegna con dashboard leggibile e stampabile

## Strumenti

- Excel (Power Query, Power Pivot, Tabelle/Grafici Pivot)

## Dataset

| Fonte | Descrizione | Link |
|-------|-------------|------|
| Protezione Civile | Dati COVID per regione (2020–2022) | [GitHub](https://github.com/pcm-dpc/COVID-19/tree/master/dati-regioni) |
| Developers Italia | Somministrazioni vaccini (2020–2025) | [GitHub](https://github.com/italia/covid19-opendata-vaccini/tree/master/dati) |

Licenza: **CC-BY-4.0** (attribuzione obbligatoria)

## Metodologia

### 1. Import COVID
- *Recupera dati → Da cartella* (tutti i CSV "dati-regioni"), *Combina e trasforma*
- Pulizie: normalizzazione `data` (YYYY-MM-DD), rinomina `denominazione_regione` → `regione`
- Standardizzazione nomi (es. "P.A." rimossa; "Friuli Venezia Giulia" → "Friuli"; "Trentino Alto Adige" → "Trentino")

### 2. Import Vaccini
- CSV annuali 2020–2025 importati singolarmente, poi **Accoda** in unica tabella
- Uniformati i nomi regione (Bolzano/Trento → "Trentino", ecc.)
- Calcolo `totale_vaccinati` = somma di `prima_dose`, `seconda_dose`, `pregressa_infezione`, `dose_addizionale`, `booster_1`, `booster_2` (e `booster_3` se presente)

### 3. Merge e Modello
- Merge finale COVID↔Vaccini su `data` + `regione` (Left Outer)
- Tabelle dimensione: `date` (distinte) e `regioni` (distinte)
- Modello in Power Pivot: relazioni `dati_regioni`/`vaccinazioni` ↔ `date` e `regioni`

### 4. Aggregati 2020–2025 per regione
- `contagiati_2020_2025` = **MAX(`totale_casi`)**
- `guariti_2020_2025` = **MAX(`dimessi_guariti`)**
- `deceduti_2020_2025` = **MAX(`deceduti`)**
- `vaccinati_2020_2025` = **MAX(`prima_dose`)** o campo totale scelto

### 5. KPI
- `contagiati/guariti`, `contagiati/deceduti`, `contagiati/vaccinati` (formattati %)

## Problema → Soluzione

| Problema | Causa | Fix |
|----------|-------|-----|
| Contagiati < guariti in alcune viste | Uso di `totale_positivi` (attivi) invece di `totale_casi` (cumulativi) | Ricalcolo con **MAX(`totale_casi`)** |

Risultato coerente: **Contagiati > Guariti > Deceduti** in tutte le regioni.

## Output principali

- Classifiche regionali 2020–2025 per contagiati, guariti, deceduti
- Rapporti % tra indicatori (lettura rapida della severità/efficacia)
- Dashboard stampabili A4 con logo e formattazione consistente
- Fogli: "Contagiati", "Guariti", "Deceduti", "Maschera", "Rapporti", "Efficacia Vaccini"

## Come riprodurre

1. Clona il repo e scarica i dataset dalle fonti ufficiali (o usa i file nel link Drive)
2. Apri l'Excel, aggiorna **Tutte le connessioni**
3. Verifica nelle pivot che i campi 2020–2025 siano **MAX** dei cumulativi

---

# COVID-19 Analysis Italy 2020–2025 with Excel — Build Week

**Team F:** Jonathan Santhanam (technical lead), Giorgia Molari, Cesare Francia, Marc Randrianarisoa, Emanuel Grotteria

Regional analysis of cases, recoveries, deaths, and vaccinations (2020–2025) using Excel Power Query and Power Pivot. Clean A4 landscape dashboards with consistent pivots and charts.

🔗 **Full download (datasets + Excel model):** [Google Drive](https://drive.google.com/drive/folders/1Q5WTwxYBUnw2UIkhPbjcnw6hUw6HoS_9)

## Goals

- Integrate COVID and vaccination datasets by region
- Clean/normalize entities (dates, regions, fields)
- Build KPIs and ratios: *cases/recoveries*, *cases/deaths*, *cases/vaccinated*
- Deliver a readable, printable dashboard

## Tools

- Excel (Power Query, Power Pivot, Pivot Tables/Charts)

## Datasets

| Source | Description | Link |
|--------|-------------|------|
| Italian Civil Protection | Regional COVID data (2020–2022) | [GitHub](https://github.com/pcm-dpc/COVID-19/tree/master/dati-regioni) |
| Developers Italia | Vaccination data (2020–2025) | [GitHub](https://github.com/italia/covid19-opendata-vaccini/tree/master/dati) |

License: **CC-BY-4.0**

## Method

### 1. COVID Import
- Import from folder (all daily CSVs), combine & clean
- Normalize `date`, rename `denominazione_regione` → `regione`
- Harmonize region names

### 2. Vaccines Import
- 2020–2025 CSVs appended into a single table
- Harmonize region names
- Compute `totale_vaccinati`

### 3. Merge and Model
- Final merge on `date` + `regione` (Left Outer)
- Build `date` and `regioni` dimensions
- Load to Power Pivot and set relationships

### 4. Regional Totals 2020–2025
- `contagiati_2020_2025` = **MAX(`totale_casi`)**
- `guariti_2020_2025` = **MAX(`dimessi_guariti`)**
- `deceduti_2020_2025` = **MAX(`deceduti`)**
- `vaccinati_2020_2025` = **MAX(`prima_dose`)** or chosen total field

### 5. KPIs
- `cases/recoveries`, `cases/deaths`, `cases/vaccinated` (percentage)

## Issue → Fix

| Issue | Root Cause | Fix |
|-------|------------|-----|
| Recoveries > cases in some views | Used `totale_positivi` (active cases) instead of `totale_casi` (cumulative) | Recomputed with **MAX(`totale_casi`)** |

Final result: **Cases > Recoveries > Deaths** across all regions.

## Main Outputs

- Ranked regional tables for cases, recoveries, deaths (2020–2025)
- Percentage ratios between indicators
- A4-ready dashboards with consistent formatting
- Sheets: "Contagiati", "Guariti", "Deceduti", "Maschera", "Rapporti", "Efficacia Vaccini"

## How to reproduce

1. Clone the repo and download datasets (or use the Drive bundle)
2. Open Excel and **Refresh All**
3. Ensure 2020–2025 totals use **MAX of cumulative fields** in pivots
