# Power BI Module — Business Intelligence & Data Visualization

Questo modulo copre l'intero percorso di Power BI: dall'acquisizione e trasformazione dei dati con Power Query, alla modellazione con Star Schema, fino all'analisi avanzata con DAX e Time Intelligence.

---

## Struttura del modulo

| Settimana | Argomento | Contenuto |
|-----------|-----------|-----------|
| Week 15 | Introduzione & Power Query | Ecosistema Power BI, Import vs DirectQuery, ETL con Power Query Editor |
| Week 15 | Data Modeling | Star Schema, relazioni, cardinalità, direzione filtri |
| Week 16 | DAX Fundamentals | Misure vs colonne calcolate, filter context vs row context, aggregazioni |
| Week 16 | Time Intelligence | CALCULATE, PARALLELPERIOD, TOTALYTD, analisi MoM/YoY |

---

## Competenze sviluppate

### Data Acquisition & Transformation (Power Query)
- Connettere sorgenti dati (Excel, CSV, Database, Folder)
- Profilare dati con Column Quality, Distribution e Profile
- Pulire dati: rimuovere colonne, filtrare righe, sostituire valori
- Combinare tabelle con Append e Merge
- Scegliere tra Import mode e DirectQuery mode

### Data Modeling
- Progettare Star Schema (Fact tables e Dimension tables)
- Creare relazioni con cardinalità corretta (1:\*, \*:1, 1:1, \*:\*)
- Gestire direzione di propagazione filtri (single vs both)
- Definire gerarchie per drill-down
- Categorizzare campi geografici per mappe
- Gestire Role-playing Dimensions con relazioni inattive

### DAX (Data Analysis Expressions)
- Distinguere misure (filter context) e colonne calcolate (row context)
- Creare campi chiave compositi con concatenazione (&)
- Usare funzioni di aggregazione: SUM, COUNTROWS, DISTINCTCOUNT, COUNTA
- Implementare calcoli con DIVIDE per gestire divisioni per zero
- Usare RELATED per recuperare valori da tabelle correlate
- Creare tabelle calendario con CALENDARAUTO()

### Time Intelligence
- Usare CALCULATE per override del contesto filtri
- Applicare PARALLELPERIOD per confronti temporali
- Implementare TOTALYTD, TOTALQTD, TOTALMTD
- Calcolare variazioni MoM (Month over Month) e YoY (Year over Year)
- Usare USERELATIONSHIP per attivare relazioni inattive

### Visualization
- Creare combo chart (barre + linea) con doppio asse Y
- Configurare slicer con ordinamento personalizzato
- Ordinare campi testo per colonna numerica (es. MonthName per Month)

---

## Formule DAX principali

```dax
-- Campo chiave composito
OrderKey = Sales[SalesOrderNumber] & "-" & Sales[SalesOrderLineNumber]

-- Giorni tra ordine e spedizione
Giorni Trascorsi = DATEDIFF(Sales[OrderDate], Sales[ShipDate], DAY)

-- Categorizzazione condizionale
Delivery Status = IF(Sales[Giorni Trascorsi] <= 2, "In Time",
    IF(Sales[Giorni Trascorsi] <= 6, "Acceptable", "Delay"))

-- Tabella calendario automatica
Calendar = CALENDARAUTO()

-- Colonne calendario
Year = YEAR(Calendar[Date])
Month = MONTH(Calendar[Date])
MonthName = FORMAT(Calendar[Date], "MMMM")
Quarter = QUARTER(Calendar[Date])

-- Misure di aggregazione
Total Sales = SUM(Sales[SalesAmount])
ProfitMargin = DIVIDE(SUM(Sales[Profit]), [Total Sales])

-- Time Intelligence
SalesPY = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
SalesPM = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -1, MONTH))
SalesMoM = DIVIDE([TotalSales] - [SalesPM], [SalesPM])
TotalYTD = TOTALYTD([TotalSales], 'Calendar'[Date])
```

---

## File del modulo

### Week 15 — Power BI Intro & Data Modeling

