-- If we want to make values in a column unique then we can make it primary key
-- This would prevent the insertion of identical data.
-- So that no duplicate entries could be found in this column.



-- But how do we make each entry unique ? -- make it primary key

CREATE TABLE unique_cats(
	cat_id INT NOT NULL,
	name VARCHAR(100),
	age INT,
	PRIMARY KEY (cat_id)
);


DESC unique_cats;

-- +--------+--------------+------+-----+---------+-------+
-- | Field  | Type         | Null | Key | Default | Extra |
-- +--------+--------------+------+-----+---------+-------+
-- | cat_id | int(11)      | NO   | PRI | NULL    |       |
-- | name   | varchar(100) | YES  |     | NULL    |       |
-- | age    | int(11)      | YES  |     | NULL    |       |
-- +--------+--------------+------+-----+---------+-------+

INSERT INTO unique_cats(cat_id,name,age) VALUES (1,'Fred',23);

SELECT * FROM unique_cats;

-- +--------+------+------+
-- | cat_id | name | age  |
-- +--------+------+------+
-- |      1 | Fred |   23 |
-- +--------+------+------+

INSERT INTO unique_cats(cat_id,name,age) VALUES (2,'Louise',3);

-- The above data would be entered without any error as cat_id of Louise is different.

SELECT * FROM unique_cats;

-- +--------+--------+------+
-- | cat_id | name   | age  |
-- +--------+--------+------+
-- |      1 | Fred   |   23 |
-- |      2 | Louise |    3 |
-- +--------+--------+------+

INSERT INTO unique_cats(cat_id,name,age) VALUES (1,'josh',34);

-- But the above line would show us error as we already have 1 as cat_id in unique_cats.

-- ////////////////////////////////////////AUTO_INCREMENT///////////////////////////////////////

CREATE TABLE unique_cats2(
	cat_id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100),
	age INT,
	PRIMARY KEY (cat_id)
);


DESC unique_cats2;


-- +--------+--------------+------+-----+---------+----------------+
-- | Field  | Type         | Null | Key | Default | Extra          |
-- +--------+--------------+------+-----+---------+----------------+
-- | cat_id | int(11)      | NO   | PRI | NULL    | auto_increment |
-- | name   | varchar(100) | YES  |     | NULL    |                |
-- | age    | int(11)      | YES  |     | NULL    |                |
-- +--------+--------------+------+-----+---------+----------------+

INSERT INTO unique_cats2(name,age) VALUES ('Skippy',4);

SELECT * FROM unique_cats2;

-- +--------+--------+------+
-- | cat_id | name   | age  |
-- +--------+--------+------+
-- |      1 | Skippy |    4 |
-- +--------+--------+------+

INSERT INTO unique_cats2(name,age) VALUES ('Jiff',3);
INSERT INTO unique_cats2(name,age) VALUES ('Jiff',3);

-- But how could we insert duplicate values ? -- since both the 'Jiff' have different id's.

SELECT * FROM unique_cats2;

-- +--------+--------+------+
-- | cat_id | name   | age  |
-- +--------+--------+------+
-- |      1 | Skippy |    4 |
-- |      2 | Jiff   |    3 |
-- |      3 | Jiff   |    3 |
-- +--------+--------+------+