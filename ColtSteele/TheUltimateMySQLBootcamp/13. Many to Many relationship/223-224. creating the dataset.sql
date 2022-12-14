
-- Let us first create reviewers table

CREATE TABLE reviewers(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

-- Insert data into reviewers
INSERT INTO reviewers (first_name, last_name) 
VALUES	('Thomas', 'Stoneman'),
    	('Wyatt', 'Skaggs'),
    	('Kimbra', 'Masters'),
    	('Domingo', 'Cortes'),
    	('Colt', 'Steele'),
    	('Pinkie', 'Petit'),
    	('Marlon', 'Crafford');


-- Let us now create series table

CREATE TABLE series (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100),
	released_year YEAR(4), -- Focus here
	genre VARCHAR(100)
);


-- Insert data into series
INSERT INTO series (title, released_year, genre) 
VALUES	('Archer', 2009, 'Animation'),
    	('Arrested Development', 2003, 'Comedy'),
    	("Bob's Burgers", 2011, 'Animation'),
    	('Bojack Horseman', 2014, 'Animation'),
    	("Breaking Bad", 2008, 'Drama'),
    	('Curb Your Enthusiasm', 2000, 'Comedy'),
    	("Fargo", 2014, 'Drama'),
	('Freaks and Geeks', 1999, 'Comedy'),
	('General Hospital', 1963, 'Drama'),
	('Halt and Catch Fire', 2014, 'Drama'),
	('Malcolm In The Middle', 2000, 'Comedy'),
	('Pushing Daisies', 2007, 'Comedy'),
	('Seinfeld', 1989, 'Comedy'),
	('Stranger Things', 2016, 'Drama');



-- Now let us create the last table which is the main pillar of Many to Many relationship
CREATE TABLE reviews (
	id INT AUTO_INCREMENT PRIMARY KEY,
	rating DECIMAL(2, 1),
	series_id INT,
	reviewer_id INT,
	FOREIGN KEY (series_id) REFERENCES series(id),
	FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
);

-- Now let us put some data into reviews
INSERT INTO reviews(series_id, reviewer_id, rating) 
VALUES		(1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
	    	(2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
	    	(3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
	    	(4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
	    	(5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
	    	(6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
	    	(7,2,9.1),(7,5,9.7),(8,4,8.5),(8,2,7.8),(8,6,8.8),
		(8,5,9.3),(9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),
		(9,5,4.5),(10,5,9.9),(13,3,8.0),(13,4,7.2),(14,2,8.5),
		(14,3,8.9),(14,4,8.9);



-- /////////////////////////////////// DATASET CREATION COMPLETED //////////////////////////////////////////////////////////////////////////




SELECT * FROM reviewers;
-- +----+------------+-----------+
-- | id | first_name | last_name |
-- +----+------------+-----------+
-- |  1 | Thomas     | Stoneman  |
-- |  2 | Wyatt      | Skaggs    |
-- |  3 | Kimbra     | Masters   |
-- |  4 | Domingo    | Cortes    |
-- |  5 | Colt       | Steele    |
-- |  6 | Pinkie     | Petit     |
-- |  7 | Marlon     | Crafford  |
-- +----+------------+-----------+


SELECT * FROM series;
-- +----+-----------------------+---------------+-----------+
-- | id | title                 | released_year | genre     |
-- +----+-----------------------+---------------+-----------+
-- |  1 | Archer                |          2009 | Animation |
-- |  2 | Arrested Development  |          2003 | Comedy    |
-- |  3 | Bob's Burgers         |          2011 | Animation |
-- |  4 | Bojack Horseman       |          2014 | Animation |
-- |  5 | Breaking Bad          |          2008 | Drama     |
-- |  6 | Curb Your Enthusiasm  |          2000 | Comedy    |
-- |  7 | Fargo                 |          2014 | Drama     |
-- |  8 | Freaks and Geeks      |          1999 | Comedy    |
-- |  9 | General Hospital      |          1963 | Drama     |
-- | 10 | Halt and Catch Fire   |          2014 | Drama     |
-- | 11 | Malcolm In The Middle |          2000 | Comedy    |
-- | 12 | Pushing Daisies       |          2007 | Comedy    |
-- | 13 | Seinfeld              |          1989 | Comedy    |
-- | 14 | Stranger Things       |          2016 | Drama     |
-- +----+-----------------------+---------------+-----------+

SELECT * FROM reviews;
-- +----+--------+-----------+-------------+
-- | id | rating | series_id | reviewer_id |
-- +----+--------+-----------+-------------+
-- |  1 |    8.0 |         1 |           1 |
-- |  2 |    7.5 |         1 |           2 |
-- |  3 |    8.5 |         1 |           3 |
-- |  4 |    7.7 |         1 |           4 |
-- |  5 |    8.9 |         1 |           5 |
-- |  6 |    8.1 |         2 |           1 |
-- |  7 |    6.0 |         2 |           4 |
-- |  8 |    8.0 |         2 |           3 |
-- |  9 |    8.4 |         2 |           6 |
-- | 10 |    9.9 |         2 |           5 |
-- | 11 |    7.0 |         3 |           1 |
-- | 12 |    7.5 |         3 |           6 |
-- | 13 |    8.0 |         3 |           4 |
-- | 14 |    7.1 |         3 |           3 |
-- | 15 |    8.0 |         3 |           5 |
-- | 16 |    7.5 |         4 |           1 |
-- | 17 |    7.8 |         4 |           3 |
-- | 18 |    8.3 |         4 |           4 |
-- | 19 |    7.6 |         4 |           2 |
-- | 20 |    8.5 |         4 |           5 |
-- | 21 |    9.5 |         5 |           1 |
-- | 22 |    9.0 |         5 |           3 |
-- | 23 |    9.1 |         5 |           4 |
-- | 24 |    9.3 |         5 |           2 |
-- | 25 |    9.9 |         5 |           5 |
-- | 26 |    6.5 |         6 |           2 |
-- | 27 |    7.8 |         6 |           3 |
-- | 28 |    8.8 |         6 |           4 |
-- | 29 |    8.4 |         6 |           2 |
-- | 30 |    9.1 |         6 |           5 |
-- | 31 |    9.1 |         7 |           2 |
-- | 32 |    9.7 |         7 |           5 |
-- | 33 |    8.5 |         8 |           4 |
-- | 34 |    7.8 |         8 |           2 |
-- | 35 |    8.8 |         8 |           6 |
-- | 36 |    9.3 |         8 |           5 |
-- | 37 |    5.5 |         9 |           2 |
-- | 38 |    6.8 |         9 |           3 |
-- | 39 |    5.8 |         9 |           4 |
-- | 40 |    4.3 |         9 |           6 |
-- | 41 |    4.5 |         9 |           5 |
-- | 42 |    9.9 |        10 |           5 |
-- | 43 |    8.0 |        13 |           3 |
-- | 44 |    7.2 |        13 |           4 |
-- | 45 |    8.5 |        14 |           2 |
-- | 46 |    8.9 |        14 |           3 |
-- | 47 |    8.9 |        14 |           4 |
-- +----+--------+-----------+-------------+





-- ROUGH WORK



