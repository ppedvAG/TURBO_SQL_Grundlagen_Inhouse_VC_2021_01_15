-- TOP Abfragen
-- ORDER BY zwingend notwendig!


-- SYNTAX:
-- SELECT TOP # [percent] * | [Spaltenname, Spaltenname,...] FROM Tabelle [WHERE Bedingung] ORDER BY Spalte

USE Northwind;

SELECT *
FROM Customers

-- nur die erste Zeile ausgeben
SELECT TOP 1 *
FROM Customers
-- ... aber was genau ist die erste Zeile? Daher immer mit ORDER BY arbeiten, wenn man TOP verwendet!
SELECT TOP 1 *
FROM Customers
ORDER BY CustomerID


-- eine Zeile, aber nur bestimmte, nicht alle Spalten:
SELECT TOP 1  CustomerID
			, CompanyName
			, ContactName
			, Phone
FROM Customers
ORDER BY CustomerID


-- beliebig viele Zeilen ausgeben:
SELECT TOP 17  CustomerID
			, CompanyName
			, ContactName
			, Phone
FROM Customers
ORDER BY CustomerID


-- man kann auch die TOP x% abfragen:
SELECT TOP 10 PERCENT *
FROM Customers
ORDER BY CustomerID


SELECT TOP 5 PERCENT 
		  CustomerID
		  , CompanyName
		  , ContactName
		  , Phone
FROM Customers
ORDER BY City


SELECT TOP 10 PERCENT *
FROM Orders
ORDER BY Freight



-- die letzten 3:
SELECT TOP 3 *
FROM Customers
ORDER BY CustomerID DESC -- Reihenfolge mit DESC umkehren