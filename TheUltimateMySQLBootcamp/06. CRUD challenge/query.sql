-- TASK := 

-- 1. create a new database shirts_db.
-- 2. create a new table shirts  with following columns

-- 	(a) shirt_id -- primary key && auto increments && cannot be null
-- 	(b) article -- shows the type of shirt
-- 	(c) color
-- 	(d) shirt_size
-- 	(e) last_worn
-- 3. insert the following values into the shirts
-- 	('t-shirt', 'white', 'S', 10),
-- 	('t-shirt', 'green', 'S', 200),
-- 	('polo shirt', 'black', 'M', 10),
-- 	('tank top', 'blue', 'S', 50),
-- 	('t-shirt', 'pink', 'S', 0),
-- 	('polo shirt', 'red', 'M', 5),
-- 	('tank top', 'white', 'S', 200),
-- 	('tank top', 'blue', 'M', 15)
-- 4. Now do the following tasks:

-- 	(a) Get all the data with a single line.
-- 	(b) Add a purple shirt of size 'M' which was worn last 50 days ago.
-- 	(c) Select all shirts but only print out article and color.
-- 	(d) Select all medium shirts and print out everything except shirt_id.
-- 	(e) Update all polo shirts and change their size to 'L'.
-- 	(f) Update the shirt last worn 15 days ago and change last_worn to 0.
-- 	(g) Update all white shirts and change size to 'XS' and color to 'off white'.
-- 	(h) Delete all old shirts (last_worn = 200 days).
-- 	(i) Delete all tank tops.
-- 	(j) Delete all shirts.
-- 	(k) Drop the entire shirts table.








-- //////////////////////////////////////////SOLUTION///////////////////////////////////////////

SHOW DATABASES;
-- +--------------------+
-- | Database           |
-- +--------------------+
-- | information_schema |
-- | mysql              |
-- | performance_schema |
-- | sys                |
-- +--------------------+

CREATE DATABASE shirts_db;

SHOW DATABASES;
-- +--------------------+
-- | Database           |
-- +--------------------+
-- | information_schema |
-- | mysql              |
-- | performance_schema |
-- | shirts_db          |
-- | sys                |
-- +--------------------+

SELECT DATABASE();
-- +------------+
-- | database() |
-- +------------+
-- | NULL       |
-- +------------+

USE shirts_db;

SELECT DATABASE(); -- shows current database
-- +------------+
-- | database() |
-- +------------+
-- | shirts_db  |
-- +------------+

SHOW TABLES FROM shirts_db; -- empty set

CREATE TABLE shirts(
	shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	article VARCHAR(100),
	color VARCHAR(100),
	shirt_size VARCHAR(100),
	last_worn INT
);

DESC shirts;
-- +-------------+--------------+------+-----+---------+----------------+
-- | Field       | Type         | Null | Key | Default | Extra          |
-- +-------------+--------------+------+-----+---------+----------------+
-- | shirt_id    | int(11)      | NO   | PRI | NULL    | auto_increment |
-- | article     | varchar(100) | YES  |     | NULL    |                |
-- | color       | varchar(100) | YES  |     | NULL    |                |
-- | shirt_size  | varchar(100) | YES  |     | NULL    |                |
-- | last_worn   | int(11)      | YES  |     | NULL    |                |
-- +-------------+--------------+------+-----+---------+----------------+

INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES 	('t-shirt', 'white', 'S', 10),
		('t-shirt', 'green', 'S', 200),
		('polo shirt', 'black', 'M', 10),
		('tank top', 'blue', 'S', 50),
		('t-shirt', 'pink', 'S', 0),
		('polo shirt', 'red', 'M', 5),
		('tank top', 'white', 'S', 200),
		('tank top', 'blue', 'M', 15);

SELECt * FROM shirts;
-- +-----------+------------+-------+-------------+-----------+
-- | shirt_id  | article    | color | shirt_size | last_worn |
-- +-----------+------------+-------+-------------+-----------+
-- |         1 | t-shirt    | white | S           |        10 |
-- |         2 | t-shirt    | green | S           |       200 |
-- |         3 | polo shirt | black | M           |        10 |
-- |         4 | tank top   | blue  | S           |        50 |
-- |         5 | t-shirt    | pink  | S           |         0 |
-- |         6 | polo shirt | red   | M           |         5 |
-- |         7 | tank top   | white | S           |       200 |
-- |         8 | tank top   | blue  | M           |        15 |
-- +-----------+------------+-------+-------------+-----------+


INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES ('polo shirt','purple','M',50);
-- +-----------+------------+--------+-------------+-----------+
-- | shirt_id  | article    | color  | shirt_size  | last_worn |
-- +-----------+------------+--------+-------------+-----------+
-- |         1 | t-shirt    | white  | S           |        10 |
-- |         2 | t-shirt    | green  | S           |       200 |
-- |         3 | polo shirt | black  | M           |        10 |
-- |         4 | tank top   | blue   | S           |        50 |
-- |         5 | t-shirt    | pink   | S           |         0 |
-- |         6 | polo shirt | red    | M           |         5 |
-- |         7 | tank top   | white  | S           |       200 |
-- |         8 | tank top   | blue   | M           |        15 |
-- |         9 | polo shirt | purple | M           |        50 |
-- +-----------+------------+--------+-------------+-----------+

SELECT article,color from shirts;
-- +------------+--------+
-- | article    | color  |
-- +------------+--------+
-- | t-shirt    | white  |
-- | t-shirt    | green  |
-- | polo shirt | black  |
-- | tank top   | blue   |
-- | t-shirt    | pink   |
-- | polo shirt | red    |
-- | tank top   | white  |
-- | tank top   | blue   |
-- | polo shirt | purple |
-- +------------+--------+

