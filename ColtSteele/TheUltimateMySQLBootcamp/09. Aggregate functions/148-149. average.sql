-- calculate the average released_year across all books
SELECT AVG(released_year) FROM books;
-- +--------------------+
-- | AVG(released_year) |
-- +--------------------+
-- |          1999.7895 |
-- +--------------------+

SELECT AVG(pages) FROM books;
-- +------------+
-- | AVG(pages) |
-- +------------+
-- |   348.5789 |
-- +------------+


-- calculate the average stock quantity for books released in the same year
SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;
-- +---------------+---------------------+
-- | released_year | AVG(stock_quantity) |
-- +---------------+---------------------+
-- |          1945 |             95.0000 |
-- |          1981 |             23.0000 |
-- |          1985 |             49.0000 |
-- |          1989 |             12.0000 |
-- |          1996 |             97.0000 |
-- |          2000 |             68.0000 |
-- |          2001 |            134.3333 |
-- |          2003 |             66.0000 |
-- |          2004 |            172.0000 |
-- |          2005 |             92.0000 |
-- |          2010 |             55.0000 |
-- |          2012 |            154.0000 |
-- |          2013 |             26.0000 |
-- |          2014 |             29.0000 |
-- |          2016 |             43.0000 |
-- |          2017 |           1000.0000 |
-- +---------------+---------------------+


-- print average number of pages written by each author
SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author', AVG(pages) FROM books GROUP BY author_lname,author_fname;
-- +----------------------+------------+
-- | Author               | AVG(pages) |
-- +----------------------+------------+
-- | Raymond Carver       |   351.0000 |
-- | Michael Chabon       |   634.0000 |
-- | Don DeLillo          |   320.0000 |
-- | Dave Eggers          |   431.0000 |
-- | David Foster Wallace |   336.0000 |
-- | Neil Gaiman          |   325.6667 |
-- | Dan Harris           |   256.0000 |
-- | Freida Harris        |   428.0000 |
-- | Jhumpa Lahiri        |   244.5000 |
-- | George Saunders      |   367.0000 |
-- | Patti Smith          |   304.0000 |
-- | John Steinbeck       |   181.0000 |
-- +----------------------+------------+







