# Connettiti al db aziendale o esegui il restore del db
SHOW databases;
USE AdventureWorksDW;
SHOW TABLES;
DESCRIBE dimproduct;

# Esplora la tabelle dei prodotti (DimProduct)
SELECT * FROM dimproduct;

# Interroga la tabella dei prodotti (DimProduct) ed esponi in output i campi 
# ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag. Il result set deve essere parlante per cui assegna un alias se lo ritieni opportuno.
SELECT
	ProductKey AS Id_product,
    ProductAlternateKey AS alt_Id_product,
    EnglishProductName AS product_name,
    Color,
    StandardCost AS cost,
    FinishedGoodsFlag AS finished_product
FROM dimproduct;

# Partendo dalla query scritta nel passaggio precedente, esponi in output i soli prodotti finiti cioè quelli per cui il campo FinishedGoodsFlag è uguale a 1.
SELECT
	ProductKey AS Id_product,
    ProductAlternateKey AS alt_Id_product,
    EnglishProductName AS product_name,
    Color,
    StandardCost AS cost,
    FinishedGoodsFlag AS finished_product
FROM dimproduct
WHERE FinishedGoodsFlag = 1;

# Scrivi una nuova query al fine di esporre in output i prodotti il cui codice modello (ProductAlternateKey) comincia con FR oppure BK. 
# Il result set deve contenere il codice prodotto (ProductKey), il modello, il nome del prodotto, il costo standard (StandardCost) e il prezzo di listino (ListPrice).
SELECT 
	ProductKey,
    ModelName,
    EnglishProductName as ProductName,
    StandardCost,
    ListPrice
FROM dimproduct
WHERE ProductAlternateKey LIKE "FR%"
OR ProductAlternateKey LIKE "BK%";

# Arricchisci il risultato della query scritta nel passaggio precedente del Markup applicato dallʼazienda (ListPrice - StandardCost)
SELECT 
	ProductKey,
    ModelName,
    EnglishProductName as ProductName,
    StandardCost,
    ListPrice,
    ListPrice - StandardCost AS Markup
FROM dimproduct
WHERE ProductAlternateKey LIKE "FR%"
OR ProductAlternateKey LIKE "BK%";

# Scrivi unʼaltra query al fine di esporre lʼelenco dei prodotti finiti il cui prezzo di listino è compreso tra 1000 e 2000.
SELECT 
	ProductKey,
    ProductAlternateKey,
    EnglishProductName,
    FinishedGoodsFlag,
    ListPrice
FROM dimproduct
WHERE ListPrice 
	BETWEEN 1000 AND 2000
    AND FinishedGoodsFlag = 1;
    
# Esplora la tabella degli impiegati aziendali (DimEmployee)
SELECT * FROM dimemployee;

# Esponi, interrogando la tabella degli impiegati aziendali, l elenco dei soli agenti. Gli agenti sono i dipendenti per i quali il campo SalespersonFlag e uguale a 1.
SELECT
	EmployeeKey,
    FirstName,
    LastName,
    MiddleName,
    Title,
    Position,
	SalespersonFlag
FROM dimemployee
WHERE SalespersonFlag = 1;

# Interroga la tabella delle vendite (FactResellerSales). 
# Esponi in output lʼelenco delle transazioni registrate a partire dal 1 gennaio 2020 dei soli codici prodotto: 597, 598, 477, 214. 
# Calcola per ciascuna transazione il profitto (SalesAmount - TotalProductCost).
SELECT * FROM factresellersales;

SELECT 
	SalesOrderNumber,
    SalesOrderLineNumber,
    OrderDate,
    DueDate,
    ShipDate,
    ProductKey,
    SalesAmount,
    TotalProductCost,
    SalesAmount - TotalProductCost AS Revenue
FROM factresellersales
WHERE OrderDate >= "2020-01-01"
	AND ProductKey IN (597, 598, 477, 214);