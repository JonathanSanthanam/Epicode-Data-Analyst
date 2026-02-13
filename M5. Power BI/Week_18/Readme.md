Week 18 — Power BI Service, Storytelling Avanzato e Cenni di AI

Questa settimana ho completato il percorso Power BI affrontando due macro-argomenti: la pubblicazione e distribuzione dei report tramite Power BI Service, e un'introduzione all'Intelligenza Artificiale con focus sul ruolo del Data Analyst nei processi di ML/AI.

Sul lato Power BI, ho approfondito il workflow completo dalla progettazione in Desktop alla pubblicazione in Service: creazione di workspace, gestione degli accessi e dei ruoli, configurazione del gateway per sorgenti on-premises, schedulazione dell'aggiornamento dei dataset e visualizzazione della data lineage. Sul lato pratico, ho costruito pagine di report avanzate con analisi temporali (Period over Period), gauge chart dinamici, pagine di dettaglio con toggle Table/Matrix tramite bottoni, custom tooltip e parametri dinamici.

La lezione teorica su AI ha coperto i fondamenti: dalla Symbolic AI al Machine Learning (supervised/unsupervised), al Deep Learning, fino ai Large Language Models e al loro utilizzo pratico per l'Exploratory Data Analysis.

Competenze sviluppate:

Comprendere l'architettura Power BI Service e il flusso Desktop → Service
Creare e configurare Workspace per la collaborazione tra utenti
Gestire accessi e assegnare ruoli (Amministratore, Membro, Collaboratore, Visualizzatore)
Configurare il Gateway per collegare sorgenti dati on-premises al cloud
Schedulare l'aggiornamento automatico del dataset (frequenza, timezone, notifiche)
Visualizzare la Data Lineage per tracciare il flusso sorgenti → semantic model → report
Costruire pagine di Time Analysis con Line Chart per confronto Sales vs Sales PY
Utilizzare la variazione percentuale come etichetta dinamica nei grafici
Creare Gauge Chart con valore massimo dinamico calcolato via DAX
Visualizzare il fatturato cumulato per BusinessType con Line Chart
Costruire pagine di dettaglio con toggle Table/Matrix tramite bottoni e bookmark
Creare Custom Tooltip per arricchire le informazioni del report
Implementare parametri dinamici per controllare il valore massimo del misuratore
Comprendere la differenza tra AI, Machine Learning e Deep Learning
Conoscere gli algoritmi fondamentali: Linear Regression, Decision Tree, K-Means
Comprendere l'architettura dei Large Language Models (Transformer, Embeddings, Attention)
Identificare il ruolo del Data Analyst nei processi AI: raccolta dati, pulizia, feature engineering, split train/validation/test
Utilizzare LLM (ChatGPT) per Exploratory Data Analysis su dataset

Sfide risolte:

Calcolare dinamicamente il valore massimo del Gauge Chart per adattarsi ai dati filtrati
Implementare il toggle tra visualizzazione Table e Matrix sulla stessa pagina tramite bottoni e bookmark
Gestire la variazione percentuale YoY come etichetta contestuale nel Line Chart
Comprendere il workflow completo di pubblicazione: workspace → accessi → gateway → scheduling
Collegare i concetti di data cleaning e feature engineering al lavoro quotidiano del Data Analyst

Formule DAX principali:

```
-- Confronto anno precedente
Sales PY = CALCULATE([Sales], PARALLELPERIOD('Calendar'[Date], -12, MONTH))

-- Variazione percentuale YoY
Sales PY % = DIVIDE([Sales] - [Sales PY], [Sales PY])

-- Valore massimo dinamico per Gauge Chart
Valore Massimo = MAX([Sales PY], [Sales]) * 1.10
```

File della settimana:

| File | Descrizione |
|------|-------------|
| 1_-_W18D1_-_Teoria.pdf | Slide teoria: Power BI Service, workspace, gateway, aggiornamento dataset, data lineage |
| 2_-_W18D1_-_Pratica_-_Power_BI_LAB_8.docx | Esercitazione Lab 8: Time Analysis, Gauge Chart, fatturato cumulato |
| 3_-_W18D1_-_Pratica__Extra__-_Power_BI_LAB_9.docx | Esercitazione Lab 9: Pagina dettaglio, toggle Table/Matrix, tooltip, parametri dinamici |
| 4_-_W18D1_-_Pratica_-_Power_BI_LAB_8_e_9_-_Consegna.pbix | File Power BI Lab 8/9 completato |
| 5_-_W18D4_-_Teoria.pdf | Slide teoria: Cenni di AI, Machine Learning, Deep Learning, LLM, ChatGPT per EDA |

