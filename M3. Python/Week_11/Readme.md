# Week 11 — Python: Advanced Pandas & Data Cleaning

Questa settimana ho approfondito le funzionalità avanzate di Pandas, spostando il focus dalla semplice lettura dei dati alla loro manipolazione complessa e pulizia.

Ho imparato a gestire dataset multipli unendoli tramite operazioni di Merge, Join e Concat (simili alle logiche SQL) e ho affrontato il fondamentale processo di Data Cleaning: gestione dei valori nulli, rimozione duplicati e normalizzazione di stringhe.

Inoltre, le lezioni hanno introdotto l'uso di strumenti di AI (come ChatGPT e Claude) come supporto alla scrittura e ottimizzazione del codice.

## Competenze sviluppate

- **Advanced Aggregation:** Utilizzo di `groupby()` per raggruppamenti complessi e operazioni su MultiIndex
- **Combining Data:** Unione di DataFrame diversi utilizzando `merge()`, `join()` e `concat()` per relazionare i dati
- **Data Cleaning:** Identificazione e gestione dei valori mancanti (NaN) tramite `fillna()`, `dropna()` e interpolazione
- **Text Manipulation:** Pulizia di colonne testuali (es. email, nomi) usando i metodi vettoriali `.str` (split, upper/lower, replace)
- **Automazione:** Iterazione su file nel sistema operativo (libreria `os`) per analizzare in batch il contenuto di più dataset CSV
- **AI Coding Assistance:** Utilizzo consapevole di LLM per debugging e generazione di snippet di codice

## Sfide risolte

- Gestire problemi di encoding (es. `latin1`) e separatori non standard (`;`) durante l'importazione di CSV "sporchi"
- Decidere la strategia corretta per i valori nulli (eliminarli vs sostituirli con media/valore precedente) in base al contesto
- Comprendere le differenze sottili tra left, right, inner e outer join
- Scrivere script per scansionare automaticamente una cartella e individuare quali file contenessero valori nulli (senza aprirli uno a uno)

## File della settimana

| File | Descrizione |
|------|-------------|
| `1 - W11D5 - Teoria.pdf` | Slide teoria: Groupby, MultiIndex, Merge/Join e coding assistito da AI |
| `2 - W11D5 - Pratica.pdf` | Traccia esercizi: Analisi dataset Pubs Italia, Merge dipendenti/dipartimenti |
| `3 - W11D6 - Teoria.pdf` | Slide teoria: Data Cleaning, gestione duplicati, stringhe e valori nulli |
| `4 - W11D6 - Pratica.pdf` | Traccia esercizi: Pulizia AdventureWorks e automazione con libreria os |
| `5 - W11D6 - Pratica.ipynb` | Notebook esercizi: Script per individuare nulli in file multipli e pulizia dati |

## Highlight

Lo script Python che itera automaticamente su una cartella di file `.csv` per identificare quali dataset contengono valori nulli — un ottimo esempio di automazione di compiti ripetitivi.

---

# Week 11 — Python: Advanced Pandas & Data Cleaning

This week I delved into advanced Pandas functionalities, shifting focus from simple data reading to complex manipulation and cleaning.

I learned how to manage multiple datasets by combining them through Merge, Join, and Concat operations (similar to SQL logic) and tackled the fundamental process of Data Cleaning: handling null values, removing duplicates, and normalizing strings.

Additionally, the lessons introduced the use of AI tools (such as ChatGPT and Claude) to support code writing and optimization.

## Skills developed

- **Advanced Aggregation:** Using `groupby()` for complex groupings and MultiIndex operations
- **Combining Data:** Merging different DataFrames using `merge()`, `join()`, and `concat()` to relate data
- **Data Cleaning:** Identifying and handling missing values (NaN) through `fillna()`, `dropna()`, and interpolation
- **Text Manipulation:** Cleaning text columns (e.g., emails, names) using vector methods `.str` (split, upper/lower, replace)
- **Automation:** Iterating over files in the operating system (using the `os` library) to batch-analyze the contents of multiple CSV datasets
- **AI Coding Assistance:** Conscious use of LLMs for debugging and generating code snippets

## Challenges overcome

- Handling encoding issues (e.g., `latin1`) and non-standard separators (`;`) when importing "dirty" CSVs
- Deciding the correct strategy for null values (deleting vs. replacing with mean/previous value) based on context
- Understanding the subtle differences between left, right, inner, and outer joins
- Writing scripts to automatically scan a folder and identify which files contained null values (without opening them one by one)

## Week files

| File | Description |
|------|-------------|
| `1 - W11D5 - Teoria.pdf` | Theory slides: Groupby, MultiIndex, Merge/Join, and AI-assisted coding |
| `2 - W11D5 - Pratica.pdf` | Exercise prompts: Italian Pubs dataset analysis, Employee/Department merges |
| `3 - W11D6 - Teoria.pdf` | Theory slides: Data Cleaning, handling duplicates, strings, and null values |
| `4 - W11D6 - Pratica.pdf` | Exercise prompts: AdventureWorks cleaning and automation with os library |
| `5 - W11D6 - Pratica.ipynb` | Exercise notebook: Script to identify nulls in multiple files and data cleaning |

## Highlight

The Python script that automatically iterates over a folder of `.csv` files to identify which datasets contain null values — a great example of automating repetitive tasks.
