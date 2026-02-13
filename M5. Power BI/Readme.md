Power BI Module — Business Intelligence & Data Visualization

Questo modulo copre l'intero percorso di Power BI: dall'acquisizione e trasformazione dei dati con Power Query, alla modellazione con Star Schema, all'analisi avanzata con DAX e Time Intelligence, alla progettazione di report con data visualization, storytelling e UX, fino alla pubblicazione tramite Power BI Service. Il modulo si chiude con un'introduzione ai fondamenti dell'Intelligenza Artificiale e un'esercitazione finale end-to-end.

Struttura del modulo

| Settimana | Argomento | Contenuto |
|-----------|-----------|-----------|
| Week 15 | Introduzione & Power Query | Ecosistema Power BI, Import vs DirectQuery, ETL con Power Query Editor |
| Week 15 | Data Modeling | Star Schema, relazioni, cardinalità, direzione filtri |
| Week 16 | DAX Fundamentals | Misure vs colonne calcolate, filter context vs row context, aggregazioni |
| Week 16 | Time Intelligence | CALCULATE, PARALLELPERIOD, TOTALYTD, analisi MoM/YoY |
| Week 17 | Data Visualization & Report Design | Scelta visualizzazioni, storytelling, filtri avanzati, drill-through, bookmark |
| Week 17 | Data Modeling Avanzato | Relazioni many-to-many, tabelle bridge, USERELATIONSHIP |
| Week 18 | Power BI Service | Workspace, ruoli, gateway, aggiornamento dataset, data lineage |
| Week 18 | Storytelling Avanzato | Time Analysis, Gauge dinamici, toggle Table/Matrix, parametri |
| Week 18 | Cenni di AI | Machine Learning, Deep Learning, LLM, ChatGPT per EDA |
| Week 18 | Esercitazione Finale | Progetto end-to-end su dataset Olist (e-commerce brasiliano) |

Competenze sviluppate

Data Acquisition & Transformation (Power Query)
- Connettere sorgenti dati (Excel, CSV, Database, Folder)
- Profilare dati con Column Quality, Distribution e Profile
- Pulire dati: rimuovere colonne, filtrare righe, sostituire valori
- Combinare tabelle con Append e Merge
- Scegliere tra Import mode e DirectQuery mode

Data Modeling
- Progettare Star Schema (Fact tables e Dimension tables)
- Creare relazioni con cardinalità corretta (1:*, *:1, 1:1, *:*)
- Gestire direzione di propagazione filtri (single vs both)
- Definire gerarchie per drill-down
- Categorizzare campi geografici per mappe
- Gestire Role-playing Dimensions con relazioni inattive
- Modellare relazioni many-to-many con tabelle bridge (SalespersonRegion)
- Usare USERELATIONSHIP per attivare relazioni inattive

DAX (Data Analysis Expressions)
- Distinguere misure (filter context) e colonne calcolate (row context)
- Creare campi chiave compositi con concatenazione (&)
- Usare funzioni di aggregazione: SUM, COUNTROWS, DISTINCTCOUNT, COUNTA
- Implementare calcoli con DIVIDE per gestire divisioni per zero
- Usare RELATED per recuperare valori da tabelle correlate
- Creare tabelle calendario con CALENDARAUTO()
- Calcolare valori massimi dinamici per Gauge Chart

Time Intelligence
- Usare CALCULATE per override del contesto filtri
- Applicare PARALLELPERIOD per confronti temporali (YoY, MoM)
- Implementare TOTALYTD, TOTALQTD, TOTALMTD
- Calcolare variazioni MoM (Month over Month) e YoY (Year over Year)
- Usare USERELATIONSHIP per attivare relazioni inattive
- Visualizzare variazione percentuale come etichetta dinamica nei grafici

