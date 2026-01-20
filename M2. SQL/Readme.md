# Modulo — SQL e Database Relazionali

## Panoramica del Modulo

Questo modulo ha coperto SQL come linguaggio fondamentale per la gestione e l'interrogazione di database relazionali. Nel corso di quattro settimane intensive più una Build Week pratica, ho costruito competenze complete nella progettazione di database, scrittura di query complesse, gestione dei dati e creazione di soluzioni analitiche pronte per strumenti di Business Intelligence.

## Obiettivi del Modulo

- Padroneggiare la progettazione di database: dal modello concettuale (E/R) all'implementazione fisica
- Scrivere query SQL efficaci per interrogare, filtrare e combinare dati da più tabelle
- Utilizzare funzioni di aggregazione e viste per creare dataset analitici
- Gestire dati in sicurezza con transazioni ACID e integrità referenziale
- Applicare tutte le competenze in un progetto reale di gestione magazzino e vendite

## Settimane del Modulo

### Week 5 — Progettazione Concettuale, Logica e Implementazione SQL

**Argomenti trattati:**
- Modellazione concettuale con schema E/R
- Identificazione di entità, attributi e relazioni
- Cardinalità e integrità referenziale
- Traduzione in modello logico con tabelle e tipi di dato
- Creazione fisica del database con DDL
- Implementazione di PK, FK e vincoli

**Competenze sviluppate:**
- Trasformare scenari reali in modelli concettuali coerenti
- Normalizzare i dati per evitare ridondanze
- Gestire entità deboli e relazioni molti-a-molti
- Implementare database senza violazioni di vincoli

**Sfide superate:**
- Passaggio da requisiti a schema E/R
- Scelta corretta dei tipi di dato
- Popolamento iniziale dei dati con `INSERT`

### Week 6 — Query, Join e Subquery in SQL

**Argomenti trattati:**
- `SELECT`, alias e campi calcolati
- Filtraggio con `WHERE`, `BETWEEN`, `IN`, `LIKE`
- Ordinamento con `ORDER BY` e `DISTINCT`
- JOIN: `INNER`, `LEFT`, `OUTER`
- Subquery scalari e multivalore
- Prodotto cartesiano e relazioni PK–FK

**Competenze sviluppate:**
- Scrivere query multi-tabella complesse
- Combinare JOIN e subquery per analisi avanzate
- Calcolare campi derivati (es. Markup)
- Interrogare modelli dimensionali (Fact/Dim tables)

**Sfide superate:**
- Costruire query multi-join su 4+ tabelle
- Riscrivere query sia con JOIN che con subquery
- Filtrare dinamicamente con subquery annidate

### Week 7 — Aggregazioni, Funzioni Built-in e View in SQL

**Argomenti trattati:**
- Funzioni di aggregazione: `SUM`, `COUNT`, `AVG`, `MIN`, `MAX`
- Raggruppamento con `GROUP BY`
- Filtraggio gruppi con `HAVING`
- Creazione di viste con `CREATE VIEW`
- Funzioni built-in: `YEAR()`, `MONTH()`, `DATEDIFF()`, `COALESCE()`, `IFNULL()`
- Integrazione con Excel e Power Pivot

**Competenze sviluppate:**
- Sintetizzare grandi quantità di dati
- Creare viste riutilizzabili per reportistica
- Preparare dataset per strumenti BI
- Manipolare date e valori NULL

**Sfide superate:**
- Verifica di chiavi primarie e composite
- Aggregazioni con soglie minime (`HAVING`)
- Collegamento viste SQL a modelli Excel

### Week 8 — Modifica, Eliminazione e Transazioni in SQL

**Argomenti trattati:**
- `UPDATE` per modifiche singole e multiple
- `DELETE` per eliminazione selettiva
- Transazioni: `START TRANSACTION`, `COMMIT`, `ROLLBACK`
- Principi ACID (Atomicità, Consistenza, Isolamento, Durabilità)
- Integrità referenziale con chiavi esterne
- Flusso CRUD completo

**Competenze sviluppate:**
- Modificare dati in modo controllato e sicuro
- Gestire transazioni "all or nothing"
- Prevenire errori e annullare modifiche non desiderate
- Mantenere la coerenza del database

**Sfide superate:**
- Correzione dati senza compromettere integrità
- Simulazione errori e test di rollback
- Manipolazione sicura di tabelle relazionate

### Build Week — VendiCose S.p.A.

