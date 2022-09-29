-- underscore wildcard is used for single character.

-- For example := WHERE stock_quantity LIKE '____' can be used to search for all books which have stock_quantity of 4 digits.

SELECT title, stock_quantity FROM books;
-- +-----------------------------------------------------+----------------+
-- | title                                               | stock_quantity |
-- +-----------------------------------------------------+----------------+
-- | The Namesake                                        |             32 |
-- | Norse Mythology                                     |             43 |
-- | American Gods                                       |             12 |
-- | Interpreter of Maladies                             |             97 |
-- | A Hologram for the King: A Novel                    |            154 |
-- | The Circle                                          |             26 |
-- | The Amazing Adventures of Kavalier & Clay           |             68 |
-- | Just Kids                                           |             55 |
-- | A Heartbreaking Work of Staggering Genius           |            104 |
-- | Coraline                                            |            100 |
-- | What We Talk About When We Talk About Love: Stories |             23 |
-- | Where I'm Calling From: Selected Stories            |             12 |
-- | White Noise                                         |             49 |
-- | Cannery Row                                         |             95 |
-- | Oblivion: Stories                                   |            172 |
-- | Consider the Lobster                                |             92 |
-- | 10% Happier                                         |             29 |
-- | fake_book                                           |            287 |
-- | Lincoln In The Bardo                                |           1000 |
-- +-----------------------------------------------------+----------------+


SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____'; -- selects all the rows where stock_quantity is of 4 digits
-- +----------------------+----------------+
-- | title                | stock_quantity |
-- +----------------------+----------------+
-- | Lincoln In The Bardo |           1000 |
-- +----------------------+----------------+


SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '___'; -- selects all the rows where stock_quantity is of 3 digits.
-- +-------------------------------------------+----------------+
-- | title                                     | stock_quantity |
-- +-------------------------------------------+----------------+
-- | A Hologram for the King: A Novel          |            154 |
-- | A Heartbreaking Work of Staggering Genius |            104 |
-- | Coraline                                  |            100 |
-- | Oblivion: Stories                         |            172 |
-- | fake_book                                 |            287 |
-- +-------------------------------------------+----------------+

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__%'; -- selects all the rows where stock_quantity is of atleast 2 digits.
-- +-----------------------------------------------------+----------------+
-- | title                                               | stock_quantity |
-- +-----------------------------------------------------+----------------+
-- | The Namesake                                        |             32 |
-- | Norse Mythology                                     |             43 |
-- | American Gods                                       |             12 |
-- | Interpreter of Maladies                             |             97 |
-- | A Hologram for the King: A Novel                    |            154 |
-- | The Circle                                          |             26 |
-- | The Amazing Adventures of Kavalier & Clay           |             68 |
-- | Just Kids                                           |             55 |
-- | A Heartbreaking Work of Staggering Genius           |            104 |
-- | Coraline                                            |            100 |
-- | What We Talk About When We Talk About Love: Stories |             23 |
-- | Where I'm Calling From: Selected Stories            |             12 |
-- | White Noise                                         |             49 |
-- | Cannery Row                                         |             95 |
-- | Oblivion: Stories                                   |            172 |
-- | Consider the Lobster                                |             92 |
-- | 10% Happier                                         |             29 |
-- | fake_book                                           |            287 |
-- | Lincoln In The Bardo                                |           1000 |
-- +-----------------------------------------------------+----------------+

-- / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / BUT what if the pattern to be searched contains % or _ itself / / / / / / / / / / / / /
SELECT title FROM books WHERE title LIKE '%\%%';
-- +-------------+
-- | title       |
-- +-------------+
-- | 10% Happier |
-- +-------------+

SELECT title FROM books WHERE title LIKE '%\_%';
-- +-----------+
-- | title     |
-- +-----------+
-- | fake_book |
-- +-----------+






