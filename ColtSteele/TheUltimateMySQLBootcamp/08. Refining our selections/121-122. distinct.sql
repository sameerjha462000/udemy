SELECT author_lname from books;
-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Lahiri         |
-- | Gaiman         |
-- | Gaiman         |
-- | Lahiri         |
-- | Eggers         |
-- | Eggers         |
-- | Chabon         |
-- | Smith          |
-- | Eggers         | -- 19 entries (duplicates are also there)
-- | Gaiman         |
-- | Carver         |
-- | Carver         |
-- | DeLillo        |
-- | Steinbeck      |
-- | Foster Wallace |
-- | Foster Wallace |
-- | Harris         |
-- | Harris         |
-- | Saunders       |
-- +----------------+

SELECT DISTINCT author_lname from books;
-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Lahiri         |
-- | Gaiman         |
-- | Eggers         |
-- | Chabon         |
-- | Smith          | -- 11 (only unique entries)
-- | Carver         |
-- | DeLillo        |
-- | Steinbeck      |
-- | Foster Wallace |
-- | Harris         |
-- | Saunders       |
-- +----------------+


SELECT released_year from books;
-- +---------------+
-- | released_year |
-- +---------------+
-- |          2003 |
-- |          2016 |
-- |          2001 |
-- |          1996 |
-- |          2012 |
-- |          2013 |
-- |          2000 |
-- |          2010 |
-- |          2001 | -- 19 entires (duplicates are also there)
-- |          2003 |
-- |          1981 |
-- |          1989 |
-- |          1985 |
-- |          1945 |
-- |          2004 |
-- |          2005 |
-- |          2014 |
-- |          2001 |
-- |          2017 |
-- +---------------+


SELECT DISTINCT released_year from books;
-- +---------------+
-- | released_year |
-- +---------------+
-- |          2003 |
-- |          2016 |
-- |          2001 |
-- |          1996 |
-- |          2012 |
-- |          2013 |
-- |          2000 | -- 16 entries
-- |          2010 |
-- |          1981 |
-- |          1989 |
-- |          1985 |
-- |          1945 |
-- |          2004 |
-- |          2005 |
-- |          2014 |
-- |          2017 |
-- +---------------+


SELECT author_fname,author_lname FROM books;
-- +--------------+----------------+
-- | author_fname | author_lname   |
-- +--------------+----------------+
-- | Jhumpa       | Lahiri         |
-- | Neil         | Gaiman         |
-- | Neil         | Gaiman         |
-- | Jhumpa       | Lahiri         |
-- | Dave         | Eggers         |
-- | Dave         | Eggers         |
-- | Michael      | Chabon         |
-- | Patti        | Smith          |
-- | Dave         | Eggers         |
-- | Neil         | Gaiman         |
-- | Raymond      | Carver         |
-- | Raymond      | Carver         |
-- | Don          | DeLillo        |
-- | John         | Steinbeck      |
-- | David        | Foster Wallace |
-- | David        | Foster Wallace |
-- | Dan          | Harris         |
-- | Freida       | Harris         |
-- | George       | Saunders       |
-- +--------------+----------------+


SELECT DISTINCT author_fname,author_lname FROM books; -- whenever we apply DISTINCT it applies to all the columns in combined form,so this would consider two entries as different even if value in one column is different
-- +--------------+----------------+
-- | author_fname | author_lname   |
-- +--------------+----------------+
-- | Jhumpa       | Lahiri         |
-- | Neil         | Gaiman         |
-- | Dave         | Eggers         | -- 12 entires
-- | Michael      | Chabon         |
-- | Patti        | Smith          |
-- | Raymond      | Carver         | -- 'Dan Harris' and 'Frieda Harris' are considered different as distinct applies to all the columns.
-- | Don          | DeLillo        | -- Slly, 'Dave Eggers' was 3 times in original data but here he is mentioned only once.
-- | John         | Steinbeck      |
-- | David        | Foster Wallace |
-- | Dan          | Harris         |
-- | Freida       | Harris         |
-- | George       | Saunders       |
-- +--------------+----------------+

-- / / / / / / / / / / / / / / /  DISTINCT FULL NAMES / / / / / / / / / / / / / / / / / / / / / / /

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) AS 'FULL NAME' FROM books;
-- +----------------------+
-- | FULL NAME            |
-- +----------------------+
-- | Jhumpa Lahiri        |
-- | Neil Gaiman          |
-- | Dave Eggers          |
-- | Michael Chabon       |
-- | Patti Smith          |
-- | Raymond Carver       | -- 12 entries
-- | Don DeLillo          |
-- | John Steinbeck       |
-- | David Foster Wallace |
-- | Dan Harris           |
-- | Freida Harris        |
-- | George Saunders      |
-- +----------------------+













