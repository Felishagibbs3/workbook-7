-- List the product id, product name, unit price and category name of all 
-- products.  Order by category name and within that, by product name. 

SELECT 
	P. ProductID, P.ProductName, P.UnitPrice, C.CategoryName
FROM
	Products P
	JOIN Categories C ON C.categoryID = P.CategoryID;
    
    
-- 2.  List the product id, product name, unit price and supplier name of all 
-- products that cost more than $75.  Order by product name. 
    SELECT 
		ProductID, ProductName, UnitPrice, CompanyName
	FROM
		products P
	INNER JOIN
		Suppliers S  ON P.SupplierID = S.SupplierID
    WHERE
		UnitPrice > 75
	ORDER BY 
		ProductName;
        
        -- Cte de Blaye (ProductID - 38, unitprice 263.50, Company name - Aux Joyeux Ecclsiastiques)
        -- Mish Kobe Niku (9, 97.00, Tokyo Traders)
        -- Sir Rodney's Marmalade, 20, 81.00 Speciality Biscuits
        -- Thringer Rosterbratwurst, 29, 123.7, Plutzer L
        
    
    
    -- 3. List the product id, product name, unit price, category name, and supplier 
-- name of every product.  Order by product name. 

SELECT 
	P.ProductID, P.ProductName, P.UnitPrice, C.CategoryName, S.CompanyName
FROM
	Products p
JOIN 
	Categories c ON P.CategoryID = C.CategoryID
JOIN
	Suppliers S  ON P.SupplierID = S.supplierID
ORDER BY 
	P.ProductName;
-- Product Name - Alice Mutton, Unit Price - 39.00, Category - Meat/Poultry, Company Pavlova, Product ID - 17
-- Aniseed Syrup, 10.00, Condiments, Exotic Liquids, 3
-- Boston Crab Meat, 18.40, Seafood, NE Seafood Cannery, 40
-- Camembert Pierrot, 34.00, Dairy, Gai Pturage, 60
-- Carnarvon Tigers, 62.50, Seafood, Pavlova, 18
-- Chai, 18.00, Beverages, Exotic Liquids, 1



-- 4. What is the product name(s) and categories of the most expensive 
-- products?  HINT:  Find the max price in a subquery and then use that in 
-- your more complex query that joins products with categories. 

SELECT
	ProductName, CategoryID
FROM 
	Products 
WHERE
	UnitPrice = (SELECT
					max(UnitPrice)
				FROM
					products);
				-- Cte de Blaye (263.00)




-- 5. List the order id, ship name, ship address, and shipping company name of 
-- every order that shipped to Germany. 
	SELECT 
		OrderID, ShipName, ShipAddress, ShipVia
	FROM 
		orders
	ORDER BY 
		ShipCountry = "Germany";
        -- ORDERID, ShipName, ShipVia, ShipAdd
        -- 10248, Vins et Alcools Chevalier, 3, 59 rue de l-Abbaye
        -- 10250 Hanari Carnes, 2, Rua do Pao 67
        -- 10251, Victuallies en stock, 1, 2 rue du Commerce, etc
	

-- 6. List the order id, order date, ship name, ship address of all orders that 
-- ordered "Sasquatch Ale"?  
    SELECT 
		OrderID, OrderDate, ShipName, ShipAddress
	FROM 
		orders
	ORDER BY
		orderID = "Sasquatch Ale";
        
        -- 10248-11077
		