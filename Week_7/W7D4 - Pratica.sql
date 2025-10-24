USE adv;

/* W7D4 - Pratica
 1.Implementa una vista denominata Product al fine di creare unʼanagrafica (dimensione) prodotto completa. 
   La vista, se interrogata o utilizzata come sorgente dati, deve esporre il nome prodotto, 
   il nome della sottocategoria associata e il nome della categoria associata.*/
   
CREATE VIEW Product AS (
SELECT 
    dp.ProductKey,
    dp.EnglishProductName,
    dpsc.EnglishProductSubcategoryName,
    dpc.EnglishProductCategoryName
FROM dimproduct dp
JOIN dimproductsubcategory dpsc ON dp.ProductSubcategoryKey = dpsc.ProductSubcategoryKey
JOIN dimproductcategory dpc ON dpsc.ProductCategoryKey = dpc.ProductCategoryKey
);
   
/* 2. Implementa una vista denominata Reseller al fine di creare unʼanagrafica (dimensione) reseller completa. 
La vista, se interrogata o utilizzata come sorgente dati, deve esporre il nome del reseller, il nome della città e il nome della regione.*/

CREATE VIEW Reseller AS 
SELECT 
    dr.ResellerKey,
    dr.ResellerName,
    dg.City,
    dg.EnglishCountryRegionName
FROM dimreseller dr
JOIN dimgeography dg ON dr.GeographyKey = dg.GeographyKey;

/* 3. Crea una vista denominata Sales che deve restituire la data dellʼordine, 
      il codice documento, la riga di corpo del documento, la quantità venduta, lʼimporto totale e il profitto.*/
      
CREATE VIEW Sales AS
SELECT
    frs.SalesOrderNumber,
    frs.SalesOrderLineNumber,
    frs.OrderDate,
    frs.ResellerKey,
    frs.ProductKey,
    frs.OrderQuantity,
    frs.SalesAmount,
    (frs.SalesAmount - frs.TotalProductCost) AS Revenue
FROM factresellersales frs;
;