Highlight: Questa settimana ha chiuso il cerchio del modulo Power BI, passando dalla progettazione locale alla distribuzione in produzione tramite Power BI Service. Il workflow workspace → accessi → gateway → scheduling rappresenta esattamente ciò che accade in azienda quando un report deve essere fruito dagli stakeholder. L'introduzione all'AI ha contestualizzato il ruolo del Data Analyst nella pipeline di Machine Learning, evidenziando come le competenze di data cleaning, EDA e feature engineering siano propedeutiche all'addestramento degli algoritmi.

---

Week 18 — Power BI Service, Advanced Storytelling and AI Fundamentals

This week I completed the Power BI learning path by covering two main topics: report publishing and distribution through Power BI Service, and an introduction to Artificial Intelligence with a focus on the Data Analyst's role in ML/AI processes.

On the Power BI side, I explored the complete workflow from Desktop design to Service publishing: workspace creation, access management and role assignment, gateway configuration for on-premises data sources, dataset refresh scheduling, and data lineage visualization. On the practical side, I built advanced report pages with time analysis (Period over Period), dynamic gauge charts, detail pages with Table/Matrix toggle via buttons, custom tooltips, and dynamic parameters.

The AI theory lesson covered the fundamentals: from Symbolic AI to Machine Learning (supervised/unsupervised), Deep Learning, Large Language Models, and their practical use for Exploratory Data Analysis.

Skills developed:

Understanding Power BI Service architecture and the Desktop → Service workflow
Creating and configuring Workspaces for team collaboration
Managing access and assigning roles (Admin, Member, Contributor, Viewer)
Configuring the Gateway to connect on-premises data sources to the cloud
Scheduling automatic dataset refresh (frequency, timezone, notifications)
Visualizing Data Lineage to trace the flow from sources → semantic model → report
Building Time Analysis pages with Line Chart for Sales vs Sales PY comparison
Using percentage variation as dynamic labels in charts
Creating Gauge Charts with dynamic maximum value calculated via DAX
Visualizing cumulative revenue by BusinessType with Line Chart
Building detail pages with Table/Matrix toggle via buttons and bookmarks
Creating Custom Tooltips to enrich report information
Implementing dynamic parameters to control gauge chart maximum value
Understanding the difference between AI, Machine Learning, and Deep Learning
Knowing fundamental algorithms: Linear Regression, Decision Tree, K-Means
Understanding Large Language Model architecture (Transformer, Embeddings, Attention)
Identifying the Data Analyst's role in AI processes: data collection, cleaning, feature engineering, train/validation/test split
Using LLMs (ChatGPT) for Exploratory Data Analysis on datasets

Challenges overcome:

Dynamically calculating Gauge Chart maximum value to adapt to filtered data
Implementing Table/Matrix toggle on the same page via buttons and bookmarks
Managing YoY percentage variation as contextual labels in Line Charts
Understanding the complete publishing workflow: workspace → access → gateway → scheduling
Connecting data cleaning and feature engineering concepts to the Data Analyst's daily work

Key DAX formulas:

```
-- Previous year comparison
Sales PY = CALCULATE([Sales], PARALLELPERIOD('Calendar'[Date], -12, MONTH))

-- YoY percentage variation
Sales PY % = DIVIDE([Sales] - [Sales PY], [Sales PY])

-- Dynamic maximum value for Gauge Chart
Valore Massimo = MAX([Sales PY], [Sales]) * 1.10
```

Week files:

| File | Description |
|------|-------------|
| 1_-_W18D1_-_Teoria.pdf | Theory slides: Power BI Service, workspaces, gateway, dataset refresh, data lineage |
| 2_-_W18D1_-_Pratica_-_Power_BI_LAB_8.docx | Lab 8 exercise: Time Analysis, Gauge Chart, cumulative revenue |
| 3_-_W18D1_-_Pratica__Extra__-_Power_BI_LAB_9.docx | Lab 9 exercise: Detail page, Table/Matrix toggle, tooltips, dynamic parameters |
| 4_-_W18D1_-_Pratica_-_Power_BI_LAB_8_e_9_-_Consegna.pbix | Completed Power BI Lab 8/9 file |
| 5_-_W18D4_-_Teoria.pdf | Theory slides: AI fundamentals, Machine Learning, Deep Learning, LLM, ChatGPT for EDA |

Highlight: This week closed the Power BI module loop, moving from local design to production distribution through Power BI Service. The workspace → access → gateway → scheduling workflow represents exactly what happens in a company when a report needs to be consumed by stakeholders. The AI introduction contextualized the Data Analyst's role in the Machine Learning pipeline, highlighting how data cleaning, EDA, and feature engineering skills are foundational to algorithm training.