**Progetto pratico:**
- Database completo per gestione magazzini e punti vendita
- Monitoraggio scorte mensili per prodotto e magazzino
- Tracciamento vendite e quantità aggiornate
- Gestione automatica soglie di restock
- Viste analitiche per vendite mensili

**Deliverable:**
- Schema E/R con notazione Chen
- Script SQL completo (DDL, DML, viste)
- Sistema di aggiornamento stock automatico

## Competenze Complessive Sviluppate

| Area | Competenza |
|------|------------|
| Database Design | Progettazione E/R, normalizzazione, modello logico |
| DDL | Creazione database, tabelle, vincoli PK/FK |
| DML | SELECT, INSERT, UPDATE, DELETE |
| Query Avanzate | JOIN multipli, subquery, aggregazioni |
| Funzioni | Built-in per date, stringhe, valori NULL |
| Viste | CREATE VIEW per dataset analitici riutilizzabili |
| Transazioni | ACID, COMMIT, ROLLBACK, integrità referenziale |
| BI Integration | Preparazione dati per Excel, Power Pivot, Power BI |

## File Principali del Modulo

| Settimana | File | Descrizione |
|-----------|------|-------------|
| 5 | `Teoria.pdf` | Progettazione concettuale e logica |
| 5 | `Pratica.sql` | Esercizio Studenti, Corsi, Docenti |
| 6 | `W6D1 - Pratica.sql` | Filtri, campi calcolati, pattern matching |
| 6 | `W6D4 - Pratica.sql` | JOIN e subquery su AdventureWorks |
| 7 | `W7D1 - Pratica.sql` | Aggregazioni e GROUP BY |
| 7 | `W7D4 - Pratica.sql` | Viste Product, Reseller, Sales |
| 8 | `W8D1 - Pratica.sql` | UPDATE, DELETE, transazioni |
| 8 | `W8D4 - Recap.pdf` | Riepilogo SQL e ACID |
| BW | `Schema ER di Chen.excalidraw` | Diagramma concettuale VendiCose |
| BW | `SQL - BW2.sql` | Script completo DDL, DML, viste |

## Conclusione

Il modulo SQL ha rappresentato un percorso completo dalla teoria dei database relazionali alla pratica professionale. Partendo dalla progettazione concettuale con schemi E/R, sono arrivato a scrivere query complesse che combinano multiple tabelle, a creare viste analitiche per la reportistica, e a gestire i dati in sicurezza con transazioni ACID. La Build Week su VendiCose S.p.A. ha consolidato tutte le competenze in un progetto reale che simula la gestione di un sistema di magazzino e vendite.

## Highlight

Il progetto VendiCose S.p.A.: partendo da zero, ho progettato uno schema E/R completo, implementato 8 tabelle normalizzate con relazioni complesse, creato un sistema di aggiornamento automatico delle scorte mensili, e sviluppato viste analitiche per monitorare vendite, stock e soglie di restock — un database completo pronto per l'uso in un contesto aziendale reale.

---

# Module — SQL and Relational Databases

## Module Overview

This module covered SQL as the fundamental language for managing and querying relational databases. Over four intensive weeks plus a practical Build Week, I built comprehensive skills in database design, complex query writing, data management, and creating analytical solutions ready for Business Intelligence tools.

## Module Objectives

- Master database design: from conceptual model (E/R) to physical implementation
- Write effective SQL queries to retrieve, filter, and combine data from multiple tables
- Use aggregation functions and views to create analytical datasets
- Manage data safely with ACID transactions and referential integrity
- Apply all skills in a real warehouse and sales management project

## Module Weeks

### Week 5 — Conceptual Design, Logical Modeling and SQL Implementation

**Topics covered:**
- Conceptual modeling with E/R diagrams
- Identifying entities, attributes, and relationships
- Cardinality and referential integrity
- Translation to logical model with tables and data types
- Physical database creation with DDL
- Implementation of PK, FK, and constraints

**Skills developed:**
- Transforming real scenarios into coherent conceptual models
- Normalizing data to avoid redundancy
- Managing weak entities and many-to-many relationships
- Implementing databases without constraint violations

**Challenges overcome:**
- Moving from requirements to E/R schema
- Choosing correct data types
- Initial data population with `INSERT`

### Week 6 — Queries, Joins and Subqueries in SQL

**Topics covered:**
- `SELECT`, aliases, and calculated fields
- Filtering with `WHERE`, `BETWEEN`, `IN`, `LIKE`
- Sorting with `ORDER BY` and `DISTINCT`
- JOINs: `INNER`, `LEFT`, `OUTER`
- Scalar and multivalue subqueries
- Cartesian product and PK–FK relationships