Data Visualization, Storytelling & UX
- Scegliere la visualizzazione corretta in base al tipo di analisi (Table, Matrix, Scatter, Stacked, Combo chart)
- Usare Table per dati flat e Matrix per gerarchie con drill-down/drill-up
- Creare grafici combinati (Line and Clustered Column) per metriche con scale diverse
- Implementare Decomposition Tree per analisi multidimensionale
- Usare Scatter Chart e Bubble Chart per correlazioni e anomalie
- Aggiungere linee statistiche (media, mediana) tramite pannello Analytics
- Utilizzare la funzionalità Q&A per interrogare i dati in linguaggio naturale
- Progettare layout di slicer efficaci (laterali vs header con dropdown)
- Gestire la propagazione dei filtri tramite Modifica Interazioni
- Sincronizzare slicer tra pagine diverse (con controllo visibilità)
- Implementare Drill-through per navigazione da aggregato a dettaglio
- Creare Custom Tooltip per arricchire le visualizzazioni
- Configurare Bookmark per salvare stati del report
- Usare Bottoni per navigazione pagine, Q&A e bookmark
- Implementare toggle Table/Matrix tramite bottoni e bookmark
- Creare Gauge Chart con valore massimo dinamico
- Implementare parametri dinamici per controllo interattivo

Power BI Service & Distribuzione
- Comprendere l'architettura Power BI Service e il flusso Desktop → Service
- Creare e configurare Workspace per la collaborazione
- Gestire accessi e assegnare ruoli (Amministratore, Membro, Collaboratore, Visualizzatore)
- Configurare il Gateway per sorgenti dati on-premises
- Schedulare l'aggiornamento automatico del dataset
- Visualizzare la Data Lineage (sorgenti → semantic model → report)

Cenni di AI per Data Analyst
- Comprendere la differenza tra AI, Machine Learning e Deep Learning
- Conoscere gli algoritmi fondamentali: Linear Regression, Decision Tree, K-Means
- Comprendere l'architettura dei LLM (Transformer, Embeddings, Attention)
- Identificare il ruolo del Data Analyst nella pipeline AI: raccolta dati, pulizia, feature engineering, split train/validation/test
- Utilizzare LLM (ChatGPT) per Exploratory Data Analysis

Formule DAX principali

```
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

-- Misura per vendite salesperson (relazione inattiva forzata)
SalespersonSales = CALCULATE([TotalSales], USERELATIONSHIP(Salesperson[EmployeeKey], Sales[EmployeeKey]))

-- Time Intelligence
SalesPY = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
SalesPM = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -1, MONTH))
SalesMoM = DIVIDE([TotalSales] - [SalesPM], [SalesPM])
SalesVariation% = DIVIDE([TotalSales] - [SalesPY], [SalesPY])
TotalYTD = TOTALYTD([TotalSales], 'Calendar'[Date])
TransactionsYTD = TOTALYTD([TotalTransactions], 'Calendar'[Date])

-- Valore massimo dinamico per Gauge Chart
Valore Massimo = MAX([Sales PY], [Sales]) * 1.10

-- Esercitazione Finale (Olist)
Revenue = SUM(olist_order_items_dataset[price]) + SUM(olist_order_items_dataset[freight_value])
Orders = COUNTROWS(olist_order_items_dataset)
Orders PY = CALCULATE([Orders], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
Revenue PY = CALCULATE([Revenue], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
Orders Variation % = DIVIDE([Orders] - [Orders PY], [Orders PY])
Revenue Variation % = DIVIDE([Revenue] - [Revenue PY], [Revenue PY])
```

File del modulo

Week 15 — Power BI Intro & Data Modeling

| File | Descrizione |
|------|-------------|
| 1_-_W15D1_-_Teoria.pdf | Slide teoria: intro Power BI, storage modes, Power Query |
| 2_-_W15D1_-_Pratica_-_Power_BI_LAB_1.docx | Esercitazione Lab 1 |
| 3_-_W15D1_-_Materiali_-_TrainingData1.xlsx | Dataset per esercitazione |
| 4_-_W15D1_-_Consegna_-_Analisi_Vendite.pbix | File Power BI Lab 1 completato |
| 5_-_W15D2_-_Teoria.pdf | Slide teoria: Star Schema, relazioni, cardinalità |
| 6_-_W15D2_-_Pratica_-_Power_BI_LAB_2.docx | Esercitazione Lab 2 |
| 7_-_W15D4_-_Pratica.pbix | File Power BI Lab 2 completato |

