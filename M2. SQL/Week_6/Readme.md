# Week 6 — Query, Join e Subquery in SQL

Questa settimana ho consolidato le competenze SQL passando dal filtraggio dei dati di una singola tabella alla combinazione di più tabelle e query annidate. Ho imparato a scrivere query efficienti per interrogare, filtrare, ordinare e collegare tabelle complesse, gestendo i casi reali di analisi aziendale.

## Competenze sviluppate

- Recupero dati con `SELECT`, alias e campi calcolati
- Filtraggio con `WHERE`, `BETWEEN`, `IN`, `LIKE`, `NOT`, `AND` e `OR`
- Ordinamento e deduplicazione con `ORDER BY` e `DISTINCT`
- Utilizzo delle JOIN (`INNER`, `LEFT`, `OUTER`) per combinare più tabelle
- Creazione e utilizzo di subquery scalari e multivalore
- Comprensione del prodotto cartesiano e della logica dietro le relazioni PK–FK
- Lettura e analisi di tabelle complesse come FactResellerSales, DimProduct, DimReseller, DimGeography

## Sfide risolte

- Trovare solo i prodotti finiti o non venduti con condizioni multiple
- Calcolare il Markup (`ListPrice − StandardCost`) e altri campi derivati
- Estrarre solo i prodotti venduti e collegarli alle rispettive categorie
- Costruire query multi-join che mostrano vendite, prodotti, reseller e area geografica
- Scrivere subquery per filtrare valori dinamicamente in base ai risultati di altre query

## Esercizi completati

- **W6D1 – Pratica:** filtri, campi calcolati, markup, condizioni, ricerca per pattern
- **W6D4 – Pratica:** join tra tabelle (DimProduct, FactResellerSales, DimReseller, DimGeography) e subquery
- Riscrittura di query sia con JOIN che con subquery, per capire entrambe le logiche

## Highlight

Capire come più tabelle interagiscono tra loro e come scrivere query che raccontano storie complete: dai prodotti ai reseller, passando per vendite, categorie e aree geografiche. È il momento in cui SQL diventa davvero uno strumento analitico e non solo di consultazione.

---

# Week 6 — Queries, Joins and Subqueries in SQL

This week focused on mastering data retrieval and combination with advanced SQL techniques. I moved from simple table queries to complex joins and subqueries that connect multiple datasets.

## Skills developed

- Data retrieval with `SELECT`, aliases, and calculated fields
- Filtering using `WHERE`, `BETWEEN`, `IN`, `LIKE`, `NOT`, `AND`, `OR`
- Sorting and deduplication with `ORDER BY` and `DISTINCT`
- Joining multiple tables with `INNER`, `LEFT`, and `OUTER JOIN`
- Writing scalar and multivalue subqueries
- Understanding cartesian products and PK–FK relationships
- Querying complex data models (e.g. FactResellerSales, DimProduct, DimReseller, DimGeography)

## Challenges overcome

- Filtering finished or unsold products with compound conditions
- Computing Markup (`ListPrice − StandardCost`)
- Extracting sold products with their categories and regions
- Building multi-join queries combining sales, products, resellers, and geography
- Rewriting queries both with JOIN and subquery logic to compare outcomes

## Exercises completed

- **W6D1 – Practice:** filtering, calculated fields, markup, pattern matching
- **W6D4 – Practice:** joins between multiple tables and nested subqueries
- Dual implementation using both JOIN and SUBQUERY to reinforce logic

## Highlight

Learning to connect data logically across multiple tables — from single facts to complete stories — was the key step that turned SQL from a query language into a full analytical tool.