| File | Descrizione |
|------|-------------|
| `1_-_W15D1_-_Teoria.pdf` | Slide teoria: intro Power BI, storage modes, Power Query |
| `2_-_W15D1_-_Pratica_-_Power_BI_LAB_1.docx` | Esercitazione Lab 1 |
| `3_-_W15D1_-_Materiali_-_TrainingData1.xlsx` | Dataset per esercitazione |
| `4_-_W15D1_-_Consegna_-_Analisi_Vendite.pbix` | File Power BI Lab 1 completato |
| `5_-_W15D2_-_Teoria.pdf` | Slide teoria: Star Schema, relazioni, cardinalità |
| `6_-_W15D2_-_Pratica_-_Power_BI_LAB_2.docx` | Esercitazione Lab 2 |
| `7_-_W15D4_-_Pratica.pbix` | File Power BI Lab 2 completato |

### Week 16 — DAX & Time Intelligence

| File | Descrizione |
|------|-------------|
| `1_-_W16D1_-_Teoria.pdf` | Slide teoria: DAX intro, misure vs colonne, X functions |
| `2_-_W16D1_-_Pratica_-_Power_BI_LAB_3.docx` | Esercitazione Lab 3 |
| `3_-_W16D1_-_Pratica_-_Consegna.pbix` | File Power BI Lab 3 completato |
| `4_-_W16D4_-_Teoria.pdf` | Slide teoria: CALCULATE, Time Intelligence |
| `5_-_W16D4_-_Pratica_-_Power_BI_LAB_4.docx` | Esercitazione Lab 4 |
| `6_-_W16D4_-_Pratica_-_Power_BI_LAB_4_-_Consegna.pbix` | File Power BI Lab 4 completato |

---

## Concetti chiave

**Star Schema**: Modello dati con tabella Fact centrale (eventi/transazioni da misurare) circondata da Dimension tables (prospettive di analisi per filtrare).

**Filter Context vs Row Context**: Le misure operano nel filter context (valutate dinamicamente in base ai filtri attivi), le colonne calcolate nel row context (calcolate riga per riga al refresh).

**CALCULATE**: Cuore di DAX — permette di modificare il filter context per rispondere a domande analitiche complesse.

**Time Intelligence**: Funzioni DAX che richiedono una tabella calendario marcata come Date Table per confronti temporali (YTD, periodi paralleli, variazioni).

---
---

# Power BI Module — Business Intelligence & Data Visualization (EN)

This module covers the complete Power BI journey: from data acquisition and transformation with Power Query, to modeling with Star Schema, to advanced analysis with DAX and Time Intelligence.

---

## Module structure

| Week | Topic | Content |
|------|-------|---------|
| Week 15 | Introduction & Power Query | Power BI ecosystem, Import vs DirectQuery, ETL with Power Query Editor |
| Week 15 | Data Modeling | Star Schema, relationships, cardinality, filter direction |
| Week 16 | DAX Fundamentals | Measures vs calculated columns, filter context vs row context, aggregations |
| Week 16 | Time Intelligence | CALCULATE, PARALLELPERIOD, TOTALYTD, MoM/YoY analysis |

---

## Skills developed

### Data Acquisition & Transformation (Power Query)
- Connecting data sources (Excel, CSV, Database, Folder)
- Profiling data with Column Quality, Distribution and Profile
- Cleaning data: removing columns, filtering rows, replacing values
- Combining tables with Append and Merge
- Choosing between Import mode and DirectQuery mode

### Data Modeling
- Designing Star Schema (Fact tables and Dimension tables)
- Creating relationships with correct cardinality (1:\*, \*:1, 1:1, \*:\*)
- Managing filter propagation direction (single vs both)
- Defining hierarchies for drill-down
- Categorizing geographic fields for maps
- Handling Role-playing Dimensions with inactive relationships

### DAX (Data Analysis Expressions)
- Distinguishing measures (filter context) and calculated columns (row context)
- Creating composite key fields with concatenation (&)
- Using aggregation functions: SUM, COUNTROWS, DISTINCTCOUNT, COUNTA
- Implementing calculations with DIVIDE to handle division by zero
- Using RELATED to retrieve values from related tables
- Creating calendar tables with CALENDARAUTO()

