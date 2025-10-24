Week 7 — Aggregazioni, Funzioni Built-in e View in SQL

Questa settimana ho approfondito le aggregazioni e l’uso di funzioni integrate e viste in SQL.
Ho imparato a sintetizzare grandi quantità di dati con GROUP BY, filtrare i gruppi con HAVING,
e costruire viste permanenti per analisi e reportistica (Excel / Power BI).

Competenze sviluppate:

- Utilizzo di funzioni di aggregazione (SUM, COUNT, AVG, MIN, MAX)
- Raggruppamento logico dei dati con GROUP BY
- Filtraggio di gruppi e condizioni con HAVING
- Creazione di viste con CREATE VIEW per consolidare dati complessi
- Utilizzo di funzioni Built-in come YEAR(), MONTH(), DATEDIFF(), COALESCE(), IFNULL()
- Costruzione di dataset pronti per Excel o Power BI
- Collegamento tra viste SQL e modelli logici in Excel (Power Pivot)

Sfide risolte:

- Verifica di Primary Key e combinazioni di chiavi composite
- Calcolo di fatturato, quantità e prezzo medio per prodotto e categoria
- Aggregazione di dati per area geografica con soglia minima (HAVING)
- Implementazione di viste dinamiche per prodotti, reseller e vendite
- Integrazione delle viste in Excel per creare report interattivi e pivot
- Manipolazione di date e valori NULL in query reali

Esercizi completati:

- W7D1 – Pratica:
  - Verifica PK su DimProduct e FactResellerSales
  - Raggruppamento e aggregazioni con GROUP BY e HAVING
  - Calcolo di fatturato per prodotto, categoria e città
  - Applicazione pratica delle funzioni di aggregazione

- W7D4 – Pratica:
  - Creazione delle viste Product, Reseller, Sales
  - Esposizione dei campi chiave per relazioni logiche in Excel
  - Analisi di vendite, quantità e profitti per prodotto e reseller
  - Utilizzo delle viste come sorgente dati per Power Pivot

Highlight:

Ho capito come passare da semplici query a modelli di analisi completi:
dall’aggregazione dei dati fino alla creazione di viste strutturate e report Excel.
È stata la prima vera introduzione all’analisi dati con approccio “BI-ready”.

------------------------------------

Week 7 Recap

This week focused on data aggregation, built-in functions, and views in SQL.
I learned to summarize large datasets using GROUP BY and HAVING,
and to design reusable SQL views for analytical tools like Excel and Power BI.

Skills developed:

- Use of aggregation functions (SUM, COUNT, AVG, MIN, MAX)
- Logical grouping of records with GROUP BY
- Filtering groups with HAVING
- Creating reusable views with CREATE VIEW
- Applying built-in functions (YEAR, MONTH, DATEDIFF, COALESCE, IFNULL)
- Preparing SQL datasets for BI tools (Excel / Power BI)
- Linking SQL views to analytical models (Power Pivot)

Challenges overcome:

- Validating primary keys and composite key combinations
- Calculating total revenue, quantity, and average price by product/category
- Aggregating sales by city using HAVING thresholds
- Implementing clean, reusable SQL views for reporting
- Handling date and NULL values dynamically
- Building Excel reports connected to SQL views

Exercises completed:

- W7D1 – Practice: PK checks, aggregations, and grouped analysis
- W7D4 – Practice: Creation of Product, Reseller, Sales views and Excel report integration

Highlight:

Learning to structure SQL for reporting — not just querying —
was the key step toward understanding data modeling and business intelligence workflows.
