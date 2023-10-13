SELECT author_fname,author_lname FROM books;
-- +--------------+----------------+
-- | author_fname | author_lname   |
-- +--------------+----------------+
-- | Jhumpa       | Lahiri         |
-- | Neil         | Gaiman         |
-- | Neil         | Gaiman         |
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
-- +--------------+----------------+


-- Now we want to show full name of the authors

SELECT CONCAT('Hello', 'World');
-- +--------------------------+
-- | CONCAT('Hello', 'World') |
-- +--------------------------+
-- | HelloWorld               |
-- +--------------------------+

-- We can also use aliasing in CONCAT as it looks very UGLY without aliasing.
SELECT CONCAT('Hello', 'World') AS 'Abhishek says';
-- +---------------+
-- | Abhishek says |
-- +---------------+
-- | HelloWorld    |
-- +---------------+

-- But we want space between Hello and World

SELECT CONCAT('Hello', ' ', 'World') AS 'Abhishek says';
-- +---------------+
-- | Abhishek says |
-- +---------------+
-- | Hello World   |
-- +---------------+


-- ///////////////////////////////// We can also use CONCAT with other columns and display in a nice format //////////////////
SELECT author_fname AS first, author_lname AS last, CONCAT(author_fname,' ',author_lname) AS 'Full Name' FROM books;
-- +---------+----------------+----------------------+
-- | first   | last           | Full Name            |
-- +---------+----------------+----------------------+
-- | Jhumpa  | Lahiri         | Jhumpa Lahiri        |
-- | Neil    | Gaiman         | Neil Gaiman          |
-- | Neil    | Gaiman         | Neil Gaiman          |
-- | Jhumpa  | Lahiri         | Jhumpa Lahiri        |
-- | Neil    | Gaiman         | Neil Gaiman          |
-- | Neil    | Gaiman         | Neil Gaiman          |
-- | Jhumpa  | Lahiri         | Jhumpa Lahiri        |
-- | Dave    | Eggers         | Dave Eggers          |
-- | Dave    | Eggers         | Dave Eggers          |
-- | Michael | Chabon         | Michael Chabon       |
-- | Patti   | Smith          | Patti Smith          |
-- | Dave    | Eggers         | Dave Eggers          |
-- | Neil    | Gaiman         | Neil Gaiman          |
-- | Raymond | Carver         | Raymond Carver       |
-- | Raymond | Carver         | Raymond Carver       |
-- | Don     | DeLillo        | Don DeLillo          |
-- | John    | Steinbeck      | John Steinbeck       |
-- | David   | Foster Wallace | David Foster Wallace |
-- | David   | Foster Wallace | David Foster Wallace |
-- +---------+----------------+----------------------+


-- ///////////////////////////////// CONCAT_WS (concat with seperator) //////////////////////////////////////////////////////////

SELECT CONCAT(title,'-',author_fname,'-',author_lname) AS 'Full Name' FROM books;
-- +--------------------------------------------------------------------+
-- | Full Name                                                          |
-- +--------------------------------------------------------------------+
-- | The Namesake-Jhumpa-Lahiri                                         |
-- | Norse Mythology-Neil-Gaiman                                        |
-- | American Gods-Neil-Gaiman                                          |
-- | Interpreter of Maladies-Jhumpa-Lahiri                              |
-- | A Hologram for the King: A Novel-Dave-Eggers                       |
-- | The Circle-Dave-Eggers                                             |
-- | The Amazing Adventures of Kavalier & Clay-Michael-Chabon           |
-- | Just Kids-Patti-Smith                                              |
-- | A Heartbreaking Work of Staggering Genius-Dave-Eggers              |
-- | Coraline-Neil-Gaiman                                               |
-- | What We Talk About When We Talk About Love: Stories-Raymond-Carver |
-- | Where I'm Calling From: Selected Stories-Raymond-Carver            |
-- | White Noise-Don-DeLillo                                            |
-- | Cannery Row-John-Steinbeck                                         |
-- | Oblivion: Stories-David-Foster Wallace                             |
-- | Consider the Lobster-David-Foster Wallace                          |
-- +--------------------------------------------------------------------+

-- But we could also done this using CONCAT_WS and that would have been much more simpler
SELECT CONCAT_WS('-',title,author_fname,author_lname) AS 'Full Name' FROM books;
-- +--------------------------------------------------------------------+
-- | Full Name                                                          |
-- +--------------------------------------------------------------------+
-- | The Namesake-Jhumpa-Lahiri                                         |
-- | Norse Mythology-Neil-Gaiman                                        |
-- | American Gods-Neil-Gaiman                                          |
-- | Interpreter of Maladies-Jhumpa-Lahiri                              |
-- | A Hologram for the King: A Novel-Dave-Eggers                       |
-- | The Circle-Dave-Eggers                                             |
-- | The Amazing Adventures of Kavalier & Clay-Michael-Chabon           |
-- | Just Kids-Patti-Smith                                              |
-- | A Heartbreaking Work of Staggering Genius-Dave-Eggers              |
-- | Coraline-Neil-Gaiman                                               |
-- | What We Talk About When We Talk About Love: Stories-Raymond-Carver |
-- | Where I'm Calling From: Selected Stories-Raymond-Carver            |
-- | White Noise-Don-DeLillo                                            |
-- | Cannery Row-John-Steinbeck                                         |
-- | Oblivion: Stories-David-Foster Wallace                             |
-- | Consider the Lobster-David-Foster Wallace                          |
-- +--------------------------------------------------------------------+


 





 
