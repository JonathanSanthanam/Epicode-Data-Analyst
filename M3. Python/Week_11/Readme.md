Week 11 — Pandas: Data Cleaning, Missing Values, Date Handling

Questa settimana è stata tutta pulizia dati, nulli, gestione testi, date, numeri.
È il punto in cui Pandas diventa “strumento vero”, non solo un DataFrame grosso da guardare.

Competenze sviluppate

- Rimosso duplicati con .duplicated() e .drop_duplicates().
- Gestiti testi con .str.upper(), .str.lower(), .str.split(), .str.contains(), .str.replace(), .str.extract().
- Usate espressioni regolari (RegEx) per trovare pattern nei testi.
- Convertite date con pd.to_datetime() e estratte parti con .dt.year, .dt.month, .dt.day, ecc.
- Manipolati numeri con .round() e .clip().
- Identificati e gestiti dati nulli con .isna(), .dropna(), .fillna().
- Separato nulli espliciti (NaN, None, NaT) vs impliciti (stringhe vuote).
- Pulito dataset reali: titanic, automobile, facebook, ecc.

Sfide risolte

- Capito perché .drop_duplicates() non modifica l’originale se non riassegni.
- Gestito dataset pieni di valori mancanti in più formati.
- Sistemato colonne testuali sporche o non uniformi.
- Convertito date ambigue (giorno/mese/anno).
- Eliminato o riempito valori nulli seguendo una logica solida (mean, median, mode, oppure analisi personalizzata).
- Identificato pattern complessi nei testi usando RegEx.
- Pulito dataset con metodi Pandas SENZA rompere il DataFrame originale.

Esercizi completati
W11D5 – Teoria + Pratica

- Individuazione e rimozione duplicati.
- Manipolazione testi con metodi .str.
- Introduzione a RegEx e applicazione su colonne con .str.contains() e .str.extract().
- Pulizia di colonne sporche, uniformazione formati.
- Esercizi sui dati Titanic via SQL + Pandas.

W11D6 – Teoria + Pratica

- Conversione date con pd.to_datetime().
- Estrazione parti della data (.year, .month, .day, .dayofweek, .dayofyear).
- Pulizia valori numerici: arrotondamenti, limiti, outliers.
- Identificazione e gestione nulli espliciti/impliciti.
- Uso combinato di .replace(), .isna(), .dropna(), .fillna().
- Progettazione di strategie intelligenti per sostituire i nulli (logiche per singola colonna).
- Analisi finale: scandire directory, caricare ogni CSV, trovare quali contengono nulli.

Highlight

Week 11 è dove smetti di “leggere i dati” e inizi a modellare i dati.
È dove impari che:

- i dati sporchi sono la normalità
- Pandas ha strumenti per ogni tipo di casino
- puoi sistemare testi, date, numeri, nulli senza rompere la struttura
- cleaning ≠ cancellare tutto, ma scegliere cosa ha senso per la tua analisi

È la settimana in cui inizi a ragionare da Data Analyst vero.

-----------------------------------------
Week 11 — Pandas: Data Cleaning, Missing Values, Date Handling

Skills developed

- Removed duplicates using .duplicated() and .drop_duplicates().
- Cleaned text fields using .str.upper(), .str.lower(), .str.split(), .str.contains(), .str.replace(), .str.extract().
- Used Regular Expressions to detect patterns in text.
- Converted dates with pd.to_datetime() and extracted date components.
- Cleaned up numeric columns using .round() and .clip().
- Detected and handled missing values with .isna(), .dropna(), .fillna().
- Understood explicit nulls (NaN / None / NaT) vs implicit nulls (empty strings).
- Cleaned real datasets: titanic, automobile, facebook, etc.

Challenges solved

- Understood why .drop_duplicates() doesn’t modify the original unless reassigned.
- Cleaned datasets full of missing values in multiple formats.
- Normalized messy text columns.
- Correctly converted ambiguous date formats.
- Built logic-based strategies to fill missing values.
- Extracted complex patterns using RegEx.
- Cleaned datasets without breaking the original DataFrame.

Completed exercises
W11D5 – Theory + Practice

- Duplicate detection and removal.
- Text handling with .str methods.
- RegEx basics applied to real columns with .str.contains() and .str.extract().
- Cleaning and standardizing messy textual data.
- Titanic SQL + Pandas exercises.

W11D6 – Theory + Practice

- Date parsing with pd.to_datetime().
- Extracting .year, .month, .day, .dayofweek, .dayofyear.
- Numeric cleaning: rounding, clamping, handling outliers.
- Detecting explicit and implicit nulls.
- Using .replace(), .isna(), .dropna(), .fillna() strategically.
- Logical null replacement based on data analysis.
- Final challenge: scan directory, load all CSVs, detect which ones have nulls.

Highlight

Week 11 is where you stop “reading data” and start shaping data.

This week teaches you that:

- messy data is the default
- Pandas has a tool for every problem
- you can clean text, dates, numbers, and nulls safely
- cleaning = intelligent decision-making, not deleting everything
- A major step toward becoming a real Data Analyst.
