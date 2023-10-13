SELECT title FROM books ORDER BY title;
-- +-----------------------------------------------------+
-- | title                                               |
-- +-----------------------------------------------------+
-- | 10% Happier                                         |
-- | A Heartbreaking Work of Staggering Genius           |
-- | A Hologram for the King: A Novel                    |
-- | American Gods                                       |
-- | Cannery Row                                         |
-- | Consider the Lobster                                |
-- | Coraline                                            |
-- | fake_book                                           |
-- | Interpreter of Maladies                             | -- 19 rows
-- | Just Kids                                           |
-- | Lincoln In The Bardo                                |
-- | Norse Mythology                                     |
-- | Oblivion: Stories                                   |
-- | The Amazing Adventures of Kavalier & Clay           |
-- | The Circle                                          |
-- | The Namesake                                        |
-- | What We Talk About When We Talk About Love: Stories |
-- | Where I'm Calling From: Selected Stories            |
-- | White Noise                                         |
-- +-----------------------------------------------------+

SELECT title FROM books ORDER BY title LIMIT 3; -- picks the first 3 entries from the after sorting.
-- +-------------------------------------------+
-- | title                                     |
-- +-------------------------------------------+
-- | 10% Happier                               |
-- | A Heartbreaking Work of Staggering Genius |
-- | A Hologram for the King: A Novel          |
-- +-------------------------------------------+

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5; -- sort by released_year in descendiing order and then select first 5 entries
-- +----------------------------------+---------------+
-- | title                            | released_year |
-- +----------------------------------+---------------+
-- | Lincoln In The Bardo             |          2017 |
-- | Norse Mythology                  |          2016 |
-- | 10% Happier                      |          2014 |
-- | The Circle                       |          2013 |
-- | A Hologram for the King: A Novel |          2012 |
-- +----------------------------------+---------------+

-- / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / We can also specify the starting position / / / / / / / / / / / / / / / / / / / / / / / / / /

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5;
-- NOTE that rows start from 0th index.(This is diff. from substring which start from 1th index.)
-- +----------------------------------+---------------+
-- | title                            | released_year |
-- +----------------------------------+---------------+
-- | Lincoln In The Bardo             |          2017 |
-- | Norse Mythology                  |          2016 |
-- | 10% Happier                      |          2014 |
-- | The Circle                       |          2013 |
-- | A Hologram for the King: A Novel |          2012 |
-- +----------------------------------+---------------+

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,3; -- This means that start from row at 1st index and display 3 rows
-- +-----------------+---------------+
-- | title           | released_year |
-- +-----------------+---------------+
-- | Norse Mythology |          2016 |
-- | 10% Happier     |          2014 |
-- | The Circle      |          2013 |
-- +-----------------+---------------+

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 10,1; -- This means that start from row at 10th index and display 1 row.
-- +---------------+---------------+
-- | title         | released_year |
-- +---------------+---------------+
-- | American Gods |          2001 |
-- +---------------+---------------+



-- / / / / / / / / / / / / / // / / / / / / / / / / / / / / A very important point / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / 
SELECT title,released_year FROM books ORDER BY released_year DESC LIMIT 5,2189128939;
-- NOTE := 
	-- If we want to get all the entries from a starting point, We can put a VVV big number(> # of rows in table).
	-- The above point has been mentioned in the official documentation of MySQL.
-- +-----------------------------------------------------+---------------+
-- | title                                               | released_year |
-- +-----------------------------------------------------+---------------+
-- | Just Kids                                           |          2010 |
-- | Consider the Lobster                                |          2005 |
-- | Oblivion: Stories                                   |          2004 |
-- | Coraline                                            |          2003 |
-- | The Namesake                                        |          2003 |
-- | American Gods                                       |          2001 |
-- | A Heartbreaking Work of Staggering Genius           |          2001 |
-- | fake_book                                           |          2001 |
-- | The Amazing Adventures of Kavalier & Clay           |          2000 |
-- | Interpreter of Maladies                             |          1996 |
-- | Where I'm Calling From: Selected Stories            |          1989 |
-- | White Noise                                         |          1985 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |
-- | Cannery Row                                         |          1945 |
-- +---------------------------------------------------------------------+









