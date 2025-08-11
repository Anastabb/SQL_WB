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
    k_name VARCHAR(45),
    k_age TINYINT
  )    
;

-- Tabellen anzeigen
SHOW TABLES;
-- Struktur anzeigen 
DESCRIBE kunde;
