-- A cross join is just the same as the cartesian product of the tables.

-- First let us see our data

SELECT * FROM customers;
-- +----+------------+-----------+------------------+
-- | id | first_name | last_name | email            |
-- +----+------------+-----------+------------------+
-- |  1 | Boy        | George    | george@gmail.com |
-- |  2 | George     | Michael   | gm@gmail.com     |
-- |  3 | David      | Bowie     | david@gmail.com  |
-- |  4 | Blue       | Steele    | blue@gmail.com   |
-- |  5 | Bette      | Davis     | bette@aol.com    |
-- +----+------------+-----------+------------------+

SELECT * FROM orders;
-- +----+------------+--------+-------------+
-- | id | order_date | amount | customer_id |
-- +----+------------+--------+-------------+
-- |  1 | 2016-02-10 |  99.99 |           1 |
-- |  2 | 2017-11-11 |  35.50 |           1 |
-- |  3 | 2014-12-12 | 800.67 |           2 |
-- |  4 | 2015-01-03 |  12.50 |           2 |
-- |  5 | 1999-04-11 | 450.25 |           5 |
-- +----+------------+--------+-------------+


-- Let us say we want to find all the orders of boy george. So we can do this like this
	-- First find the customer id of boy george
	-- Then using this customer id, find the orders that were made

	SELECT id FROM customers WHERE last_name = 'George';
	-- +----+
	-- | id |
	-- +----+
	-- |  1 |
	-- +----+
	SELECT * FROM orders WHERE customer_id=1;
	-- +----+------------+--------+-------------+
	-- | id | order_date | amount | customer_id |
	-- +----+------------+--------+-------------+
	-- |  1 | 2016-02-10 |  99.99 |           1 |
	-- |  2 | 2017-11-11 |  35.50 |           1 |
	-- +----+------------+--------+-------------+


	-- We can also do this using subquery methods;

	SELECT * FROM orders WHERE customer_id=
	(
		SELECT id FROM customers WHERE last_name='George'
	);
	-- +----+------------+--------+-------------+
	-- | id | order_date | amount | customer_id |
	-- +----+------------+--------+-------------+
	-- |  1 | 2016-02-10 |  99.99 |           1 |
	-- |  2 | 2017-11-11 |  35.50 |           1 |
	-- +----+------------+--------+-------------+




-- CROSS JOIN
	-- This picks every row of first table and then joins it with every row of second table and gives us the resulting table.

SELECT * FROM customers, orders; -- This is same as SELECT * FROM customers CROSS JOIN orders;
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- | id | first_name | last_name | email            | id | order_date | amount | customer_id |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- |  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
-- |  2 | George     | Michael   | gm@gmail.com     |  1 | 2016-02-10 |  99.99 |           1 |
-- |  3 | David      | Bowie     | david@gmail.com  |  1 | 2016-02-10 |  99.99 |           1 |
-- |  4 | Blue       | Steele    | blue@gmail.com   |  1 | 2016-02-10 |  99.99 |           1 |
-- |  5 | Bette      | Davis     | bette@aol.com    |  1 | 2016-02-10 |  99.99 |           1 |
-- |  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
-- |  2 | George     | Michael   | gm@gmail.com     |  2 | 2017-11-11 |  35.50 |           1 |
-- |  3 | David      | Bowie     | david@gmail.com  |  2 | 2017-11-11 |  35.50 |           1 |
-- |  4 | Blue       | Steele    | blue@gmail.com   |  2 | 2017-11-11 |  35.50 |           1 |
-- |  5 | Bette      | Davis     | bette@aol.com    |  2 | 2017-11-11 |  35.50 |           1 |
-- |  1 | Boy        | George    | george@gmail.com |  3 | 2014-12-12 | 800.67 |           2 |
-- |  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
-- |  3 | David      | Bowie     | david@gmail.com  |  3 | 2014-12-12 | 800.67 |           2 |
-- |  4 | Blue       | Steele    | blue@gmail.com   |  3 | 2014-12-12 | 800.67 |           2 |
-- |  5 | Bette      | Davis     | bette@aol.com    |  3 | 2014-12-12 | 800.67 |           2 |
-- |  1 | Boy        | George    | george@gmail.com |  4 | 2015-01-03 |  12.50 |           2 |
-- |  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
-- |  3 | David      | Bowie     | david@gmail.com  |  4 | 2015-01-03 |  12.50 |           2 |
-- |  4 | Blue       | Steele    | blue@gmail.com   |  4 | 2015-01-03 |  12.50 |           2 |
-- |  5 | Bette      | Davis     | bette@aol.com    |  4 | 2015-01-03 |  12.50 |           2 |
-- |  1 | Boy        | George    | george@gmail.com |  5 | 1999-04-11 | 450.25 |           5 |
-- |  2 | George     | Michael   | gm@gmail.com     |  5 | 1999-04-11 | 450.25 |           5 |
-- |  3 | David      | Bowie     | david@gmail.com  |  5 | 1999-04-11 | 450.25 |           5 |
-- |  4 | Blue       | Steele    | blue@gmail.com   |  5 | 1999-04-11 | 450.25 |           5 |
-- |  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+



