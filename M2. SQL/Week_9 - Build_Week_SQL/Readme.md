# VendiCose_SpA — Build Week SQL

## Descrizione

Questo progetto è stato sviluppato durante la **Build Week SQL di Epicode**, con l'obiettivo di progettare e realizzare un database relazionale per la società **VendiCose S.p.A.**, che gestisce magazzini e punti vendita in tutta Italia.

Il database consente di:

- Monitorare le **scorte mensili per prodotto e magazzino**
- Tenere traccia delle **vendite e delle quantità aggiornate**
- Gestire automaticamente i livelli di **restock** in base a soglie predefinite
- Analizzare l'andamento delle **vendite mensili** tramite viste dedicate

## Struttura del progetto

| File | Descrizione |
|------|-------------|
| `1 - Schema ER di Chen.excalidraw` | Diagramma concettuale con entità, relazioni e cardinalità |
| `2 - SQL - BW2.sql` | Script completo con DDL, DML e viste |
| `Traccia BW2.pdf` | Consegna ufficiale della Build Week |

## Database design

Il modello segue i principi di **normalizzazione** e separazione logica dei dati:

| Tabella | Descrizione |
|---------|-------------|
| `categoria` | Elenco delle categorie merceologiche |
| `magazzino` | Dati sui magazzini e città |
| `negozio` | Punti vendita associati a un magazzino |
| `prodotto` | Prodotti venduti, con prezzo e categoria |
| `vendita` | Testata delle vendite con data e importo totale |
| `dettaglio_vendita` | Dettaglio quantità e prezzi unitari per vendita |
| `stock` | Giacenze mensili (iniziali e rimanenti) per prodotto e magazzino |
| `livello_restock` | Soglie minime per categoria/prodotto/magazzino |

## Logica implementata

### Gestione mensile automatica dello stock

Ogni fine mese, una query `INSERT ... SELECT` genera le nuove righe di stock del mese successivo:

- Copia la quantità rimanente come nuovo valore iniziale
- Sottrae le quantità vendute nel mese successivo

Questo simula il ciclo di aggiornamento inventariale.

### Viste analitiche

- `vendite_per_mese` → totale venduto per prodotto/magazzino/mese
- `stock_attuale` → mostra l'ultimo stato disponibile delle giacenze
- `prodotti_sotto_soglia` → individua i prodotti che hanno superato la soglia di restock

## Esempi di query principali

```sql
-- Totale vendite mensili per prodotto
SELECT * FROM vendite_per_mese;

-- Situazione stock aggiornata
SELECT * FROM stock_attuale;

-- Prodotti da riordinare
SELECT * FROM prodotti_sotto_soglia;
```

## Concetti chiave applicati

- Progettazione E/R (schema Chen)
- Normalizzazione relazionale
- JOIN e subquery complesse
- Aggregazioni con `GROUP BY` e funzioni `IFNULL`
- Viste dinamiche per analisi di stock e vendite
- Simulazione temporale (anno/mese)

---

# VendiCose_SpA — SQL Build Week

## Description

This project was developed during **Epicode's SQL Build Week**, aiming to design and implement a relational database for **VendiCose S.p.A.**, a retail company managing warehouses and stores across Italy.

The database allows:

- Monitoring **monthly stock levels by product and warehouse**
- Tracking **sales and updated quantities**
- Managing **automatic restock thresholds**
- Analyzing **monthly sales trends** through dedicated SQL views

## Project structure

| File | Description |
|------|-------------|
| `1 - Schema ER di Chen.excalidraw` | Conceptual ER diagram |
| `2 - SQL - BW2.sql` | Full SQL script (DDL, DML, and views) |
| `Traccia BW2.pdf` | Official project brief |

## Database design

The model follows relational **normalization principles**, ensuring consistency and minimal redundancy.

| Table | Description |
|-------|-------------|
| `categoria` | Product categories |
| `magazzino` | Warehouses and locations |
| `negozio` | Stores linked to warehouses |
| `prodotto` | Products with price and category |
| `vendita` | Sales header with date and total |
| `dettaglio_vendita` | Sale line items (quantity and price) |
| `stock` | Monthly inventory per product and warehouse |
| `livello_restock` | Minimum stock levels per category/product/warehouse |

## Core logic

### Automated monthly stock update

At the end of each month, an `INSERT ... SELECT` query:

- Copies the remaining stock as the new initial quantity
- Subtracts sales for the next month

This simulates a real inventory update cycle.

### Analytical views

- `vendite_per_mese` → total sales grouped by product, warehouse, and month
- `stock_attuale` → current stock snapshot (latest available month)
- `prodotti_sotto_soglia` → products below restock threshold

## Main queries

```sql
-- Monthly sales summary
SELECT * FROM vendite_per_mese;

-- Current stock situation
SELECT * FROM stock_attuale;

-- Items below restock threshold
SELECT * FROM prodotti_sotto_soglia;
```

## Key concepts applied

- E/R conceptual modeling
- Relational normalization
- Complex JOINs and subqueries
- Aggregations and `IFNULL` usage
- Dynamic views for analytics
