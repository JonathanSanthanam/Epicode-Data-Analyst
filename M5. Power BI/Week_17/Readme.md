Week 17 — Data Visualization, Report Design e UX
Questa settimana ho approfondito la progettazione di report in Power BI, concentrandomi su data visualization, storytelling e user experience. Ho imparato a scegliere le visualizzazioni più adatte per ogni tipo di analisi e a ottimizzare la fruibilità del report per l'utente finale.

Mi sono concentrato sulle best practice di layout e design, sulla gestione avanzata dei filtri (slicer, sincronizzazione tra pagine, interazioni tra grafici), e sulle funzionalità di navigazione come drill-through, bookmark e bottoni.

Competenze sviluppate:
- Scegliere la visualizzazione corretta in base al tipo di analisi (Table vs Matrix, Scatter, Stacked, Combo chart)
- Usare Table per dati flat e valori esatti, Matrix per gerarchie con drill-down/drill-up
- Creare grafici combinati (Line and Clustered Column) per confrontare metriche con scale diverse
- Usare Stacked Column Chart e 100% Stacked per analisi di distribuzione
- Implementare Decomposition Tree per analisi multidimensionale
- Usare Scatter Chart e Bubble Chart per identificare correlazioni e anomalie
- Aggiungere linee statistiche (media, mediana) alle visualizzazioni tramite il pannello Analytics
- Utilizzare la funzionalità Q&A per interrogare i dati in linguaggio naturale
- Progettare layout di slicer efficaci (laterali vs header con dropdown)
- Gestire la propagazione dei filtri tramite Modifica Interazioni
- Sincronizzare slicer tra pagine diverse (con controllo visibilità)
- Implementare Drill-through per navigazione da aggregato a dettaglio
- Creare Custom Tooltip per arricchire le visualizzazioni
- Configurare Bookmark per salvare stati del report
- Usare Bottoni per navigazione pagine, Q&A e bookmark
- Applicare principi di storytelling e UX design nei report
- Gestire relazioni many-to-many con tabelle bridge (SalespersonRegion)
- Usare CALCULATE con USERELATIONSHIP per attivare relazioni inattive
- Creare misure per analisi salesperson con propagazione filtri bidirezionale

Sfide risolte:
- Capire quando usare Table vs Matrix per rappresentare dati gerarchici
- Gestire filtri che devono propagarsi solo a specifiche visualizzazioni (Modifica Interazioni)
- Sincronizzare slicer tra pagine mantenendo il controllo su visibilità e propagazione
- Modellare relazioni many-to-many (agenti ↔ territori) con tabella bridge
- Risolvere ambiguità di propagazione filtri con relazioni inattive e USERELATIONSHIP
- Progettare un layout report completo con logo, slicer, KPI e visualizzazioni multiple

Formule DAX principali:
```dax
-- Misura per vendite salesperson (relazione inattiva forzata)
SalespersonSales = CALCULATE([TotalSales], USERELATIONSHIP(Salesperson[EmployeeKey], Sales[EmployeeKey]))

-- Confronto anno precedente (Period over Period)
SalesPY = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
TransactionsPY = CALCULATE([TotalTransactions], PARALLELPERIOD('Calendar'[Date], -12, MONTH))

-- Variazione percentuale
SalesVariation% = DIVIDE([TotalSales] - [SalesPY], [SalesPY])

-- Cumulati
TotalYTD = TOTALYTD([TotalSales], 'Calendar'[Date])
TransactionsYTD = TOTALYTD([TotalTransactions], 'Calendar'[Date])
```

File della settimana:
| File | Descrizione |
|------|-------------|
| 1_-_W17D5_-_Teoria.pdf | Slide teoria: data viz, storytelling, scelta visualizzazioni, parametri |
| 2_-_W17D1_-_Pratica_-_Power_BI_LAB_5.docx | Esercitazione Lab 5: DAX e override di contesto |
| 3_-_W17D1_-_Pratica__extra__-_Power_BI_LAB_6.docx | Esercitazione Lab 6: Data Modeling Challenge (many-to-many) |
| 4_-_W17D1_-_Pratica_-_Consegna.pbix | File Power BI Lab 5/6 completato |
| 5_-_W17D4_-_Teoria.pdf | Slide teoria: filtri, slicer, interazioni, sincronizzazione, drill-through, bookmark, bottoni |
| 6_-_W17D4_-_Pratica_-_Power_BI_LAB_7.docx | Esercitazione Lab 7: Storytelling e report design |
| 7_-_W17D4_-_Pratica_-_Power_BI_LAB_7_-_Consegna.pbix | File Power BI Lab 7 completato |

