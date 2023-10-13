-- Consider the customers and orders tables
-- Each customers can have multiple orders but an order can belong to only one customer
-- That is why this is a one to many relationship.


-- In customers table we can store in following way 
	-- first_name
	-- last_name
	-- email
	-- order_date
	-- amount

-- But this is not an efficient way of storing data, we should keep our data seperate.
-- So we can create two tables -- customers and orders 
-- customers can have following fields 
	-- customer_id
	-- first_name
	-- last_name
	-- email

-- Simillarily, orders table can have following data
	-- order_id
	-- order_date
	-- amount
	-- customer_id

-- And the last thing -- customer_id in orders is dependent on customer_id in customers. This is done through
-- the concept of foreign keys.