### Time Intelligence
- Using CALCULATE for filter context override
- Applying PARALLELPERIOD for temporal comparisons
- Implementing TOTALYTD, TOTALQTD, TOTALMTD
- Calculating MoM (Month over Month) and YoY (Year over Year) variations
- Using USERELATIONSHIP to activate inactive relationships

### Visualization
- Creating combo charts (bars + line) with dual Y-axis
- Configuring slicers with custom sorting
- Sorting text fields by numeric column (e.g., MonthName by Month)

---

## Key DAX formulas

```dax
-- Composite key field
OrderKey = Sales[SalesOrderNumber] & "-" & Sales[SalesOrderLineNumber]

-- Days between order and shipment
Days Elapsed = DATEDIFF(Sales[OrderDate], Sales[ShipDate], DAY)

-- Conditional categorization
Delivery Status = IF(Sales[Days Elapsed] <= 2, "In Time",
    IF(Sales[Days Elapsed] <= 6, "Acceptable", "Delay"))

-- Automatic calendar table
Calendar = CALENDARAUTO()

-- Calendar columns
Year = YEAR(Calendar[Date])
Month = MONTH(Calendar[Date])
MonthName = FORMAT(Calendar[Date], "MMMM")
Quarter = QUARTER(Calendar[Date])

-- Aggregation measures
Total Sales = SUM(Sales[SalesAmount])
ProfitMargin = DIVIDE(SUM(Sales[Profit]), [Total Sales])

-- Time Intelligence
SalesPY = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
SalesPM = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -1, MONTH))
SalesMoM = DIVIDE([TotalSales] - [SalesPM], [SalesPM])
TotalYTD = TOTALYTD([TotalSales], 'Calendar'[Date])
```

---

## Module files

### Week 15 — Power BI Intro & Data Modeling

| File | Description |
|------|-------------|
| `1_-_W15D1_-_Teoria.pdf` | Theory slides: Power BI intro, storage modes, Power Query |
| `2_-_W15D1_-_Pratica_-_Power_BI_LAB_1.docx` | Lab 1 exercise |
| `3_-_W15D1_-_Materiali_-_TrainingData1.xlsx` | Dataset for exercise |
| `4_-_W15D1_-_Consegna_-_Analisi_Vendite.pbix` | Completed Power BI Lab 1 file |
| `5_-_W15D2_-_Teoria.pdf` | Theory slides: Star Schema, relationships, cardinality |
| `6_-_W15D2_-_Pratica_-_Power_BI_LAB_2.docx` | Lab 2 exercise |
| `7_-_W15D4_-_Pratica.pbix` | Completed Power BI Lab 2 file |

### Week 16 — DAX & Time Intelligence

| File | Description |
|------|-------------|
| `1_-_W16D1_-_Teoria.pdf` | Theory slides: DAX intro, measures vs columns, X functions |
| `2_-_W16D1_-_Pratica_-_Power_BI_LAB_3.docx` | Lab 3 exercise |
| `3_-_W16D1_-_Pratica_-_Consegna.pbix` | Completed Power BI Lab 3 file |
| `4_-_W16D4_-_Teoria.pdf` | Theory slides: CALCULATE, Time Intelligence |
| `5_-_W16D4_-_Pratica_-_Power_BI_LAB_4.docx` | Lab 4 exercise |
| `6_-_W16D4_-_Pratica_-_Power_BI_LAB_4_-_Consegna.pbix` | Completed Power BI Lab 4 file |

---

## Key concepts

**Star Schema**: Data model with central Fact table (events/transactions to measure) surrounded by Dimension tables (analysis perspectives for filtering).

**Filter Context vs Row Context**: Measures operate in filter context (evaluated dynamically based on active filters), calculated columns in row context (calculated row by row at refresh).

**CALCULATE**: Heart of DAX — allows modifying filter context to answer complex analytical questions.

**Time Intelligence**: DAX functions requiring a calendar table marked as Date Table for temporal comparisons (YTD, parallel periods, variations).
