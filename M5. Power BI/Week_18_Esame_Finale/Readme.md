Esercitazione Finale — Modulo Power BI: Olist E-Commerce Analysis

Questa esercitazione finale ha rappresentato la prova di sintesi dell'intero modulo Power BI. Lo scenario richiedeva di analizzare il dataset pubblico di Olist, un marketplace e-commerce brasiliano, costruendo un report completo applicando tutte le competenze acquisite nelle settimane precedenti: data modeling, DAX, data visualization, storytelling e UX design.

Il progetto ha richiesto l'intero workflow end-to-end: dall'importazione e pulizia dei dati grezzi, alla ristrutturazione in star schema con dimensione calendario, fino alla progettazione di un report multi-pagina con analisi temporali Period over Period, distribuzione dei rating, drill-through per dettagli e navigazione tramite bottoni.

Scenario e requisiti:

Olist è una piattaforma e-commerce brasiliana per seller. Il dataset copre gli ordini dal 2016 al 2018 e consente di analizzarli rispetto a dimensioni come cliente, prodotto, metodi di pagamento e status dell'ordine.

Il report doveva consentire di analizzare: l'andamento degli ordini nel tempo per stato brasiliano (con confronto anno precedente e variazione percentuale mese per mese), l'andamento dei ricavi nel tempo per stato (dove il ricavo = price + freight_value), e la distribuzione del rating tramite review_score. Tutto con possibilità di filtrare per status dell'ordine.

Competenze applicate:

Ridurre il volume del dataset eliminando colonne e tabelle non necessarie
Ristrutturare i dati grezzi in uno Star Schema ottimizzato
Creare e configurare una dimensione Calendario per l'analisi temporale
Calcolare metriche di business: conteggio ordini, ricavi totali (price + freight_value)
Implementare confronto Period over Period con PARALLELPERIOD
Calcolare variazioni percentuali YoY mese per mese
Filtrare per status dell'ordine tramite slicer dedicati
Analizzare la distribuzione dei rating (review_score)
Progettare un layout report professionale con best practice di UX
Implementare drill-through per navigazione da aggregato a dettaglio
Utilizzare bottoni per la navigazione tra pagine
Arricchire il report con analisi per prodotto e area geografica

Sfide risolte:

Ristrutturare un dataset grezzo multi-tabella in uno star schema coerente
Gestire la relazione tra tabelle ordini, items, prodotti, clienti e recensioni
Calcolare correttamente il ricavo come somma di prezzo e costo di spedizione
Costruire analisi temporali YoY su dati che coprono solo 2016-2018 (gestione dei periodi senza dati precedenti)
Progettare un report che bilanci overview aggregata e dettaglio esplorativo
Applicare in autonomia tutte le best practice apprese nel modulo: modeling, DAX, visualization e UX

Formule DAX principali:

```
-- Conteggio ordini
Orders = COUNTROWS(olist_order_items_dataset)

-- Ricavo totale (prezzo + spedizione)
Revenue = SUM(olist_order_items_dataset[price]) + SUM(olist_order_items_dataset[freight_value])

-- Confronto anno precedente
Orders PY = CALCULATE([Orders], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
Revenue PY = CALCULATE([Revenue], PARALLELPERIOD('Calendar'[Date], -12, MONTH))

-- Variazione percentuale YoY
Orders Variation % = DIVIDE([Orders] - [Orders PY], [Orders PY])
Revenue Variation % = DIVIDE([Revenue] - [Revenue PY], [Revenue PY])
```

File dell'esercitazione:

| File | Descrizione |
|------|-------------|
| 6_-_Esercitazione_di_fine_modulo.docx | Consegna con scenario, requisiti e istruzioni |
| W18D4_-_Esercitazione_finale.pbix | File Power BI completato con report finale |

Highlight: L'esercitazione finale ha messo alla prova l'intero stack di competenze del modulo Power BI in un unico progetto realistico. Partire da dati grezzi e arrivare a un report professionale con star schema, analisi temporali YoY, distribuzione rating e navigazione drill-through dimostra la capacità di gestire un progetto di BI end-to-end — esattamente ciò che viene richiesto in un ruolo di Business/Data Analyst.

---

Final Exercise — Power BI Module: Olist E-Commerce Analysis

This final exercise was the synthesis test for the entire Power BI module. The scenario required analyzing the public Olist dataset, a Brazilian e-commerce marketplace, building a complete report applying all skills acquired in previous weeks: data modeling, DAX, data visualization, storytelling, and UX design.

The project required the full end-to-end workflow: from importing and cleaning raw data, to restructuring into a star schema with a calendar dimension, to designing a multi-page report with Period over Period time analysis, rating distribution, drill-through for details, and button navigation.

Scenario and requirements:

Olist is a Brazilian e-commerce platform for sellers. The dataset covers orders from 2016 to 2018 and allows analysis across dimensions such as customer, product, payment methods, and order status.

The report needed to analyze: order trends over time by Brazilian state (with previous year comparison and month-over-month percentage variation), revenue trends over time by state (where revenue = price + freight_value), and rating distribution via review_score. All with the ability to filter by order status.

Skills applied:

Reducing dataset volume by removing unnecessary columns and tables
Restructuring raw data into an optimized Star Schema
Creating and configuring a Calendar dimension for time analysis
Calculating business metrics: order count, total revenue (price + freight_value)
Implementing Period over Period comparison with PARALLELPERIOD
Calculating YoY percentage variations month by month
Filtering by order status through dedicated slicers
Analyzing rating distribution (review_score)
Designing a professional report layout with UX best practices
Implementing drill-through for aggregate-to-detail navigation
Using buttons for page navigation
Enriching the report with product and geographic area analysis

Challenges overcome:

Restructuring a raw multi-table dataset into a coherent star schema
Managing relationships between orders, items, products, customers, and reviews tables
Correctly calculating revenue as the sum of price and shipping cost
Building YoY time analysis on data covering only 2016-2018 (handling periods without prior year data)
Designing a report that balances aggregated overview with exploratory detail
Independently applying all best practices learned in the module: modeling, DAX, visualization, and UX

Key DAX formulas:

```
-- Order count
Orders = COUNTROWS(olist_order_items_dataset)

-- Total revenue (price + shipping)
Revenue = SUM(olist_order_items_dataset[price]) + SUM(olist_order_items_dataset[freight_value])

-- Previous year comparison
Orders PY = CALCULATE([Orders], PARALLELPERIOD('Calendar'[Date], -12, MONTH))
Revenue PY = CALCULATE([Revenue], PARALLELPERIOD('Calendar'[Date], -12, MONTH))

-- YoY percentage variation
Orders Variation % = DIVIDE([Orders] - [Orders PY], [Orders PY])
Revenue Variation % = DIVIDE([Revenue] - [Revenue PY], [Revenue PY])
```

Exercise files:

| File | Description |
|------|-------------|
| 6_-_Esercitazione_di_fine_modulo.docx | Assignment with scenario, requirements, and instructions |
| W18D4_-_Esercitazione_finale.pbix | Completed Power BI file with final report |

Highlight: The final exercise tested the entire Power BI module skill stack in a single realistic project. Going from raw data to a professional report with star schema, YoY time analysis, rating distribution, and drill-through navigation demonstrates the ability to manage an end-to-end BI project — exactly what is required in a Business/Data Analyst role.