SELECT article,color,shirt_size,last_worn FROM shirts WHERE shirt_size='M';
-- +------------+--------+-------------+-----------+
-- | article    | color  | shirt_size  | last_worn |
-- +------------+--------+-------------+-----------+
-- | polo shirt | black  | M           |        10 |
-- | polo shirt | red    | M           |         5 |
-- | tank top   | blue   | M           |        15 |
-- | polo shirt | purple | M           |        50 |
-- +------------+--------+-------------+-----------+

-- ////////////////// UPDATE all polo shirts and change their size to L ////////////////

SELECT * FROM shirts WHERE article='polo shirt'; -- see the data
-- +-----------+------------+--------+-------------+-----------+
-- | shirt_id  | article    | color  | shirt_size  | last_worn |
-- +-----------+------------+--------+-------------+-----------+
-- |         3 | polo shirt | black  | M           |        10 |
-- |         6 | polo shirt | red    | M           |         5 |
-- |         9 | polo shirt | purple | M           |        50 |
-- +-----------+------------+--------+-------------+-----------+

UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
SELECT * FROm shirts where article='polo shirt';
-- +----------+------------+--------+------------+-----------+
-- | shirt_id | article    | color  | shirt_size | last_worn |
-- +----------+------------+--------+------------+-----------+
-- |        3 | polo shirt | black  | L          |        10 |
-- |        6 | polo shirt | red    | L          |         5 |
-- |        9 | polo shirt | purple | L          |        50 |
-- +----------+------------+--------+------------+-----------+


-- ///////////////////// UPDATE the shirt last worn 15 days ago -- change last_worn to 0 //////////////////

SELECT * FROM shirts WHERE last_worn=15;
-- +----------+----------+-------+------------+-----------+
-- | shirt_id | article  | color | shirt_size | last_worn |
-- +----------+----------+-------+------------+-----------+
-- |        8 | tank top | blue  | M          |        15 |
-- +----------+----------+-------+------------+-----------+

UPDATE shirts SET last_worn=0 WHERE last_worn=15;

SELECT * FROM shirts WHERE last_worn=15; -- empty set
SELECT * FROM shirts WHERE last_worn=0;
-- +----------+----------+-------+------------+-----------+
-- | shirt_id | article  | color | shirt_size | last_worn |
-- +----------+----------+-------+------------+-----------+
-- |        5 | t-shirt  | pink  | S          |         0 |
-- |        8 | tank top | blue  | M          |         0 |
-- +----------+----------+-------+------------+-----------+


-- /////////////////// UPDATE all white shirts -- change size to 'XS' and color to 'off white' ///////////////////////

SELECT * FROM shirts WHERE color='white';
-- +----------+----------+-------+------------+-----------+
-- | shirt_id | article  | color | shirt_size | last_worn |
-- +----------+----------+-------+------------+-----------+
-- |        1 | t-shirt  | white | S          |        10 |
-- |        7 | tank top | white | S          |       200 |
-- +----------+----------+-------+------------+-----------+
UPDATE shirts SET shirt_size='XS',color='off white' WHERE color='white';
SELECT * FROM shirts WHERE color='off white';
-- +----------+----------+-----------+------------+-----------+
-- | shirt_id | article  | color     | shirt_size | last_worn |
-- +----------+----------+-----------+------------+-----------+
-- |        1 | t-shirt  | off white | XS         |        10 |
-- |        7 | tank top | off white | XS         |       200 |
-- +----------+----------+-----------+------------+-----------+

SELECT * FROM shirts;
-- +----------+------------+-----------+------------+-----------+
-- | shirt_id | article    | color     | shirt_size | last_worn |
-- +----------+------------+-----------+------------+-----------+
-- |        1 | t-shirt    | off white | XS         |        10 |
-- |        2 | t-shirt    | green     | S          |       200 |
-- |        3 | polo shirt | black     | L          |        10 |
-- |        4 | tank top   | blue      | S          |        50 |
-- |        5 | t-shirt    | pink      | S          |         0 |
-- |        6 | polo shirt | red       | L          |         5 |
-- |        7 | tank top   | off white | XS         |       200 |
-- |        8 | tank top   | blue      | M          |         0 |
-- |        9 | polo shirt | purple    | L          |        50 |

DELETE FROM shirts WHERE last_worn=200;
SELECT * FROM shirts;
-- +----------+------------+-----------+------------+-----------+
-- | shirt_id | article    | color     | shirt_size | last_worn |
-- +----------+------------+-----------+------------+-----------+
-- |        1 | t-shirt    | off white | XS         |        10 |
-- |        3 | polo shirt | black     | L          |        10 |
-- |        4 | tank top   | blue      | S          |        50 |
-- |        5 | t-shirt    | pink      | S          |         0 |
-- |        6 | polo shirt | red       | L          |         5 |
-- |        8 | tank top   | blue      | M          |         0 |
-- |        9 | polo shirt | purple    | L          |        50 |
-- +----------+------------+-----------+------------+-----------+

DELETE FROM shirts WHERE article='tank top';
SELECT * FROM shirts;
-- +----------+------------+-----------+------------+-----------+
-- | shirt_id | article    | color     | shirt_size | last_worn |
-- +----------+------------+-----------+------------+-----------+
-- |        1 | t-shirt    | off white | XS         |        10 |
-- |        3 | polo shirt | black     | L          |        10 |
-- |        5 | t-shirt    | pink      | S          |         0 |
-- |        6 | polo shirt | red       | L          |         5 |
-- |        9 | polo shirt | purple    | L          |        50 |
-- +----------+------------+-----------+------------+-----------+

DELETE FROM shirts; -- deletes the table
DROP TABLE shirts;
DROP DATABASE shirts_db;






