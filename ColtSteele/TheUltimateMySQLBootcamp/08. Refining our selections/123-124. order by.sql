-- order by is used for sorting data

SELECT author_lname FROM books ORDER BY author_lname;
-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Carver         |
-- | Carver         |
-- | Chabon         |
-- | DeLillo        |
-- | Eggers         |
-- | Eggers         |
-- | Eggers         |
-- | Foster Wallace |
-- | Foster Wallace | -- 19 rows (ORDER BY is ascending by default)
-- | Gaiman         |
-- | Gaiman         |
-- | Gaiman         |
-- | Harris         |
-- | Harris         |
-- | Lahiri         |
-- | Lahiri         |
-- | Saunders       |
-- | Smith          |
-- | Steinbeck      |
-- +----------------+

-- / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / DESC order / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
SELECT author_lname FROM books ORDER BY author_lname DESC;
-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Steinbeck      |
-- | Smith          |
-- | Saunders       |
-- | Lahiri         |
-- | Lahiri         |
-- | Harris         |
-- | Harris         |
-- | Gaiman         |
-- | Gaiman         | -- 19 rows (This time in descending order)
-- | Gaiman         |
-- | Foster Wallace |
-- | Foster Wallace |
-- | Eggers         |
-- | Eggers         |
-- | Eggers         |
-- | DeLillo        |
-- | Chabon         |
-- | Carver         |
-- | Carver         |
-- +----------------+




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


-- / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /  ORDER BY for numbers / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / 

SELECT released_year FROM books ORDER BY released_year;
-- +---------------+
-- | released_year |
-- +---------------+
-- |          1945 |
-- |          1981 |
-- |          1985 |
-- |          1989 |
-- |          1996 |
-- |          2000 |
-- |          2001 |
-- |          2001 |
-- |          2001 | -- 19 rows
-- |          2003 |
-- |          2003 |
-- |          2004 |
-- |          2005 |
-- |          2010 |
-- |          2012 |
-- |          2013 |
-- |          2014 |
-- |          2016 |
-- |          2017 |
-- +---------------+

-- / / / / / / / / / / / / / / / / / / / IT IS NOT NECESSARY THAT THE COLUMN BY WHICH WE SORT BE SELECTED / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
SELECT title,pages FROM books ORDER BY released_year; -- This will sort the data by released_year and then pick title and pages column from it. Also, if released_year is same, then table insertion order is followed.

-- +-----------------------------------------------------+-------+
-- | title                                               | pages |
-- +-----------------------------------------------------+-------+
-- | Cannery Row                                         |   181 |
-- | What We Talk About When We Talk About Love: Stories |   176 |
-- | White Noise                                         |   320 |
-- | Where I'm Calling From: Selected Stories            |   526 |
-- | Interpreter of Maladies                             |   198 |
-- | The Amazing Adventures of Kavalier & Clay           |   634 |
-- | fake_book                                           |   428 |
-- | American Gods                                       |   465 |
-- | A Heartbreaking Work of Staggering Genius           |   437 | -- 19 rows
-- | Coraline                                            |   208 |
-- | The Namesake                                        |   291 |
-- | Oblivion: Stories                                   |   329 |
-- | Consider the Lobster                                |   343 |
-- | Just Kids                                           |   304 |
-- | A Hologram for the King: A Novel                    |   352 |
-- | The Circle                                          |   504 |
-- | 10% Happier                                         |   256 |
-- | Norse Mythology                                     |   304 |
-- | Lincoln In The Bardo                                |   367 |
-- +-----------------------------------------------------+-------+



SELECT title, author_fname, author_lname FROM books ORDER BY 2; -- This means that sort by author_fname as it's position is 2
-- If author_fname is same, then this follows table insertion order.

-- +-----------------------------------------------------+--------------+----------------+
-- | title                                               | author_fname | author_lname   |
-- +-----------------------------------------------------+--------------+----------------+
-- | 10% Happier                                         | Dan          | Harris         |
-- | A Hologram for the King: A Novel                    | Dave         | Eggers         |
-- | The Circle                                          | Dave         | Eggers         |
-- | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |
-- | Consider the Lobster                                | David        | Foster Wallace |
-- | Oblivion: Stories                                   | David        | Foster Wallace |
-- | White Noise                                         | Don          | DeLillo        |
-- | fake_book                                           | Freida       | Harris         |
-- | Lincoln In The Bardo                                | George       | Saunders       |
-- | Interpreter of Maladies                             | Jhumpa       | Lahiri         |
-- | The Namesake                                        | Jhumpa       | Lahiri         |
-- | Cannery Row                                         | John         | Steinbeck      |
-- | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |
-- | Coraline                                            | Neil         | Gaiman         |
-- | American Gods                                       | Neil         | Gaiman         |
-- | Norse Mythology                                     | Neil         | Gaiman         |
-- | Just Kids                                           | Patti        | Smith          |
-- | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |
-- | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |
-- +-----------------------------------------------------+--------------+----------------+


SELECT title, author_fname, author_lname FROM books ORDER BY 3,2; -- This means that first sort by author_lname as it is at 3rd place and if conflict arises then decide by author_fname as it is at 2nd place.
-- +-----------------------------------------------------+--------------+----------------+
-- | title                                               | author_fname | author_lname   |
-- +-----------------------------------------------------+--------------+----------------+
-- | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |
-- | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |
-- | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |
-- | White Noise                                         | Don          | DeLillo        |
-- | A Hologram for the King: A Novel                    | Dave         | Eggers         |
-- | The Circle                                          | Dave         | Eggers         |
-- | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |
-- | Consider the Lobster                                | David        | Foster Wallace |
-- | Oblivion: Stories                                   | David        | Foster Wallace |
-- | Norse Mythology                                     | Neil         | Gaiman         |
-- | Coraline                                            | Neil         | Gaiman         |
-- | American Gods                                       | Neil         | Gaiman         |
-- | 10% Happier                                         | Dan          | Harris         |
-- | fake_book                                           | Freida       | Harris         |
-- | Interpreter of Maladies                             | Jhumpa       | Lahiri         |
-- | The Namesake                                        | Jhumpa       | Lahiri         |
-- | Lincoln In The Bardo                                | George       | Saunders       |
-- | Just Kids                                           | Patti        | Smith          |
-- | Cannery Row                                         | John         | Steinbeck      |
-- +-----------------------------------------------------+--------------+----------------+




