# Week 16 — DAX: Misure, Colonne Calcolate e Time Intelligence

Questa settimana ho approfondito il linguaggio DAX (Data Analysis Expressions) in Power BI. Ho imparato a creare misure e colonne calcolate, comprendendo la differenza fondamentale tra filter context e row context.

Mi sono concentrato sulle funzioni di aggregazione (SUM, COUNTROWS, DISTINCTCOUNT), sulla creazione di tabelle calendario con CALENDARAUTO(), e sulle potenti funzioni di Time Intelligence per analisi temporali (PARALLELPERIOD, TOTALYTD, TOTALQTD, TOTALMTD).

## Competenze sviluppate:

- Distinguere tra misure (on-demand, filter context) e colonne calcolate (persistenti, row context)
- Creare campi chiave compositi con concatenazione (`&`)
- Usare funzioni di conteggio: COUNTROWS, COUNTA, COUNTBLANK, DISTINCTCOUNT
- Creare tabelle calendario con CALENDARAUTO() e colonne temporali (Year, Month, Quarter)
- Implementare misure con SUM, DIVIDE per calcoli percentuali
- Usare CALCULATE per override di contesto con filtri custom
- Applicare funzioni Time Intelligence: PARALLELPERIOD, TOTALYTD, TOTALQTD, TOTALMTD
- Calcolare variazioni MoM (Month over Month) e YoY (Year over Year)
- Usare USERELATIONSHIP per attivare relazioni inattive
- Usare RELATED per recuperare valori da tabelle correlate
- Creare visualizzazioni combo chart (barre + linea) con doppio asse Y

## Sfide risolte:

- Capire quando usare una misura vs una colonna calcolata
- Ordinare correttamente i mesi (MonthName ordinato per Month numerico)
- Gestire il tipo di dato corretto per l'ordinamento (numero intero vs testo)
- Configurare slicer con stile elenco verticale e ordinamento decrescente
- Implementare analisi temporali con periodi paralleli

## Formule DAX principali:

```dax
-- Campo chiave composito
OrderKey = Sales[SalesOrderNumber] & "-" & Sales[SalesOrderLineNumber]

-- Giorni tra ordine e spedizione
Giorni Trascorsi = DATEDIFF(Sales[OrderDate], Sales[ShipDate], DAY)

-- Categorizzazione consegne
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

## File della settimana:

| File | Descrizione |
|------|-------------|
| `1_-_W16D1_-_Teoria.pdf` | Slide teoria: intro DAX, misure vs colonne, X functions |
| `2_-_W16D1_-_Pratica_-__Power_BI_LAB_3.docx` | Esercitazione Lab 3 |
| `3_-_W16D1_-_Pratica_-_Consegna.pbix` | File Power BI Lab 3 completato |
| `4_-_W16D4_-_Teoria.pdf` | Slide teoria: CALCULATE, Time Intelligence, override contesto |
| `5_-_W16D4_-_Pratica_-_Power_BI_LAB_4.docx` | Esercitazione Lab 4 |
| `6_-_W16D4_-_Pratica_-_Power_BI_LAB_4_-_Consegna.pbix` | File Power BI Lab 4 completato |

## Highlight:

La funzione CALCULATE è il cuore di DAX — permette di modificare il contesto dei filtri per rispondere a domande analitiche complesse come "quanto incidono le vendite di Bikes sul totale?" o "come sono andate le vendite rispetto allo stesso mese dell'anno scorso?".

---

# Week 16 — DAX: Measures, Calculated Columns and Time Intelligence

This week I deepened my knowledge of DAX (Data Analysis Expressions) in Power BI. I learned to create measures and calculated columns, understanding the fundamental difference between filter context and row context.

I focused on aggregation functions (SUM, COUNTROWS, DISTINCTCOUNT), creating calendar tables with CALENDARAUTO(), and the powerful Time Intelligence functions for temporal analysis (PARALLELPERIOD, TOTALYTD, TOTALQTD, TOTALMTD).

## Skills developed:

- Distinguishing between measures (on-demand, filter context) and calculated columns (persistent, row context)
- Creating composite key fields with concatenation (`&`)
- Using count functions: COUNTROWS, COUNTA, COUNTBLANK, DISTINCTCOUNT
- Creating calendar tables with CALENDARAUTO() and temporal columns (Year, Month, Quarter)
- Implementing measures with SUM, DIVIDE for percentage calculations
- Using CALCULATE for context override with custom filters
- Applying Time Intelligence functions: PARALLELPERIOD, TOTALYTD, TOTALQTD, TOTALMTD
- Calculating MoM (Month over Month) and YoY (Year over Year) variations
- Using USERELATIONSHIP to activate inactive relationships
- Using RELATED to retrieve values from related tables
- Creating combo chart visualizations (bars + line) with dual Y-axis

## Challenges overcome:

- Understanding when to use a measure vs a calculated column
- Correctly sorting months (MonthName sorted by numeric Month)
- Managing correct data type for sorting (integer vs text)
- Configuring slicer with vertical list style and descending order
- Implementing temporal analysis with parallel periods

## Key DAX formulas:

```dax
-- Composite key field
OrderKey = Sales[SalesOrderNumber] & "-" & Sales[SalesOrderLineNumber]

-- Days between order and shipment
Days Elapsed = DATEDIFF(Sales[OrderDate], Sales[ShipDate], DAY)

-- Delivery categorization
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

## Week files:

| File | Description |
|------|-------------|
| `1_-_W16D1_-_Teoria.pdf` | Theory slides: DAX intro, measures vs columns, X functions |
| `2_-_W16D1_-_Pratica_-__Power_BI_LAB_3.docx` | Lab 3 exercise |
| `3_-_W16D1_-_Pratica_-_Consegna.pbix` | Completed Power BI Lab 3 file |
| `4_-_W16D4_-_Teoria.pdf` | Theory slides: CALCULATE, Time Intelligence, context override |
| `5_-_W16D4_-_Pratica_-_Power_BI_LAB_4.docx` | Lab 4 exercise |
| `6_-_W16D4_-_Pratica_-_Power_BI_LAB_4_-_Consegna.pbix` | Completed Power BI Lab 4 file |

## Highlight:

The CALCULATE function is the heart of DAX — it allows modifying the filter context to answer complex analytical questions like "what percentage of total sales come from Bikes?" or "how did sales perform compared to the same month last year?".
