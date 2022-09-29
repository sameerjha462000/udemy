-- Inner join

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


-- /////////////////////////////////////////////////////////////////////  INNER JOIN  ///////////////////////////////////////////////////////////////////////////////////////////////



-- Implicit inner join ===> This first CROSS JOINS them and then selects all the rows where conditions are met

SELECT * FROM customers, orders WHERE customers.id=orders.customer_id;
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- | id | first_name | last_name | email            | id | order_date | amount | customer_id |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- |  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
-- |  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
-- |  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
-- |  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
-- |  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+



SELECT first_name, last_name, amount FROM customers, orders WHERE customers.id=orders.customer_id;
-- +------------+-----------+--------+
-- | first_name | last_name | amount |
-- +------------+-----------+--------+
-- | Boy        | George    |  99.99 |
-- | Boy        | George    |  35.50 |
-- | George     | Michael   | 800.67 |
-- | George     | Michael   |  12.50 |
-- | Bette      | Davis     | 450.25 |
-- +------------+-----------+--------+




-- ////////////////////////////////////////////////////////////////////////////// EXPLICIT INNER JOIN  //////////////////////////////////////////////////////////////////////////////


SELECT first_name, last_name, amount FROM customers
JOIN orders -- When only JOIN keyword is written, it is same as INNER JOIN
	ON customers.id=orders.customer_id;
	-- +------------+-----------+--------+
	-- | first_name | last_name | amount |
	-- +------------+-----------+--------+
	-- | Boy        | George    |  99.99 |
	-- | Boy        | George    |  35.50 |
	-- | George     | Michael   | 800.67 |
	-- | George     | Michael   |  12.50 |
	-- | Bette      | Davis     | 450.25 |
	-- +------------+-----------+--------+


-- WE CAN JOIN THINGS ON ARBITRARY COND BUT WE SHOULD NOT AS THIS DOES NOT MAKE SENSE
-- DO NOT DO THIS

SELECT * FROM customers JOIN orders ON customers.id=orders.id;
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- | id | first_name | last_name | email            | id | order_date | amount | customer_id |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- |  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
-- |  2 | George     | Michael   | gm@gmail.com     |  2 | 2017-11-11 |  35.50 |           1 |
-- |  3 | David      | Bowie     | david@gmail.com  |  3 | 2014-12-12 | 800.67 |           2 |
-- |  4 | Blue       | Steele    | blue@gmail.com   |  4 | 2015-01-03 |  12.50 |           2 |
-- |  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+




-- ROUGH WORK