**Skills developed:**
- Writing complex multi-table queries
- Combining JOINs and subqueries for advanced analysis
- Calculating derived fields (e.g., Markup)
- Querying dimensional models (Fact/Dim tables)

**Challenges overcome:**
- Building multi-join queries on 4+ tables
- Rewriting queries with both JOIN and subquery approaches
- Dynamic filtering with nested subqueries

### Week 7 — Aggregations, Built-in Functions and Views in SQL

**Topics covered:**
- Aggregation functions: `SUM`, `COUNT`, `AVG`, `MIN`, `MAX`
- Grouping with `GROUP BY`
- Group filtering with `HAVING`
- Creating views with `CREATE VIEW`
- Built-in functions: `YEAR()`, `MONTH()`, `DATEDIFF()`, `COALESCE()`, `IFNULL()`
- Integration with Excel and Power Pivot

**Skills developed:**
- Summarizing large amounts of data
- Creating reusable views for reporting
- Preparing datasets for BI tools
- Manipulating dates and NULL values

**Challenges overcome:**
- Validating primary and composite keys
- Aggregations with minimum thresholds (`HAVING`)
- Connecting SQL views to Excel models

### Week 8 — Data Modification, Deletion, and Transactions in SQL

**Topics covered:**
- `UPDATE` for single and multiple modifications
- `DELETE` for selective deletion
- Transactions: `START TRANSACTION`, `COMMIT`, `ROLLBACK`
- ACID principles (Atomicity, Consistency, Isolation, Durability)
- Referential integrity with foreign keys
- Complete CRUD flow

**Skills developed:**
- Modifying data in a controlled and safe manner
- Managing "all or nothing" transactions
- Preventing errors and rolling back unwanted changes
- Maintaining database consistency

**Challenges overcome:**
- Correcting data without compromising integrity
- Simulating errors and testing rollback
- Safely manipulating related tables

### Build Week — VendiCose S.p.A.

**Practical project:**
- Complete database for warehouse and store management
- Monthly stock monitoring by product and warehouse
- Sales tracking and updated quantities
- Automatic restock threshold management
- Analytical views for monthly sales

**Deliverables:**
- E/R schema with Chen notation
- Complete SQL script (DDL, DML, views)
- Automatic stock update system

## Overall Skills Developed

| Area | Skill |
|------|-------|
| Database Design | E/R modeling, normalization, logical model |
| DDL | Creating databases, tables, PK/FK constraints |
| DML | SELECT, INSERT, UPDATE, DELETE |
| Advanced Queries | Multiple JOINs, subqueries, aggregations |
| Functions | Built-in for dates, strings, NULL values |
| Views | CREATE VIEW for reusable analytical datasets |
| Transactions | ACID, COMMIT, ROLLBACK, referential integrity |
| BI Integration | Data preparation for Excel, Power Pivot, Power BI |

## Main Module Files

| Week | File | Description |
|------|------|-------------|
| 5 | `Teoria.pdf` | Conceptual and logical design |
| 5 | `Pratica.sql` | Students, Courses, Teachers exercise |
| 6 | `W6D1 - Pratica.sql` | Filters, calculated fields, pattern matching |
| 6 | `W6D4 - Pratica.sql` | JOINs and subqueries on AdventureWorks |
| 7 | `W7D1 - Pratica.sql` | Aggregations and GROUP BY |
| 7 | `W7D4 - Pratica.sql` | Product, Reseller, Sales views |
| 8 | `W8D1 - Pratica.sql` | UPDATE, DELETE, transactions |
| 8 | `W8D4 - Recap.pdf` | SQL and ACID summary |
| BW | `Schema ER di Chen.excalidraw` | VendiCose conceptual diagram |
| BW | `SQL - BW2.sql` | Complete DDL, DML, views script |

## Conclusion

The SQL module represented a complete journey from relational database theory to professional practice. Starting from conceptual design with E/R diagrams, I progressed to writing complex queries combining multiple tables, creating analytical views for reporting, and managing data safely with ACID transactions. The VendiCose S.p.A. Build Week consolidated all skills in a real project simulating a warehouse and sales management system.

## Highlight

The VendiCose S.p.A. project: starting from scratch, I designed a complete E/R schema, implemented 8 normalized tables with complex relationships, created an automatic monthly stock update system, and developed analytical views to monitor sales, stock, and restock thresholds — a complete database ready for use in a real business context.
