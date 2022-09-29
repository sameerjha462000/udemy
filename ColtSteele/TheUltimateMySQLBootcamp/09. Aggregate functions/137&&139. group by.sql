-- This is VV imp function
-- GROUP BY first sorts the data according to the passed column and then creates individual mega table for same entries.

SELECT title, author_lname FROM books;
-- +-----------------------------------------------------+----------------+
-- | title                                               | author_lname   |
-- +-----------------------------------------------------+----------------+
-- | The Namesake                                        | Lahiri         |
-- | Norse Mythology                                     | Gaiman         |
-- | American Gods                                       | Gaiman         |
-- | Interpreter of Maladies                             | Lahiri         |
-- | A Hologram for the King: A Novel                    | Eggers         |
-- | The Circle                                          | Eggers         |
-- | The Amazing Adventures of Kavalier & Clay           | Chabon         |
-- | Just Kids                                           | Smith          |
-- | A Heartbreaking Work of Staggering Genius           | Eggers         |
-- | Coraline                                            | Gaiman         |
-- | What We Talk About When We Talk About Love: Stories | Carver         |
-- | Where I'm Calling From: Selected Stories            | Carver         |
-- | White Noise                                         | DeLillo        |
-- | Cannery Row                                         | Steinbeck      |
-- | Oblivion: Stories                                   | Foster Wallace |
-- | Consider the Lobster                                | Foster Wallace |
-- | 10% Happier                                         | Harris         |
-- | fake_book                                           | Harris         |
-- | Lincoln In The Bardo                                | Saunders       |
-- +----------------------------------------------------------------------+


-- / / / / / / / / / / / / / / / / STEPS IN WHICH GROUP BY WORKS / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
SELECT title, author_lname FROM books GROUP BY author_lname;

--  STEP 1 := 

	SELECT title, author_lname FROM books ORDER BY author_lname;

	-- +-----------------------------------------------------+----------------+
	-- | title                                               | author_lname   |
	-- +-----------------------------------------------------+----------------+
	-- | Where I'm Calling From: Selected Stories            | Carver         |
	-- | What We Talk About When We Talk About Love: Stories | Carver         |
	-- | The Amazing Adventures of Kavalier & Clay           | Chabon         |
	-- | White Noise                                         | DeLillo        |
	-- | A Hologram for the King: A Novel                    | Eggers         |
	-- | The Circle                                          | Eggers         |
	-- | A Heartbreaking Work of Staggering Genius           | Eggers         |
	-- | Consider the Lobster                                | Foster Wallace |
	-- | Oblivion: Stories                                   | Foster Wallace |
	-- | Norse Mythology                                     | Gaiman         |
	-- | Coraline                                            | Gaiman         |
	-- | American Gods                                       | Gaiman         |
	-- | 10% Happier                                         | Harris         |
	-- | fake_book                                           | Harris         |
	-- | Interpreter of Maladies                             | Lahiri         |
	-- | The Namesake                                        | Lahiri         |
	-- | Lincoln In The Bardo                                | Saunders       |
	-- | Just Kids                                           | Smith          |
	-- | Cannery Row                                         | Steinbeck      |
	-- +-----------------------------------------------------+----------------+

-- STEP 2 := 

	-- Now make each entry where values are same a mega table.
	-- +-----------------------------------------------------+----------------+
	-- | title                                               | author_lname   |
	-- +-----------------------------------------------------+----------------+
	-- | Where I'm Calling From: Selected Stories            | Carver         |
	-- | The Amazing Adventures of Kavalier & Clay           | Chabon         |
	-- | White Noise                                         | DeLillo        |
	-- | A Hologram for the King: A Novel                    | Eggers         |
	-- | Consider the Lobster                                | Foster Wallace |
	-- | Norse Mythology                                     | Gaiman         |
	-- | 10% Happier                                         | Harris         |
	-- | Interpreter of Maladies                             | Lahiri         |
	-- | Lincoln In The Bardo                                | Saunders       |
	-- | Just Kids                                           | Smith          |
	-- | Cannery Row                                         | Steinbeck      |
	-- +-----------------------------------------------------+----------------+


SELECT author_lname,COUNT(*) FROM books GROUP BY author_lname;
-- +----------------+----------+
-- | author_lname   | COUNT(*) |
-- +----------------+----------+
-- | Carver         |        2 |
-- | Chabon         |        1 |
-- | DeLillo        |        1 |
-- | Eggers         |        3 |
-- | Foster Wallace |        2 |
-- | Gaiman         |        3 |
-- | Harris         |        2 |
-- | Lahiri         |        2 |
-- | Saunders       |        1 |
-- | Smith          |        1 |
-- | Steinbeck      |        1 |
-- +----------------+----------+

-- / / / / / / / / / / / / / / / / /  We can also group by various multiple columns / / / / / / / / / / / / / / / / / / / / / / / / / / / / 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
-- In this case, it will first order by author_lname and then if conflict arise, it will sort by author_fname
-- And after all this if it gets repeated values then that would form a mega table and in output we will only see first row of that mega table

-- +--------------+----------------+----------+
-- | author_fname | author_lname   | COUNT(*) |
-- +--------------+----------------+----------+
-- | Raymond      | Carver         |        2 |
-- | Michael      | Chabon         |        1 |
-- | Don          | DeLillo        |        1 |
-- | Dave         | Eggers         |        3 |
-- | David        | Foster Wallace |        2 |
-- | Neil         | Gaiman         |        3 |
-- | Dan          | Harris         |        1 |
-- | Freida       | Harris         |        1 |
-- | Jhumpa       | Lahiri         |        2 |
-- | George       | Saunders       |        1 |
-- | Patti        | Smith          |        1 |
-- | John         | Steinbeck      |        1 |
-- +--------------+----------------+----------+


SELECT CONCAT(author_fname,' ',author_lname) AS 'Author', COUNT(*) AS '# of books' FROM books GROUP BY author_lname,author_fname;
-- +----------------------+------------+
-- | Author               | # of books |
-- +----------------------+------------+
-- | Raymond Carver       |          2 |
-- | Michael Chabon       |          1 |
-- | Don DeLillo          |          1 |
-- | Dave Eggers          |          3 |
-- | David Foster Wallace |          2 |
-- | Neil Gaiman          |          3 |
-- | Dan Harris           |          1 |
-- | Freida Harris        |          1 |
-- | Jhumpa Lahiri        |          2 |
-- | George Saunders      |          1 |
-- | Patti Smith          |          1 |
-- | John Steinbeck       |          1 |
-- +----------------------+------------+

SELECT released_year FROM books;
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
-- |          2001 |
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

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
-- +---------------+----------+
-- | released_year | COUNT(*) |
-- +---------------+----------+
-- |          1945 |        1 |
-- |          1981 |        1 |
-- |          1985 |        1 |
-- |          1989 |        1 |
-- |          1996 |        1 |
-- |          2000 |        1 |
-- |          2001 |        3 | -- observe this
-- |          2003 |        2 | -- observe this
-- |          2004 |        1 |
-- |          2005 |        1 |
-- |          2010 |        1 |
-- |          2012 |        1 |
-- |          2013 |        1 |
-- |          2014 |        1 |
-- |          2016 |        1 |
-- |          2017 |        1 |
-- +--------------------------+




