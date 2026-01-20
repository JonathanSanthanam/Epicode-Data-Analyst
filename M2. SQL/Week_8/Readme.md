# Week 8 — Modifica, Eliminazione e Transazioni in SQL

Questa settimana ho approfondito le operazioni DML avanzate in SQL: `UPDATE`, `DELETE`, e la gestione delle transazioni ACID per garantire consistenza e sicurezza dei dati. Ho capito come modificare, eliminare e validare dati in modo controllato, utilizzando `START TRANSACTION`, `COMMIT`, e `ROLLBACK`.

## Competenze sviluppate

- Uso dell'istruzione `UPDATE` per modificare singoli campi o più valori contemporaneamente
- Eliminazione selettiva dei record con `DELETE`
- Gestione delle transazioni tramite `START TRANSACTION`, `COMMIT`, e `ROLLBACK`
- Applicazione dei principi ACID (Atomicità, Consistenza, Isolamento, Durabilità)
- Controllo dell'integrità referenziale tra tabelle con chiavi esterne
- Prevenzione degli errori e annullamento delle modifiche non desiderate
- Analisi del comportamento del DB prima e dopo la persistenza dei dati

## Sfide risolte

- Correzione di dati errati senza compromettere la coerenza del database
- Comprensione pratica delle transazioni "all or nothing"
- Simulazione di errori e verifica dell'effetto di `ROLLBACK` e `COMMIT`
- Manipolazione sicura di tabelle relazionate con vincoli di integrità

## Esercizi completati

### W8D1 – Pratica e Teoria

- `UPDATE` e `DELETE` su record reali
- Gestione di errori e rollback
- Test di vincoli referenziali (FK e PK)

### W8D4 – Recap

- Revisione generale del linguaggio SQL
- Focus su ACID e controllo di coerenza
- Riepilogo del flusso CRUD completo

## Highlight

Ho imparato che lavorare sui dati non significa solo leggerli, ma gestirli in sicurezza. Capire come rollback, commit e integrità referenziale si combinano è stato un passo cruciale per lavorare con basi dati reali in contesti professionali.

---

# Week 8 — Data Modification, Deletion, and Transactions in SQL

This week I explored advanced DML operations in SQL: `UPDATE`, `DELETE`, and the management of ACID transactions to ensure data consistency and security. I learned how to modify, delete, and validate data in a controlled way using `START TRANSACTION`, `COMMIT`, and `ROLLBACK`.

## Skills developed

- Use of the `UPDATE` statement to modify single or multiple fields at once
- Selective deletion of records using `DELETE`
- Management of transactions through `START TRANSACTION`, `COMMIT`, and `ROLLBACK`
- Application of ACID principles (Atomicity, Consistency, Isolation, Durability)
- Control of referential integrity between tables with foreign keys
- Prevention of errors and rollback of unwanted changes
- Analysis of database behavior before and after data persistence

## Challenges overcome

- Correcting data errors without compromising database consistency
- Practical understanding of "all or nothing" transactions
- Simulating errors and testing the effects of `ROLLBACK` and `COMMIT`
- Safely manipulating related tables with integrity constraints

## Exercises completed

### W8D1 – Practice and Theory

- `UPDATE` and `DELETE` on real records
- Error handling and rollback management
- Testing referential constraints (FK and PK)

### W8D4 – Recap

- General review of SQL language
- Focus on ACID and consistency control
- Summary of the complete CRUD flow

## Highlight

I learned that working with data isn't just about reading it — it's about managing it safely. Understanding how rollback, commit, and referential integrity work together was a crucial step toward handling real-world databases in professional environments.
