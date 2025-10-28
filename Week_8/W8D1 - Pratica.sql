/* W8D1 - Pratica
   Modificare, eliminare i dati Esercizio Schema concettuale. 
   È necessario implementare uno schema che consenta di gestire le anagrafiche degli store di unʼipotetica azienda. 
   Uno store è collocato in una precisa area geografica. In unʼarea geografica possono essere collocati store diversi.*/

SHOW DATABASES;
CREATE DATABASE azienda_store;
USE azienda_store;

# Crea una tabella Region per la gestione delle aree geografiche (ID, città, regione, area geografica, …)
CREATE TABLE region (
	region_id INT AUTO_INCREMENT PRIMARY KEY,
    citta VARCHAR (50),
    regione VARCHAR (50),
    area_geografica VARCHAR (50),
    nazione VARCHAR (50)
);

# Crea una tabella Store per la gestione degli store (ID, nome, data apertura, ecc.)
CREATE TABLE store (
	store_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50),
    data_apertura DATE,
    prodotti VARCHAR (50),
    indirizzo VARCHAR (50),
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES region(region_id)
);
    
# Popola le tabelle con pochi record esemplificativi

INSERT INTO region (citta, regione, area_geografica, nazione) VALUES
('Milano', 'Lombardia', 'Nord', 'Italia'),
('Torino', 'Piemonte', 'Nord', 'Italia'),
('Venezia', 'Veneto', 'Nord', 'Italia'),
('Genova', 'Liguria', 'Nord', 'Italia'),
('Bologna', 'Emilia-Romagna', 'Nord', 'Italia'),
('Firenze', 'Toscana', 'Centro', 'Italia'),
('Ancona', 'Marche', 'Centro', 'Italia'),
('Roma', 'Lazio', 'Centro', 'Italia'),
('Perugia', 'Umbria', 'Centro', 'Italia'),
('Pescara', 'Abruzzo', 'Centro', 'Italia'),
('Napoli', 'Campania', 'Sud', 'Italia'),
('Bari', 'Puglia', 'Sud', 'Italia'),
('Potenza', 'Basilicata', 'Sud', 'Italia'),
('Catanzaro', 'Calabria', 'Sud', 'Italia'),
('Palermo', 'Sicilia', 'Sud', 'Italia'),
('Cagliari', 'Sardegna', 'Sud', 'Italia'),
('Trento', 'Trentino-Alto Adige', 'Nord', 'Italia'),
('Aosta', 'Valle d\'Aosta', 'Nord', 'Italia'),
('Trieste', 'Friuli-Venezia Giulia', 'Nord', 'Italia'),
('Campobasso', 'Molise', 'Sud', 'Italia');

INSERT INTO store (nome, data_apertura, prodotti, indirizzo, region_id) VALUES
('Store Milano Centrale', '2015-04-10', 'Abbigliamento', 'Via Torino 12', 1),
('Torino Fashion', '2018-09-21', 'Scarpe', 'Corso Francia 45', 2),
('Venezia Boutique', '2017-03-05', 'Accessori', 'Calle Larga 22', 3),
('Genova Market', '2016-07-12', 'Elettronica', 'Via Balbi 9', 4),
('Bologna Center', '2020-01-15', 'Casa', 'Via Rizzoli 18', 5),
('Firenze Moda', '2019-10-03', 'Abbigliamento', 'Piazza Duomo 4', 6),
('Ancona Store', '2021-02-19', 'Sport', 'Via Roma 32', 7),
('Roma Centro', '2014-11-09', 'Elettronica', 'Via Nazionale 88', 8),
('Perugia Casa', '2016-05-22', 'Arredamento', 'Via dei Priori 7', 9),
('Pescara Tech', '2022-03-01', 'Telefonia', 'Corso Umberto 25', 10),
('Napoli MegaStore', '2013-12-17', 'Elettrodomestici', 'Via Toledo 100', 11),
('Bari Point', '2020-06-28', 'Abbigliamento', 'Corso Vittorio 50', 12),
('Potenza Life', '2018-08-14', 'Sport', 'Via Pretoria 8', 13),
('Catanzaro Hub', '2019-01-25', 'Accessori', 'Corso Mazzini 15', 14),
('Palermo Store', '2017-11-02', 'Casa', 'Via Libertà 99', 15),
('Cagliari City', '2015-07-10', 'Abbigliamento', 'Via Roma 40', 16),
('Trento Shop', '2021-04-12', 'Elettronica', 'Via Brennero 18', 17),
('Aosta Style', '2022-10-09', 'Scarpe', 'Piazza Chanoux 5', 18),
('Trieste Outlet', '2020-02-20', 'Accessori', 'Via Carducci 27', 19),
('Campobasso Market', '2016-06-11', 'Casa', 'Corso Bucci 10', 20);

SHOW TABLES;
SELECT * FROM region;
SELECT * FROM store;

# Esegui operazioni di aggiornamento, modifica ed eliminazione record
UPDATE region
SET regione = 'Molise'
WHERE citta = 'Pescara';

SELECT region_id FROM region WHERE citta = 'Pescara';

SET SQL_SAFE_UPDATES = 0;

UPDATE region
SET regione = 'Molise'
WHERE region_id = 10;

START TRANSACTION;                                      
UPDATE store
SET prodotti = 'Sport & Outdoor'
WHERE nome = 'Roma Centro';
SELECT * FROM store WHERE nome = 'Roma Centro';
ROLLBACK;

START TRANSACTION;
UPDATE store
SET prodotti = 'Sport & Outdoor'
WHERE store_id = 8;
SELECT * FROM store WHERE store_id = 8;
COMMIT;