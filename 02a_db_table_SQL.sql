/* ------  Strukturen ----- */

/* Kommentar 1 */
#  Kommentar 2
-- Kommentar 3

/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* DB, Löschen wenn vorhanden */
#DROP DATABASE IF EXISTS boo;
/* DB, Anlegen wenn nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

SHOW DATABASES;

/* DB auswählen */
USE boo;

SHOW TABLES;

DROP TABLE IF EXISTS coworkers;
CREATE TABLE IF NOT EXISTS coworkers
(
     firstName VARCHAR(20),
     location VARCHAR(20),
     age INT,
     computer VARCHAR(20)
);

SHOW TABLES;

DESCRIBE coworkers;

INSERT INTO coworkers(firstName,location,age,computer) VALUES ("Max","office",35,"PC");
INSERT INTO coworkers(firstName,location,age,computer) VALUES ("Gani","pool",36,"iPad");
INSERT INTO coworkers(firstName,location,age,computer) VALUES ("Sohrab","bed",26,"Mac");

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM coworkers;

/* -- Inhalte Filtern --- */
SELECT * FROM coworkers WHERE location = "pool";

/* -- Inhalte Sortieren --- */
SELECT
firstName AS "Name",
Location AS  "Ort",
age AS "Alter"
FROM coworkers
#WHERE age > 35 AND location = "bed"
#ORDER BY age ASC
ORDER BY age DESC
LIMIT 1
;