---- AGGREGATFUNKTIONEN
-- aggregate functions

USE Northwind;

SELECT UnitPrice
FROM Products
ORDER BY UnitPrice

-- z�hle, wie viele es insgesamt gibt (77)
SELECT COUNT(ProductID)
FROM Products

-- in wie vielen L�ndern haben wir Kunden?

SELECT COUNT(Country)
FROM Customers
-- FALSCH! Das ergibt so viele, wie insgesamt Kunden, weil bei jedem Kunden ein Country dabeisteht; dass mehrere Kunden in einem Land ans�ssig sein k�nnen, wird dabei nicht ber�cksichtigt

-- in Kombination mit DISTINCT:
SELECT COUNT(DISTINCT Country) AS L�nderanzahl
FROM Customers
-- damit bekommen wir die Anzahl an L�ndern (doppelte Eintr�ge werden nicht gez�hlt)



-- Durchschnittlicher Unitprice (28.8663)
SELECT AVG(UnitPrice)
FROM Products

-- Durchschnittlicher Frachtkostenwert:
SELECT AVG(Freight)
FROM Orders
-- 78,2442

-- niedrigster Preis
SELECT MIN(UnitPrice)
FROM Products

-- h�chster Preis
SELECT MAX(UnitPrice)
FROM Products

-- niedrigster Frachtkostenwert:
SELECT MIN(Freight)
FROM Orders
-- 0,02

-- h�chster Frachtkostenwert:
SELECT MAX(Freight)
FROM Orders
-- 1007,64


-- Summen:

-- Summe ALLER Frachtkosten:
SELECT SUM(Freight)
FROM Orders
-- 64942,69


-- SUMME Frachtkosten PRO Kunde:
SELECT SUM(Freight) AS Freightsum, CustomerID, ShipCountry
FROM Orders
GROUP BY CustomerID, ShipCountry
-- nur 89 Ergebnisse, weil 2 Kunden haben noch nichts bestellt und somit keine Frachtkosten


-- alle Spalten, die wir noch dazuschreiben, bedeuten "pro..."


-- wieviele Kunden gibts PRO Stadt im jeweiligen Land?
-- Country, City, Anzahl Kunden

SELECT *
FROM Customers


SELECT Country, City, COUNT(CustomerID) AS Customers
FROM Customers
GROUP BY Country, City -- PRO ... was? Kunden pro Stadt im jeweiligen Land
ORDER BY Country, City

