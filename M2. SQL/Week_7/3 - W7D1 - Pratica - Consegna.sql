# W7D1 - Pratica

SHOW DATABASES;
USE AdventureWorksDW;
SELECT * FROM dimproduct;

# 1. Scrivi una query per verificare che il campo ProductKey nella tabella DimProduct sia una chiave primaria. 
# Quali considerazioni/ragionamenti è necessario che tu faccia?

SELECT ProductKey
FROM dimproduct
WHERE ProductKey IS NOT NULL;

SELECT ProductKey
FROM dimproduct
WHERE ProductKey IS NULL;

SELECT
	COUNT(ProductKey),
    COUNT(DISTINCT ProductKey)
FROM dimproduct;

# 2. Scrivi una query per verificare che la combinazione dei campi SalesOrderNumber e SalesOrderLineNumber sia una PK.

SELECT * FROM factresellersales;

SELECT 
	COUNT(*),
    SalesOrderNumber,
    SalesOrderLineNumber
FROM factresellersales
GROUP BY SalesOrderNumber,
		 SalesOrderLineNumber
HAVING COUNT(*) > 1;

# 3. Conta il numero transazioni (SalesOrderLineNumber) realizzate ogni giorno a partire dal 1 Gennaio 2020.
SELECT * FROM factresellersales;

SELECT
	OrderDate,
    COUNT(SalesOrderLineNumber)
FROM factresellersales
WHERE OrderDate >= '2020-01-01'
GROUP BY OrderDate;

# 4. Calcola il fatturato totale (FactResellerSales.SalesAmount), 
# la quantità totale venduta (FactResellerSales.OrderQuantity) e 
# il prezzo medio di vendita (FactResellerSales.UnitPrice) per prodotto (DimProduct) 
# a partire dal 1 Gennaio 2020. 
# Il result set deve esporre pertanto il nome del prodotto, il fatturato totale, 
# la quantità totale venduta e il prezzo medio di vendita. I campi in output devono essere parlanti!

SELECT
	dp.EnglishProductName,
	SUM(frs.SalesAmount) AS tot_sales,
    SUM(frs.OrderQuantity) AS tot_sold,
    AVG(frs.UnitPrice) AS avg_unitprice
FROM factresellersales frs
JOIN dimproduct dp
ON frs.ProductKey = dp.ProductKey
WHERE frs.OrderDate >= '2020-01-01'
GROUP BY dp.EnglishProductName;

# 1. Esercizio Schema concettuale Calcola il fatturato totale (FactResellerSales.SalesAmount) 
# e la quantità totale venduta (FactResellerSales.OrderQuantity) per Categoria prodotto (DimProductCategory). 
# Il result set deve esporre pertanto il nome della categoria prodotto, 
# il fatturato totale e la quantità totale venduta. I campi in output devono essere parlanti!

SELECT
	dpc.EnglishProductCategoryName,
	SUM(frs.SalesAmount) AS tot_sales,
    SUM(frs.OrderQuantity) AS tot_quantity
FROM factresellersales frs
JOIN dimproduct dp
ON frs.ProductKey = dp.ProductKey
JOIN dimproductsubcategory dpsc
ON dp.ProductSubcategoryKey = dpsc.ProductSubcategoryKey
JOIN dimproductcategory dpc
ON dpsc.ProductCategoryKey = dpc. ProductCategoryKey
GROUP BY dpc.EnglishProductCategoryName;

# 2. Calcola il fatturato totale per area città (DimGeography.City) 
# realizzato a partire dal 1 Gennaio 2020. 
# Il result set deve esporre lʼelenco delle città con fatturato realizzato superiore a 60K.

SELECT
  dg.City,
  SUM(frs.SalesAmount) AS total_amount
FROM factresellersales frs
JOIN dimreseller dr
ON frs.ResellerKey = dr.ResellerKey
JOIN dimgeography dg
ON dr.GeographyKey = dg.GeographyKey
WHERE frs.OrderDate >= '2020-01-01'
GROUP BY dg.City
HAVING SUM(frs.SalesAmount) > 60000; 
