-- query to list product ID, Product name, and Unit Price from Products
SELECT 
	ProductID,
    ProductName,
    UnitPrice
FROM
	Products;
    
    -- query to list Product ID, Product Name, Unit Price in ascending order by price 
    
SELECT
		ProductID,
		ProductName,
		UnitPrice
FROM
		products
ORDER BY 
		UnitPrice ASC;
        
-- products that are carried that are < $7.50 

SELECT 
		ProductID,
        ProductName,
        UnitPrice
FROM
		products
ORDER BY 
		UnitPrice < 7.50;
        -- Konbu (6.00), Guaran Fantstica (4.50), Geitost (2.50), Filo Mix (7.00)
        -- Tourtire (7.45)
        
-- What are the products that we carry where we have at least 100 units on hand / order in descending order by price

SELECT 
	ProductID,
    ProductName,
    UnitsInStock
FROM 
	products
 WHERE
	UnitsInStock >= 100
ORDER BY 
	UnitsInStock DESC;
    -- highest 125 / lowest 101 ( Rhnbru Klosetbier, Boston Crab, Boysenberry Spread,
    -- Pt Chinois, Sirop d'rable, Geitost, Inlagd Sill, Sasquatch Ale, Gustaf's Knckebrd,
    -- RD Kaviar
    
    -- What are the products that we carry where we have at least 100 units on hand?  
    -- Order them in descending order by price.   If two or more have the same price, 
    -- list those in ascending order by product name.
    
    SELECT 
		ProductID,
        ProductName,
        UnitsInStock
    FROM 
		Products
    WHERE 
		UnitsInStock >= 100
	ORDER BY 
		UnitPrice desc, ProductName asc;
        
        -- 61, 6, 55, 22, 36, 40, 73, 34, 75, 33
        
        
 -- What are the products that we carry where we have no units on hand, but 1 
-- or more units of them on backorder?  Order them by product name. 

SELECT 
	ProductID,
    ProductName,
    UnitsInStock

FROM 
	products

WHERE
	UnitsOnOrder
ORDER BY  
	ProductName;
    
    -- 0 units of Gorgonzola Telino 
    
    -- What is the name of the table that holds the types (categories) of the items 
	-- Northwind sells? 
    -- Categories
    
    -- Write a query that lists all of the columns and all of the rows of the 
	-- categories table?  What is the category id of seafood?
    
    SELECT 
		*
	FROM 
		Categories;
        
        -- 8 for Seafood (Seaweed and Fish)
        
        -- Examine the Products table.  How does it identify the type (category) of 
		-- each item sold?  Write a query to list all of the seafood items we carry. 
SELECT 
	CategoryName,
    Description
FROM 
	categories
WHERE
	CategoryName = "Seafood";
    
    -- seaweed and fish
    
    -- What are the first and last names of all of the Northwind employees? 
    
    SELECT 
		FirstName,
        LastName
    FROM
		employees;
        
        -- Steven Buchanan, Michael Suyama, Robert King, Laura Callahan, Anne Dodsworth
        
        
		-- What employees have "manager" in their titles? 
        
	SELECT 
		Title,
        LastName,
        FirstName
	FROM 
		employees
    ORDER BY 
		title = "manager";
        
        -- Steven Buchanan - Sales Manager
        
        -- List the distinct job titles in employees. 
        
SELECT 
		Title
FROM
		employees;
        -- Sales Manager, Sales Rep (6), VP Sales, Sales Mananger, Inside Sales Coordinator
        
        
-- What employees have a salary that is between $200 0 and $2500? 

SELECT 
	Salary,
    FirstName,
    LastName
FROM 
	employees
WHERE
	salary BETWEEN 2000 AND 2500;
    
-- Michael Suyama (2004.07), Laura Callahan (2100.5), Andrew Fuller (2254.49), Anne Dodsworth (2333.33)

--  List all of the information about all of Northwind's suppliers. 

SELECT 
	*
FROM 
	suppliers;
    
    -- Exotic Liquids, NO Cajun Delights, Grandma Kelly's, Tokyo Traders, Las Cabras
    -- Mayum's, Pavlova, Speciality Biscuits, PB Knckerd Ab, Refrescos Americanas, Heli Swaren, Plutzer AG
    -- Formaggi, Norske Meinier, Nord-Ost-fisch Handelgessellschaft, Big Foot, 

	
    
        
	
    
		
    
    
	
   
        

    
    


       
        