Week 16 — DAX & Time Intelligence

| File | Descrizione |
|------|-------------|
| 1_-_W16D1_-_Teoria.pdf | Slide teoria: DAX intro, misure vs colonne, X functions |
| 2_-_W16D1_-_Pratica_-_Power_BI_LAB_3.docx | Esercitazione Lab 3 |
| 3_-_W16D1_-_Pratica_-_Consegna.pbix | File Power BI Lab 3 completato |
| 4_-_W16D4_-_Teoria.pdf | Slide teoria: CALCULATE, Time Intelligence |
| 5_-_W16D4_-_Pratica_-_Power_BI_LAB_4.docx | Esercitazione Lab 4 |
| 6_-_W16D4_-_Pratica_-_Power_BI_LAB_4_-_Consegna.pbix | File Power BI Lab 4 completato |

Week 17 — Data Visualization, Report Design & UX

| File | Descrizione |
|------|-------------|
| 1_-W17D5-_Teoria.pdf | Slide teoria: data viz, storytelling, scelta visualizzazioni, parametri |
| 2_-W17D1-Pratica-_Power_BI_LAB_5.docx | Esercitazione Lab 5: DAX e override di contesto |
| 3_-W17D1-Pratica__extra_-_Power_BI_LAB_6.docx | Esercitazione Lab 6: Data Modeling Challenge (many-to-many) |
| 4_-W17D1-Pratica-_Consegna.pbix | File Power BI Lab 5/6 completato |
| 5_-W17D4-_Teoria.pdf | Slide teoria: filtri, slicer, interazioni, sync, drill-through, bookmark, bottoni |
| 6_-W17D4-Pratica-_Power_BI_LAB_7.docx | Esercitazione Lab 7: Storytelling e report design |
| 7_-W17D4-Pratica-Power_BI_LAB_7-_Consegna.pbix | File Power BI Lab 7 completato |

Week 18 — Power BI Service, Storytelling Avanzato & Cenni di AI

| File | Descrizione |
|------|-------------|
| 1_-_W18D1_-_Teoria.pdf | Slide teoria: Power BI Service, workspace, gateway, aggiornamento dataset, data lineage |
| 2_-_W18D1_-_Pratica_-_Power_BI_LAB_8.docx | Esercitazione Lab 8: Time Analysis, Gauge Chart, fatturato cumulato |
| 3_-_W18D1_-_Pratica__Extra__-_Power_BI_LAB_9.docx | Esercitazione Lab 9: Pagina dettaglio, toggle Table/Matrix, tooltip, parametri dinamici |
| 4_-_W18D1_-_Pratica_-_Power_BI_LAB_8_e_9_-_Consegna.pbix | File Power BI Lab 8/9 completato |
| 5_-_W18D4_-_Teoria.pdf | Slide teoria: Cenni di AI, Machine Learning, Deep Learning, LLM, ChatGPT per EDA |

Esercitazione Finale — Olist E-Commerce Analysis

| File | Descrizione |
|------|-------------|
| 6_-_Esercitazione_di_fine_modulo.docx | Consegna con scenario, requisiti e istruzioni |
| W18D4_-_Esercitazione_finale.pbix | File Power BI completato con report finale |

Concetti chiave

**Star Schema**: Modello dati con tabella Fact centrale (eventi/transazioni da misurare) circondata da Dimension tables (prospettive di analisi per filtrare).

**Filter Context vs Row Context**: Le misure operano nel filter context (valutate dinamicamente in base ai filtri attivi), le colonne calcolate nel row context (calcolate riga per riga al refresh).

**CALCULATE**: Cuore di DAX — permette di modificare il filter context per rispondere a domande analitiche complesse.

**Time Intelligence**: Funzioni DAX che richiedono una tabella calendario marcata come Date Table per confronti temporali (YTD, periodi paralleli, variazioni).

**Edit Interactions**: Controllo granulare su quali visualizzazioni rispondono a quali slicer — separa un report funzionale da uno professionale.

**Many-to-Many con Bridge Table**: Pattern di modellazione per relazioni complesse (es. agenti ↔ territori) che richiede una tabella ponte e propagazione bidirezionale dei filtri.

