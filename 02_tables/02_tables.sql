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
    k_name VARCHAR(45) NOT NULL DEFAULT 'TBA',
    k_age TINYINT,
    K_email VARCHAR(100) UNIQUE,
    k_pw VARCHAR(100)
   
  )    
;

-- Tabellen anzeigen
SHOW TABLES;
-- Struktur anzeigen 
DESCRIBE kunde;

# Datensätze / Zeilen
INSERT INTO kunde(k_id,K_name,k_age,k_email,k_pw) VALUES(DEFAULT,'Meier', 28,'meier@web.de',SHA2('meier12',256));
INSERT INTO kunde(k_id,K_name,k_age,k_email,k_pw) VALUES(DEFAULT,'Hussein', 27,'hussein@web.de',SHA2('hus!#',256));
INSERT INTO kunde(k_id,K_name,k_age,k_email,k_pw) VALUES(DEFAULT,'Li', 26,'li@web.de',SHA2('li1',256));
INSERT INTO kunde(k_id,K_name,k_age,k_email,k_pw) VALUES(DEFAULT,'Li', 40,'li2@web.de',SHA2('li2',256));
INSERT INTO kunde(k_id,K_name,k_age,k_email,k_pw) VALUES(DEFAULT,'Li', 60,'li3@web.de',SHA2('li3',256));

INSERT INTO kunde(k_id,K_name,k_age,k_email) VALUES(DEFAULT,null,null,null);
INSERT INTO kunde() VALUES ();

# Tabellendaten (Inhalte anzeigen)
SELECT *FROM kunde;