Highlight:
La progettazione di un report efficace va ben oltre la scelta dei grafici giusti — richiede attenzione alla UX: posizionamento degli slicer, gestione delle interazioni tra visualizzazioni, sincronizzazione dei filtri tra pagine e navigazione intuitiva con drill-through e bookmark. Il Data Modeling Challenge con relazioni many-to-many ha dimostrato come la struttura del modello dati influenzi direttamente le possibilità analitiche del report.

---

Week 17 — Data Visualization, Report Design and UX
This week I deepened my knowledge of report design in Power BI, focusing on data visualization, storytelling and user experience. I learned to choose the most appropriate visualizations for each type of analysis and to optimize report usability for end users.

I focused on layout and design best practices, advanced filter management (slicers, cross-page synchronization, visual interactions), and navigation features like drill-through, bookmarks and buttons.

Skills developed:
- Choosing the correct visualization based on analysis type (Table vs Matrix, Scatter, Stacked, Combo chart)
- Using Table for flat data and exact values, Matrix for hierarchies with drill-down/drill-up
- Creating combo charts (Line and Clustered Column) to compare metrics with different scales
- Using Stacked Column Chart and 100% Stacked for distribution analysis
- Implementing Decomposition Tree for multidimensional analysis
- Using Scatter Chart and Bubble Chart to identify correlations and anomalies
- Adding statistical lines (average, median) to visualizations via the Analytics pane
- Using Q&A functionality to query data in natural language
- Designing effective slicer layouts (sidebar vs header with dropdown)
- Managing filter propagation through Edit Interactions
- Synchronizing slicers across pages (with visibility control)
- Implementing Drill-through for aggregate-to-detail navigation
- Creating Custom Tooltips to enrich visualizations
- Configuring Bookmarks to save report states
- Using Buttons for page navigation, Q&A and bookmarks
- Applying storytelling and UX design principles in reports
- Managing many-to-many relationships with bridge tables (SalespersonRegion)
- Using CALCULATE with USERELATIONSHIP to activate inactive relationships
- Creating measures for salesperson analysis with bidirectional filter propagation

Challenges overcome:
- Understanding when to use Table vs Matrix for hierarchical data
- Managing filters that should propagate only to specific visuals (Edit Interactions)
- Synchronizing slicers across pages while controlling visibility and propagation
- Modeling many-to-many relationships (agents ↔ territories) with bridge tables
- Resolving filter propagation ambiguity with inactive relationships and USERELATIONSHIP
- Designing a complete report layout with logo, slicers, KPIs and multiple visualizations

Key DAX formulas:
```dax
-- Salesperson sales measure (forcing inactive relationship)
SalespersonSales = CALCULATE([TotalSales], USERELATIONSHIP(Salesperson[EmployeeKey], Sales[EmployeeKey]))

-- Previous year comparison (Period over Period)
SalesPY = CALCULATE([TotalSales], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
TransactionsPY = CALCULATE([TotalTransactions], PARALLELPERIOD('Calendar'[Date], -12, MONTH))

-- Percentage variation
SalesVariation% = DIVIDE([TotalSales] - [SalesPY], [SalesPY])

-- Cumulative totals
TotalYTD = TOTALYTD([TotalSales], 'Calendar'[Date])
TransactionsYTD = TOTALYTD([TotalTransactions], 'Calendar'[Date])
```

Week files:
| File | Description |
|------|-------------|
| 1_-_W17D5_-_Teoria.pdf | Theory slides: data viz, storytelling, choosing visualizations, parameters |
| 2_-_W17D1_-_Pratica_-_Power_BI_LAB_5.docx | Lab 5 exercise: DAX and context override |
| 3_-_W17D1_-_Pratica__extra__-_Power_BI_LAB_6.docx | Lab 6 exercise: Data Modeling Challenge (many-to-many) |
| 4_-_W17D1_-_Pratica_-_Consegna.pbix | Completed Power BI Lab 5/6 file |
| 5_-_W17D4_-_Teoria.pdf | Theory slides: filters, slicers, interactions, sync, drill-through, bookmarks, buttons |
| 6_-_W17D4_-_Pratica_-_Power_BI_LAB_7.docx | Lab 7 exercise: Storytelling and report design |
| 7_-_W17D4_-_Pratica_-_Power_BI_LAB_7_-_Consegna.pbix | Completed Power BI Lab 7 file |

Highlight:
Designing an effective report goes well beyond choosing the right charts — it requires attention to UX: slicer positioning, managing interactions between visuals, synchronizing filters across pages, and intuitive navigation with drill-through and bookmarks. The Data Modeling Challenge with many-to-many relationships demonstrated how the data model structure directly influences the report's analytical capabilities.