**Power BI Service Workflow**: Flusso completo dalla progettazione in Desktop alla distribuzione: workspace → gestione accessi/ruoli → configurazione gateway → schedulazione aggiornamento.

**Storytelling & UX**: La progettazione di un report efficace richiede attenzione al posizionamento degli slicer, gestione delle interazioni tra visualizzazioni, sincronizzazione dei filtri tra pagine e navigazione intuitiva con drill-through, bookmark e bottoni.

**Il ruolo del Data Analyst nell'AI**: Le competenze di data cleaning, EDA e feature engineering sono propedeutiche all'addestramento degli algoritmi di Machine Learning — il Data Analyst è il ponte tra i dati grezzi e il modello.

---

Power BI Module — Business Intelligence & Data Visualization (EN)

This module covers the complete Power BI journey: from data acquisition and transformation with Power Query, to modeling with Star Schema, to advanced analysis with DAX and Time Intelligence, to report design with data visualization, storytelling and UX, to publishing through Power BI Service. The module closes with an introduction to AI fundamentals and an end-to-end final exercise.

Module structure

| Week | Topic | Content |
|------|-------|---------|
| Week 15 | Introduction & Power Query | Power BI ecosystem, Import vs DirectQuery, ETL with Power Query Editor |
| Week 15 | Data Modeling | Star Schema, relationships, cardinality, filter direction |
| Week 16 | DAX Fundamentals | Measures vs calculated columns, filter context vs row context, aggregations |
| Week 16 | Time Intelligence | CALCULATE, PARALLELPERIOD, TOTALYTD, MoM/YoY analysis |
| Week 17 | Data Visualization & Report Design | Choosing visualizations, storytelling, advanced filters, drill-through, bookmarks |
| Week 17 | Advanced Data Modeling | Many-to-many relationships, bridge tables, USERELATIONSHIP |
| Week 18 | Power BI Service | Workspaces, roles, gateway, dataset refresh, data lineage |
| Week 18 | Advanced Storytelling | Time Analysis, dynamic Gauge, Table/Matrix toggle, parameters |
| Week 18 | AI Fundamentals | Machine Learning, Deep Learning, LLM, ChatGPT for EDA |
| Week 18 | Final Exercise | End-to-end project on Olist dataset (Brazilian e-commerce) |

Skills developed

Data Acquisition & Transformation (Power Query)
- Connecting data sources (Excel, CSV, Database, Folder)
- Profiling data with Column Quality, Distribution and Profile
- Cleaning data: removing columns, filtering rows, replacing values
- Combining tables with Append and Merge
- Choosing between Import mode and DirectQuery mode

Data Modeling
- Designing Star Schema (Fact tables and Dimension tables)
- Creating relationships with correct cardinality (1:*, *:1, 1:1, *:*)
- Managing filter propagation direction (single vs both)
- Defining hierarchies for drill-down
- Categorizing geographic fields for maps
- Handling Role-playing Dimensions with inactive relationships
- Modeling many-to-many relationships with bridge tables (SalespersonRegion)
- Using USERELATIONSHIP to activate inactive relationships

DAX (Data Analysis Expressions)
- Distinguishing measures (filter context) and calculated columns (row context)
- Creating composite key fields with concatenation (&)
- Using aggregation functions: SUM, COUNTROWS, DISTINCTCOUNT, COUNTA
- Implementing calculations with DIVIDE to handle division by zero
- Using RELATED to retrieve values from related tables
- Creating calendar tables with CALENDARAUTO()
- Calculating dynamic maximum values for Gauge Charts

Time Intelligence
- Using CALCULATE for filter context override
- Applying PARALLELPERIOD for temporal comparisons (YoY, MoM)
- Implementing TOTALYTD, TOTALQTD, TOTALMTD
- Calculating MoM (Month over Month) and YoY (Year over Year) variations
- Using USERELATIONSHIP to activate inactive relationships
- Displaying percentage variation as dynamic labels in charts

