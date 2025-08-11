\! cls 

-- DBs anzeigen
SHOW DATABASES;

-- DB anlegen
CREATE DATABASE IF NOT EXISTS boo;

-- DB wechsln 
USE boo;

-- Tabelle löschen, falls existnet 
-- nur bei Test / Entwicklung
DROP TABLE IF EXISTS kunde;
-- Tabelle anlegen
CREATE Table IF NOT EXISTS kunde 
  (  
    k_id INT AUTO_INCREMENT PRIMARY KEY,  
    k_name VARCHAR(45),
    k_age TINYINT
  )    
;

-- Tabellen anzeigen
SHOW TABLES;
-- Struktur anzeigen 
DESCRIBE kunde;

# Datensätze / Zeilen
INSERT INTO kunde(k_id,K_name,k_age) VALUES(DEFAULT,"Meier", 28);
INSERT INTO kunde(k_id,K_name,k_age) VALUES(DEFAULT,"Hussein", 27);
INSERT INTO kunde(k_id,K_name,k_age) VALUES(DEFAULT,"Li", 26);
INSERT INTO kunde(k_id,K_name,k_age) VALUES(DEFAULT,"Li", 40);
INSERT INTO kunde(k_id,K_name,k_age) VALUES(DEFAULT,"Li", 60);


# Tabellendaten (Inhalte anzeigen)
SELECT *FROM kunde;