# Week 10 — Analisi Dati con Pandas: DataFrame, Serie, Filtri, Null Handling, Groupby, Sorting

Questa settimana è stata il vero ingresso nel mondo dell'analisi dati con Python. Ho iniziato a leggere file, manipolare DataFrame, filtrare righe, gestire valori nulli, raggruppare i dati e creare analisi statistiche solide.

## Competenze sviluppate

- Caricato dataset con `pd.read_csv()` e `pd.read_excel()`
- Letto anteprime con `.head()`, `.tail()`, `.shape()`, `.info()`
- Ottenuto statistiche descrittive con `.describe()`
- Lavorato con le Serie (struttura monodimensionale)
- Selezionato colonne e righe con indexing, slicing e `.loc[]` / `.iloc[]`
- Applicato filtri logici combinando condizioni con `&`, `|`, `~`
- Gestito valori nulli con `.isnull()`, `.notnull()`, `.dropna()`, `.fillna()`
- Ordinato dataset con `.sort_values()`
- Creato aggregazioni con `groupby()` e `.agg()`
- Eseguito conti, somme, medie, min/max, counts sui gruppi
- Salvato DataFrame trasformati in CSV

## Sfide risolte

- Differenza tra Serie e DataFrame e quando usare cosa
- Selezionare righe/colonne senza errori
- Capire come funzionano `.loc[]` e `.iloc[]`
- Creare filtri multipli senza sbagliare parentesi
- Gestire valori nulli in modo consapevole (droppa? riempi? perché?)
- Pulire dataset in modo replicabile
- Raggruppare i dati e calcolare aggregazioni reali
- Ordinare dataset senza modificare l'originale
- Capire quando usare `.agg()` invece di funzioni singole
- Analizzare dataset reali (auto, pokémon, popolazione, traffico, ecc.)

## Esercizi completati

### W10D1 – Teoria

- Struttura dei DataFrame
- Cos'è una Serie e differenze pratiche
- Import CSV e uso della working directory
- Metodo `.info()` per capire struttura + tipi
- Null handling: `isnull`, `notnull`, sum dei null
- Indexing, slicing, colonne singole vs multiple

### W10D1 – Pratica

- Caricato CSV reali da beginner_datasets
- Identificato righe con NaN
- Contato nulli per colonna
- Eliminato righe con dati mancanti quando necessario
- Filtrato dataset in base ai valori
- Usato `.unique()` e `.value_counts()` per analisi rapide

### W10D4 – Teoria

- Sorting avanzato con `sort_values()`
- `groupby`: logica, come funziona, perché è potente
- Aggregazioni multiple con `.agg()`
- Median, variance, std, min/max
- Operazioni su gruppi reali (make, tipo post, categoria, ecc.)

### W10D4 – Pratica

- Eseguito gruppi complessi su dataset reali
- Confrontato gruppi weekend vs weekdays
- Estratto righe con condizioni multiple (`&`, `|`, `~`)
- Trovato valori minimi/massimi per ogni categoria
- Sistemato dati mancanti con `.fillna()` dove aveva senso
- Salvato output puliti in nuovi CSV

## Highlight

Questa settimana ha chiarito: come analizzare dataset veri, come pulire i dati senza spaccare tutto, come combinare filtri, ordinamenti e raggruppamenti, come fare statistiche solide con 3 righe di codice, e come far parlare un DataFrame. È qui che Python inizia davvero a diventare uno strumento da Data Analyst.

---

# Week 10 — Data Analysis with Pandas: DataFrames, Series, Filtering, Null Handling, Groupby, Sorting

This week marked my real entry into data analysis with Python. I learned to load datasets, manipulate DataFrames, filter rows, handle missing values, group data, and build solid statistical analyses.

## Skills developed

- Loaded datasets with `pd.read_csv()` and `pd.read_excel()`
- Used `.head()`, `.tail()`, `.shape()`, `.info()` to inspect data
- Got descriptive stats using `.describe()`
- Worked with Series (1-dimensional data)
- Selected rows/columns with indexing, slicing, `.loc[]`, `.iloc[]`
- Applied logical filters using `&`, `|`, `~`
- Managed missing values with `.isnull()`, `.notnull()`, `.dropna()`, `.fillna()`
- Sorted datasets with `.sort_values()`
- Created aggregations with `groupby()` and `.agg()`
- Calculated counts, sums, means, min/max on groups
- Saved transformed DataFrames to CSV

## Challenges overcome

- Understanding when to use Series vs DataFrame
- Selecting rows/columns correctly without errors
- Using `.loc[]` and `.iloc[]` with confidence
- Building multi-condition filters without parentheses mistakes
- Handling NaN values consciously (drop? fill? why?)
- Cleaning datasets reproducibly
- Grouping and aggregating real-world datasets
- Sorting without altering the original structure
- Using `.agg()` for multi-metric aggregation
- Running analysis on real datasets (automobile, pokémon, population, traffic…)

## Completed exercises

### W10D1 – Theory

- DataFrame structure and logic
- What a Series is and how it differs
- Importing CSV + using working directory
- `.info()` method to inspect structure and types
- Null handling: `isnull`, `notnull`, null counting
- Indexing, slicing, single vs multiple columns

### W10D1 – Practice

- Loaded real CSVs from beginner_datasets
- Found rows containing NaN
- Counted nulls per column
- Dropped null rows when appropriate
- Filtered datasets based on conditions
- Used `.unique()` and `.value_counts()` for fast insights

### W10D4 – Theory

- Advanced sorting with `sort_values()`
- How `groupby` works and why it's powerful
- Multi-aggregation with `.agg()`
- Median, variance, std, min/max
- Real-case group operations (make, post type, categories, etc.)

### W10D4 – Practice

- Performed complex grouping on real datasets
- Compared weekend vs weekday posting activity
- Built multi-condition filters (`&`, `|`, `~`)
- Found min/max values for each group
- Filled missing data when meaningful
- Exported cleaned results to new CSV files

## Highlight

This week clarified: how to analyze real datasets, how to clean data properly, how to combine filters, sorting and grouping, how to perform solid statistics with minimal code, and how to make a DataFrame "speak". This is where Python truly becomes a Data Analyst's tool.
