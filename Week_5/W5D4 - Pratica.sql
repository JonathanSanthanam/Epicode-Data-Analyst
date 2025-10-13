CREATE DATABASE Epicode;
USE Epicode;

CREATE TABLE Studente (
id_studente INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (30),
last_name VARCHAR (30),
email VARCHAR (30)
);

CREATE TABLE Corso (
id_corso INT AUTO_INCREMENT PRIMARY KEY,
titolo VARCHAR (50),
durata INT,
costo DECIMAL (6,2)
);

CREATE TABLE Iscrizione (
id_iscrizione INT AUTO_INCREMENT PRIMARY KEY,
data_iscrizione DATE,
stato VARCHAR (20),
id_studente INT,
id_corso INT,
FOREIGN KEY (id_studente) REFERENCES Studente(id_studente),
FOREIGN KEY (id_corso) REFERENCES Corso(id_corso)
);

CREATE TABLE Docente (
id_docente  INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (30),
last_name VARCHAR (30),
id_corso INT,
FOREIGN KEY (id_corso) REFERENCES Corso(id_corso)
);

INSERT INTO Studente (first_name, last_name, email) VALUES
('Luca', 'Rossi', 'l.rossi@example.com'),
('Giulia', 'Bianchi', 'g.bianchi@example.com'),
('Marco', 'Verdi', 'm.verdi@example.com');

INSERT INTO Corso (titolo, durata, costo) VALUES
('SQL Base', 24, 199.90),
('Excel Avanzato', 16, 149.00),
('Data Modeling ER', 20, 179.50);

INSERT INTO Iscrizione (data_iscrizione, stato, id_studente, id_corso) VALUES
('2025-01-10', 'attiva', 1, 1),
('2025-01-11', 'attiva', 2, 1),
('2025-01-12', 'attiva', 2, 2),
('2025-01-13', 'conclusa', 1, 2),
('2025-01-14', 'attiva', 3, 3);

INSERT INTO Docente (first_name, last_name, id_corso) VALUES
('Anna', 'Neri', 1),
('Paolo', 'Gentile', 1),
('Sara', 'Blu', 2),
('Davide', 'Ferri', 3);

SELECT * FROM Studente;
