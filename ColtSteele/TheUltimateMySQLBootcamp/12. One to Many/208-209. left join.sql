-- We can also use other functions with joins

SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
	ON customers.id=orders.customer_id
ORDER BY order_date;
-- +------------+-----------+------------+--------+
-- | first_name | last_name | order_date | amount |
-- +------------+-----------+------------+--------+
-- | Bette      | Davis     | 1999-04-11 | 450.25 | -- This shows that Bette Davis made the recent order
-- | George     | Michael   | 2014-12-12 | 800.67 |
-- | George     | Michael   | 2015-01-03 |  12.50 |
-- | Boy        | George    | 2016-02-10 |  99.99 |
-- | Boy        | George    | 2017-11-11 |  35.50 |
-- +------------+-----------+------------+--------+



-- We can also find the average amount spent by each customer using GROUP BY and AGGREGATE FUNCTION
SELECT first_name, last_name, AVG(amount) AS 'average amount spent'
FROM customers
JOIN orders
	ON customers.id = orders.customer_id
GROUP BY first_name, last_name
ORDER BY order_date;
-- +------------+-----------+----------------------+
-- | first_name | last_name | average amount spent |
-- +------------+-----------+----------------------+
-- | Bette      | Davis     |           450.250000 |
-- | George     | Michael   |           406.585000 |
-- | Boy        | George    |            67.745000 |
-- +------------+-----------+----------------------+


-- Let us find the total amount spend by each customer
SELECT first_name, last_name, SUM(amount) AS total_spent
FROM customers
JOIN orders
	ON customers.id=orders.customer_id
GROUP BY first_name, last_name
ORDER BY total_spent;
-- +------------+-----------+-------------+
-- | first_name | last_name | total_spent |
-- +------------+-----------+-------------+
-- | Boy        | George    |      135.49 |
-- | Bette      | Davis     |      450.25 |
-- | George     | Michael   |      813.17 |
-- +------------+-----------+-------------+






-- ////////////////////////////////////////////////////////////////////////////////// LEFT JOIN ///////////////////////////////////////////////////////////////////////////////////////

-- It will take every row from first table and if it does not find any matching value from the second table, still it would include the row in the final answer

SELECT first_name, last_name, order_date, amount FROM customers LEFT JOIN orders
ON customers.id=orders.customer_id;
-- +------------+-----------+------------+--------+
-- | first_name | last_name | order_date | amount |
-- +------------+-----------+------------+--------+
-- | Boy        | George    | 2016-02-10 |  99.99 |
-- | Boy        | George    | 2017-11-11 |  35.50 |
-- | George     | Michael   | 2014-12-12 | 800.67 |
-- | George     | Michael   | 2015-01-03 |  12.50 |
-- | Bette      | Davis     | 1999-04-11 | 450.25 |
-- | David      | Bowie     | NULL       |   NULL | -- This means that `David Bowie` and `Blue Steele` never placed order but still they have been included in this table
-- | Blue       | Steele    | NULL       |   NULL |
-- +------------+-----------+------------+--------+

SELECT first_name,last_name, order_date, SUM(amount) FROM customers LEFT JOIN orders
ON customers.id=orders.customer_id
GROUP BY customers.id;
-- +------------+-----------+-------------+
-- | first_name | last_name | SUM(amount) |
-- +------------+-----------+-------------+
-- | Boy        | George    |      135.49 |
-- | George     | Michael   |      813.17 |
-- | David      | Bowie     |        NULL |
-- | Blue       | Steele    |        NULL |
-- | Bette      | Davis     |      450.25 |
-- +------------+-----------+-------------+



-- ///////////////////////////////////// IN THE ABOVE WAY IS THERE A WAY TO CHANGE NULL TO 0 -- YES /////////////////////////////////////////////////////////////////////
SELECT first_name,last_name, IFNULL(SUM(amount),0) AS total_spent FROM customers LEFT JOIN orders
ON customers.id=orders.customer_id
GROUP BY customers.id;
-- +------------+-----------+-------------+
-- | first_name | last_name | total_spent |
-- +------------+-----------+-------------+
-- | Boy        | George    |      135.49 |
-- | George     | Michael   |      813.17 |
-- | David      | Bowie     |        0.00 |
-- | Blue       | Steele    |        0.00 |
-- | Bette      | Davis     |      450.25 |
-- +------------+-----------+-------------+


SELECT first_name,last_name, IFNULL(SUM(amount),0) AS total_spent FROM customers LEFT JOIN orders
ON customers.id=orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;
-- +------------+-----------+-------------+
-- | first_name | last_name | total_spent |
-- +------------+-----------+-------------+
-- | Blue       | Steele    |        0.00 |
-- | David      | Bowie     |        0.00 |
-- | Boy        | George    |      135.49 |
-- | Bette      | Davis     |      450.25 |
-- | George     | Michael   |      813.17 |
-- +------------+-----------+-------------+



