Data Visualization, Storytelling & UX
- Choosing the correct visualization based on analysis type (Table, Matrix, Scatter, Stacked, Combo chart)
- Using Table for flat data and Matrix for hierarchies with drill-down/drill-up
- Creating combo charts (Line and Clustered Column) for metrics with different scales
- Implementing Decomposition Tree for multidimensional analysis
- Using Scatter Chart and Bubble Chart for correlations and anomalies
- Adding statistical lines (average, median) via the Analytics pane
- Using Q&A functionality to query data in natural language
- Designing effective slicer layouts (sidebar vs header with dropdown)
- Managing filter propagation through Edit Interactions
- Synchronizing slicers across pages (with visibility control)
- Implementing Drill-through for aggregate-to-detail navigation
- Creating Custom Tooltips to enrich visualizations
- Configuring Bookmarks to save report states
- Using Buttons for page navigation, Q&A and bookmarks
- Implementing Table/Matrix toggle via buttons and bookmarks
- Creating Gauge Charts with dynamic maximum value
- Implementing dynamic parameters for interactive control

Power BI Service & Distribution
- Understanding Power BI Service architecture and the Desktop → Service workflow
- Creating and configuring Workspaces for collaboration
- Managing access and assigning roles (Admin, Member, Contributor, Viewer)
- Configuring the Gateway for on-premises data sources
- Scheduling automatic dataset refresh
- Visualizing Data Lineage (sources → semantic model → report)

AI Fundamentals for Data Analysts
- Understanding the difference between AI, Machine Learning, and Deep Learning
- Knowing fundamental algorithms: Linear Regression, Decision Tree, K-Means
- Understanding LLM architecture (Transformer, Embeddings, Attention)
- Identifying the Data Analyst's role in the AI pipeline: data collection, cleaning, feature engineering, train/validation/test split
- Using LLMs (ChatGPT) for Exploratory Data Analysis

Key DAX formulas

```
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

-- Salesperson sales measure (forcing inactive relationship)
SalespersonSales = CALCULATE([TotalSales], USERELATIONSHIP(Salesperson[EmployeeKey], Sales[EmployeeKey]))

-- Time Intelligence
SalesPY = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
SalesPM = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -1, MONTH))
SalesMoM = DIVIDE([TotalSales] - [SalesPM], [SalesPM])
SalesVariation% = DIVIDE([TotalSales] - [SalesPY], [SalesPY])
TotalYTD = TOTALYTD([TotalSales], 'Calendar'[Date])
TransactionsYTD = TOTALYTD([TotalTransactions], 'Calendar'[Date])

-- Dynamic maximum value for Gauge Chart
Valore Massimo = MAX([Sales PY], [Sales]) * 1.10

-- Final Exercise (Olist)
Revenue = SUM(olist_order_items_dataset[price]) + SUM(olist_order_items_dataset[freight_value])
Orders = COUNTROWS(olist_order_items_dataset)
Orders PY = CALCULATE([Orders], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
Revenue PY = CALCULATE([Revenue], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
Orders Variation % = DIVIDE([Orders] - [Orders PY], [Orders PY])
Revenue Variation % = DIVIDE([Revenue] - [Revenue PY], [Revenue PY])
```

Module files

Week 15 — Power BI Intro & Data Modeling

| File | Description |
|------|-------------|
| 1_-_W15D1_-_Teoria.pdf | Theory slides: Power BI intro, storage modes, Power Query |
| 2_-_W15D1_-_Pratica_-_Power_BI_LAB_1.docx | Lab 1 exercise |
| 3_-_W15D1_-_Materiali_-_TrainingData1.xlsx | Dataset for exercise |
| 4_-_W15D1_-_Consegna_-_Analisi_Vendite.pbix | Completed Power BI Lab 1 file |
| 5_-_W15D2_-_Teoria.pdf | Theory slides: Star Schema, relationships, cardinality |
| 6_-_W15D2_-_Pratica_-_Power_BI_LAB_2.docx | Lab 2 exercise |
| 7_-_W15D4_-_Pratica.pbix | Completed Power BI Lab 2 file |

Week 16 — DAX & Time Intelligence

