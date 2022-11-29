SELECT title,CHAR_LENGTH('Abhishek Jha') FROM books;
-- +-----------------------------------------------------+-----------------------------+
-- | title                                               | CHAR_LENGTH('Abhishek Jha') |
-- +-----------------------------------------------------+-----------------------------+
-- | The Namesake                                        |                          12 |
-- | Norse Mythology                                     |                          12 |
-- | American Gods                                       |                          12 |
-- | Interpreter of Maladies                             |                          12 |
-- | A Hologram for the King: A Novel                    |                          12 |
-- | The Circle                                          |                          12 |
-- | The Amazing Adventures of Kavalier & Clay           |                          12 |
-- | Just Kids                                           |                          12 |
-- | A Heartbreaking Work of Staggering Genius           |                          12 |
-- | Coraline                                            |                          12 |
-- | What We Talk About When We Talk About Love: Stories |                          12 |
-- | Where I'm Calling From: Selected Stories            |                          12 |
-- | White Noise                                         |                          12 |
-- | Cannery Row                                         |                          12 |
-- | Oblivion: Stories                                   |                          12 |
-- | Consider the Lobster                                |                          12 |
-- +-----------------------------------------------------+-----------------------------+


SELECT author_lname,CHAR_LENGTH(author_lname) AS length FROM books;
-- +----------------+--------+
-- | author_lname   | length |
-- +----------------+--------+
-- | Lahiri         |      6 |
-- | Gaiman         |      6 |
-- | Gaiman         |      6 |
-- | Lahiri         |      6 |
-- | Eggers         |      6 |
-- | Eggers         |      6 |
-- | Chabon         |      6 |
-- | Smith          |      5 |
-- | Eggers         |      6 |
-- | Gaiman         |      6 |
-- | Carver         |      6 |
-- | Carver         |      6 |
-- | DeLillo        |      7 |
-- | Steinbeck      |      9 |
-- | Foster Wallace |     14 |
-- | Foster Wallace |     14 |
-- +----------------+--------+

-- /////////// MEGA QUESTION /////////////////////////////////////

SELECT CONCAT_WS(' ', author_lname, 'is', CHAR_LENGTH(author_lname), 'characters long') FROM books;
-- +----------------------------------------------------------------------------------+
-- | CONCAT_WS(' ', author_lname, 'is', CHAR_LENGTH(author_lname), 'characters long') |
-- +----------------------------------------------------------------------------------+
-- | Lahiri is 6 characters long                                                      |
-- | Gaiman is 6 characters long                                                      |
-- | Gaiman is 6 characters long                                                      |
-- | Lahiri is 6 characters long                                                      |
-- | Eggers is 6 characters long                                                      |
-- | Eggers is 6 characters long                                                      |
-- | Chabon is 6 characters long                                                      |
-- | Smith is 5 characters long                                                       |
-- | Eggers is 6 characters long                                                      |
-- | Gaiman is 6 characters long                                                      |
-- | Carver is 6 characters long                                                      |
-- | Carver is 6 characters long                                                      |
-- | DeLillo is 7 characters long                                                     |
-- | Steinbeck is 9 characters long                                                   |
-- | Foster Wallace is 14 characters long                                             |
-- | Foster Wallace is 14 characters long                                             |
-- +----------------------------------------------------------------------------------+

