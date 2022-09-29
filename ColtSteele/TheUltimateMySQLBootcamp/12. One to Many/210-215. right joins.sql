-- Right join


-- RIGHT JOIN is used when we want that every row of the second table be included in the final answer
-- But there is a catch here


SELECT * FROM customers RIGHT JOIN orders
ON customers.id = orders.customer_id;

-- This would just be the same as the inner join of these two tables (why ?)
-- REASON:
	-- This is because every row of the second table has a matching entry in the right table






-- VERY VERY IMPORTANT NOTE
-- right join is essentially the same as left join
-- In some SQL lasnguages, there is no such thing as right join




