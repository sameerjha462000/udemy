CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

-- Note the foreign key constraint
-- This would ensure that we cannot enter a data into the `orders` table whose customer_id is not present in the customers table.
-- Simillarily we cannot delete an entry from orders table if there are orders present in the name of that customer.
-- We will see how to deal this later in this section.

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8, 2),
    customer_id INT, -- The reason I gave it this name is because there is a convertion that the foreign key name should include the name of the parent table.
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);


INSERT INTO customers(first_name, last_name, email)
VALUES  ('Boy', 'George', 'george@gmail.com'),
        ('George', 'Michael', 'gm@gmail.com'),
        ('David', 'Bowie', 'david@gmail.com'),
        ('Blue', 'Steele', 'blue@gmail.com'),
        ('Bette', 'Davis', 'bette@aol.com');
        
INSERT INTO orders (order_date, amount, customer_id)
VALUES  ('2016/02/10', 99.99, 1),
        ('2017/11/11', 35.50, 1),
        ('2014/12/12', 800.67, 2),
        ('2015/01/03', 12.50, 2),
        ('1999/04/11', 450.25, 5);


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










