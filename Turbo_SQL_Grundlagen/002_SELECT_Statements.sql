-- ***************************** SELECT STATEMENTS ***************************************
-- immer überprüfen, welche Datenbank verwendet wird!

USE Northwind


-- Datenbankdiagramm für Übersicht über Tabellen
-- Object Explorer -> Databases -> DB Name -> Database Diagrams--



-- Wildcard * (alles auswählen)
-- * sollte in der Realität NICHT verwendet werden. Auch, wenn die gesamte Tabelle ausgegeben werden soll, sollten stattdessen die Spaltennamen angegeben werden.


-- wählt alle Spalten aus (für Übungen oder um schnell etwas zu testen - ansonsten Spalten angeben!)
SELECT *
FROM Customers


-- wählt die Spalte "CompanyName" aus der Customers Tabelle aus
SELECT CompanyName
FROM Customers


-- wählt mehrere Spalten aus:
SELECT	  CompanyName
		, ContactName
		, Phone
FROM Customers



-- ************************************** ALIAS vergeben **************************************
SELECT	  CompanyName AS Firmenname
		, ContactName AS Kontaktperson
		, Phone AS Telefonnummer
FROM Customers

-- AS darf weggelassen werden, empfiehlt sich aber zwecks besserer Lesbarkeit



-- **************************** SIMPLE SELECT *************************************************

SELECT 100

SELECT 'Testtext'

SELECT 100*3


-- FORMAT?
SELECT 100, 
		'Testtext', 
		'mehr Text', -- in der letzten Zeile darf kein Komma stehen; Problem, wenn auskommentiert wird:
		--'Info'


-- Fehlermeldung, wegen Kommas oben:
SELECT    100
		, 'Testtext'
		, 'mehr Text'
		--, 'Info'
-- bisschen schöner so, dann kann alles auskommentiert werden und funktioniert trotzdem.


SELECT	  100 AS Zahl
		, 'Testtext' AS Text
		, 100*3 AS Berechnung
