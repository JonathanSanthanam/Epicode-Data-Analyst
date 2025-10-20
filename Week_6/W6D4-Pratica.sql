SHOW DATABASES;
USE AdventureWorksDW;
SHOW TABLES;
DESCRIBE dimproduct;

# 1. Esponi lʼanagrafica dei prodotti indicando per ciascun prodotto anche la sua sottocategoria (DimProduct, DimProductSubcategory).
SELECT 
	dp.ProductKey, 
    dp.ProductSubcategoryKey, 
    dp.EnglishProductName, 
    dp.ListPrice,
    dps.EnglishProductSubcategoryName
FROM dimproduct dp
LEFT JOIN dimproductsubcategory dps
ON dp.ProductSubcategoryKey = dps.ProductSubcategoryKey;

# 2. Esponi lʼanagrafica dei prodotti indicando per ciascun prodotto la sua sottocategoria e la sua categoria (DimProduct, DimProductSubcategory, DimProductCategory).
SELECT 
	dp.ProductKey, 
    dp.ProductSubcategoryKey, 
    dp.EnglishProductName, 
    dp.ListPrice,
    dps.EnglishProductSubcategoryName AS Sub_category,
    dpc.EnglishProductCategoryName AS Category
FROM dimproduct dp
LEFT JOIN dimproductsubcategory dps
ON dp.productsubcategorykey = dps.productsubcategorykey
LEFT JOIN dimproductcategory dpc
ON dps.ProductCategoryKey = dpc.ProductCategoryKey;

# 3. Esponi lʼelenco dei soli prodotti venduti (DimProduct, FactResellerSales). 
SELECT 
	dp.ProductKey, 
    dp.ProductSubcategoryKey, 
    dp.EnglishProductName, 
    dp.ListPrice,
    fr.SalesAmount,
    fr.OrderQuantity
FROM dimproduct dp
INNER JOIN factresellersales fr
ON dp.ProductKey = fr.ProductKey;   

# 4. Esponi lʼelenco dei prodotti non venduti (considera i soli prodotti finiti cioè quelli per i quali il campo FinishedGoodsFlag è uguale a 1).
SELECT
	dp.ProductKey, 
    dp.EnglishProductName, 
    dp.ListPrice,
    dp.FinishedGoodsFlag,
    fr.SalesAmount,
    fr.ProductKEY
FROM dimproduct dp
LEFT JOIN factresellersales fr
ON dp.ProductKey = fr.ProductKey
WHERE FinishedGoodsFlag = 1
AND fr.ProductKEY IS NULL;

# 5. Esponi lʼelenco delle transazioni di vendita (FactResellerSales) indicando anche il nome del prodotto venduto (DimProduct)
SELECT
	fr.SalesOrderNumber,
    fr.SalesOrderLineNumber,
	dp.EnglishProductName,
    fr.OrderDate,
    fr.OrderQuantity,
    fr.SalesAmount
FROM factresellersales fr
LEFT JOIN dimproduct dp
ON fr.ProductKey = dp.ProductKey;

# 6. Esponi lʼelenco delle transazioni di vendita indicando la categoria di appartenenza di ciascun prodotto venduto.
SELECT
	fr.SalesOrderLineNumber,
	fr.SalesOrderNumber,
    fr.OrderDate,
	dp.EnglishProductName,
    dps.EnglishProductSubcategoryName,
	dpc.EnglishProductCategoryName,
    fr.OrderQuantity,
    fr.SalesAmount
FROM factresellersales fr
LEFT JOIN dimproduct dp
ON fr.ProductKey = dp.ProductKey
LEFT JOIN dimproductsubcategory dps
ON dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
LEFT JOIN dimproductcategory dpc
ON dps.ProductCategoryKey = dpc.ProductCategoryKey;

# 7. Esplora la tabella DimReseller.
DESCRIBE dimreseller;
SELECT * FROM dimreseller;

# 8. Esponi in output lʼelenco dei reseller indicando, per ciascun reseller, anche la sua area geografica. 
SELECT
	dr.ResellerKey,
    dr.BusinessType,
    dr.ResellerName,
    dg.EnglishCountryRegionName,
    dg.City
FROM dimreseller dr
LEFT JOIN dimgeography dg
ON dr.GeographyKey = dg.GeographyKey;

#8. Esponi lʼelenco delle transazioni di vendita. Il result set deve esporre i campi: 
# SalesOrderNumber, SalesOrderLineNumber, OrderDate, UnitPrice, Quantity, TotalProductCost. 
# Il result set deve anche indicare il nome del prodotto, il nome della categoria del prodotto, il nome del reseller e lʼarea geografica.
SELECT
  frs.SalesOrderNumber,
  frs.SalesOrderLineNumber,
  frs.OrderDate,
  frs.UnitPrice,
  frs.OrderQuantity,
  frs.TotalProductCost,
  dp.EnglishProductName,
  dpc.EnglishProductCategoryName,
  dr.ResellerName,
  dg.EnglishCountryRegionName
FROM factresellersales frs
LEFT JOIN dimproduct dp
  ON dp.ProductKey = frs.ProductKey
LEFT JOIN dimproductsubcategory dps
  ON dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
LEFT JOIN dimproductcategory dpc
  ON dps.ProductCategoryKey = dpc.ProductCategoryKey
LEFT JOIN dimreseller dr
  ON frs.ResellerKey = dr.ResellerKey
LEFT JOIN dimgeography dg
  ON dr.GeographyKey = dg.GeographyKey;