-- 1. What is the product name(s) of the most expensive products?  HINT:  Find 
-- the max price in a subquery and then use that value to find products whose 
-- price equals that value. 
SELECT
	productName,
    UnitPrice
FROM
	products
WHERE 
	UnitPrice = (SELECT
					MAX(UnitPrice)
                    FROM 
						products);
                        
                        -- Cte de Blaye 263

-- 2. What is the order id, shipping name and shipping address of all orders 
-- shipped via "Federal Shipping"?  HINT:  Find the shipper id of "Federal 
-- Shipping" in a subquery and then use that value to find the orders that 
-- used that shipper. 
SELECT 
	orderID,
    ShipName,
    ShipAddress,
    ShipVia
FROM
	orders

WHERE
	ShipVia = (SELECT
				ShipperID
				FROM 
					shippers
				WHERE 
					CompanyName = "Federal Shipping");
                    
    


-- 3. What are the order ids of the orders that ordered "Sasquatch Ale"?  HINT:   
-- Find the product id of "Sasquatch Ale" in a subquery and then use that 
-- value to find the matching orders from the `order details` table.  Because 
--  `order details` table has a space in its name, you will need to surround 
-- it with back ticks in the FROM clause. 

SELECT 
	orderID, productID
FROM
	'Order Details'

WHERE
	ProductID = ( SELECT
					productID
				FROM 
					products
				WHERE 
					productName = "Sasquatch Ale");
                    
			orders
				

	


-- 4. What is the name of the employee that sold order 10266? 

SELECT
	firstName, lastName
FROM 
	employees
WHERE 
	EmployeeID = (Select
					EmployeeID
				FROM 
					orders
				WHERE 
					orderID = 10266);
                    
                    -- Janet Leverling
	



-- 5. What is the name of the customer that bought order 10266? 
SELECT
	ContactName
FROM 
	customers
WHERE 
	CustomerID = (Select
					CustomerID
				FROM 
					orders
				WHERE 
					orderID = 10266);
                    
                    -- Pirkko Koskitalo

