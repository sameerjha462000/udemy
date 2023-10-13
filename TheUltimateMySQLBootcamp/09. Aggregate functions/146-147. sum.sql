--  WITHOUT GROUP BY
SELECT SUM(pages) FROM books;
-- +------------+
-- | SUM(pages) |
-- +------------+
-- |       6623 |
-- +------------+

-- WITHOUT GROUP BY

-- Sum all the pages each author has wriiten
SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author', SUM(pages) FROM books GROUP BY author_lname,author_fname;
-- +----------------------+------------+
-- | Author               | SUM(pages) |
-- +----------------------+------------+
-- | Raymond Carver       |        702 |
-- | Michael Chabon       |        634 |
-- | Don DeLillo          |        320 |
-- | Dave Eggers          |       1293 |
-- | David Foster Wallace |        672 |
-- | Neil Gaiman          |        977 |
-- | Dan Harris           |        256 |
-- | Freida Harris        |        428 |
-- | Jhumpa Lahiri        |        489 |
-- | George Saunders      |        367 |
-- | Patti Smith          |        304 |
-- | John Steinbeck       |        181 |
-- +----------------------+------------+