| File | Description |
|------|-------------|
| 1_-_W16D1_-_Teoria.pdf | Theory slides: DAX intro, measures vs columns, X functions |
| 2_-_W16D1_-_Pratica_-_Power_BI_LAB_3.docx | Lab 3 exercise |
| 3_-_W16D1_-_Pratica_-_Consegna.pbix | Completed Power BI Lab 3 file |
| 4_-_W16D4_-_Teoria.pdf | Theory slides: CALCULATE, Time Intelligence |
| 5_-_W16D4_-_Pratica_-_Power_BI_LAB_4.docx | Lab 4 exercise |
| 6_-_W16D4_-_Pratica_-_Power_BI_LAB_4_-_Consegna.pbix | Completed Power BI Lab 4 file |

Week 17 — Data Visualization, Report Design & UX

| File | Description |
|------|-------------|
| 1_-W17D5-_Teoria.pdf | Theory slides: data viz, storytelling, choosing visualizations, parameters |
| 2_-W17D1-Pratica-_Power_BI_LAB_5.docx | Lab 5 exercise: DAX and context override |
| 3_-W17D1-Pratica__extra_-_Power_BI_LAB_6.docx | Lab 6 exercise: Data Modeling Challenge (many-to-many) |
| 4_-W17D1-Pratica-_Consegna.pbix | Completed Power BI Lab 5/6 file |
| 5_-W17D4-_Teoria.pdf | Theory slides: filters, slicers, interactions, sync, drill-through, bookmarks, buttons |
| 6_-W17D4-Pratica-_Power_BI_LAB_7.docx | Lab 7 exercise: Storytelling and report design |
| 7_-W17D4-Pratica-Power_BI_LAB_7-_Consegna.pbix | Completed Power BI Lab 7 file |

Week 18 — Power BI Service, Advanced Storytelling & AI Fundamentals

| File | Description |
|------|-------------|
| 1_-_W18D1_-_Teoria.pdf | Theory slides: Power BI Service, workspaces, gateway, dataset refresh, data lineage |
| 2_-_W18D1_-_Pratica_-_Power_BI_LAB_8.docx | Lab 8 exercise: Time Analysis, Gauge Chart, cumulative revenue |
| 3_-_W18D1_-_Pratica__Extra__-_Power_BI_LAB_9.docx | Lab 9 exercise: Detail page, Table/Matrix toggle, tooltips, dynamic parameters |
| 4_-_W18D1_-_Pratica_-_Power_BI_LAB_8_e_9_-_Consegna.pbix | Completed Power BI Lab 8/9 file |
| 5_-_W18D4_-_Teoria.pdf | Theory slides: AI fundamentals, Machine Learning, Deep Learning, LLM, ChatGPT for EDA |

Final Exercise — Olist E-Commerce Analysis

| File | Description |
|------|-------------|
| 6_-_Esercitazione_di_fine_modulo.docx | Assignment with scenario, requirements, and instructions |
| W18D4_-_Esercitazione_finale.pbix | Completed Power BI file with final report |

Key concepts

**Star Schema**: Data model with central Fact table (events/transactions to measure) surrounded by Dimension tables (analysis perspectives for filtering).

**Filter Context vs Row Context**: Measures operate in filter context (evaluated dynamically based on active filters), calculated columns in row context (calculated row by row at refresh).

**CALCULATE**: Heart of DAX — allows modifying filter context to answer complex analytical questions.

**Time Intelligence**: DAX functions requiring a calendar table marked as Date Table for temporal comparisons (YTD, parallel periods, variations).

**Edit Interactions**: Granular control over which visuals respond to which slicers — separates a functional report from a professional one.

**Many-to-Many with Bridge Table**: Modeling pattern for complex relationships (e.g., agents ↔ territories) requiring a bridge table and bidirectional filter propagation.

**Power BI Service Workflow**: Complete flow from Desktop design to distribution: workspace → access/role management → gateway configuration → refresh scheduling.

**Storytelling & UX**: Designing an effective report requires attention to slicer positioning, managing interactions between visuals, synchronizing filters across pages, and intuitive navigation with drill-through, bookmarks, and buttons.

**The Data Analyst's Role in AI**: Data cleaning, EDA, and feature engineering skills are foundational to Machine Learning algorithm training — the Data Analyst bridges raw data and the model.
