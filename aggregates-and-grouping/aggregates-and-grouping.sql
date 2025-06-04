-- 1. How many suppliers are there?  Use a query!
Select 
	count(*) as SupplierCount
From 
		suppliers;
-- 29 suppliers found 

-- 2. What is the sum of all the employee's salaries? 
Select
	sum(salary)
from
	employees;
-- 20362.92

-- 3. What is the price of the cheapest item that Northwind sells?  
-- using the "as" is a way to rename the tab for most customized tab naming
SELECT 
    MIN(UnitPrice) as "CheapestPrice"
 FROM
	products;
-- 2.50

-- 4. What is the average price of items that Northwind sells?  
SELECT 
	AVG(UnitPrice)
FROM
	products;
    -- 28.86

-- 5. What is the price of the most expensive item that Northwind sells? 
SELECT 
	MAX(UnitPrice)
FROM
	products;
    -- 263.50

-- 6. What is the supplier ID of each supplier and the number of items they 
-- supply? You can answer this query by only looking at the Products table. 
SELECT 
	 distinct supplierID,
     count(*)
FROM
	products
GROUP BY
	supplierID;
    -- 1-29

-- 7. What is the category ID of each category and the average price of each item 
-- in the category?  You can answer this query by only looking at the Products 

Select
	CategoryID
    
FROM
	products;
-- 1-8 


-- 8. For suppliers that provide at least 5 items to Northwind, what is the 
-- supplier ID of each supplier and the number of items they supply?  You 
-- can answer this query by only looking at the Products table. 

SELECT 
	SupplierID
    
FROM 
	products
GROUP BY 
	SupplierID
HAVING 
	Count(*) >= 5;
    
    -- 7 + 12
	

-- 9. List the product id, product name, and inventory value (calculated by 
-- multiplying unit price by the number of units on hand).  Sort the results in 
-- descending order by value.  If two or more have the same value, order by 
-- product name. 

SELECT 
productID,
ProductName,
    (UnitPrice * UnitsInStock) AS InventoryValue
FROM 
	products
GROUP BY 
	UnitPrice desc
ORDER BY 
	InventoryValue;
    
