-- MIN AND MAX WITH GROUP BY

-- Find the year each author published their first book

SELECT CONCAT(author_fname, ' ', author_lname)  AS 'Author', MIN(released_year) FROM books GROUP BY author_lname, author_fname;
-- +----------------------+--------------------+
-- | Author               | MIN(released_year) |
-- +----------------------+--------------------+
-- | Raymond Carver       |               1981 |
-- | Michael Chabon       |               2000 |
-- | Don DeLillo          |               1985 |
-- | Dave Eggers          |               2001 |
-- | David Foster Wallace |               2004 |
-- | Neil Gaiman          |               2001 |
-- | Dan Harris           |               2014 |
-- | Freida Harris        |               2001 |
-- | Jhumpa Lahiri        |               1996 |
-- | George Saunders      |               2017 |
-- | Patti Smith          |               2010 |
-- | John Steinbeck       |               1945 |
-- +----------------------+--------------------+


-- Find the longest page count for each author
SELECT MAX(pages) FROM books GROUP BY author_lname;
-- +------------+
-- | MAX(pages) |
-- +------------+
-- |        526 |
-- |        634 |
-- |        320 |
-- |        504 |
-- |        343 |
-- |        465 |
-- |        428 |
-- |        291 |
-- |        367 |
-- |        304 |
-- |        181 |
-- +------------+

-- Find the max number of pages published by each author
SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author', MAX(pages) FROM books GROUP BY author_lname,author_fname;
-- +----------------------+------------+
-- | Author               | MAX(pages) |
-- +----------------------+------------+
-- | Raymond Carver       |        526 |
-- | Michael Chabon       |        634 |
-- | Don DeLillo          |        320 |
-- | Dave Eggers          |        504 |
-- | David Foster Wallace |        343 |
-- | Neil Gaiman          |        465 |
-- | Dan Harris           |        256 |
-- | Freida Harris        |        428 |
-- | Jhumpa Lahiri        |        291 |
-- | George Saunders      |        367 |
-- | Patti Smith          |        304 |
-- | John Steinbeck       |        181 |
-- +----------------------+------------+





