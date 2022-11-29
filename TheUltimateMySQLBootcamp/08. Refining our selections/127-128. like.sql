-- % wildcard is used to represent multiple characters
SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%'; -- selects all the names which have 'da' in them
-- +-------------------------------------------+--------------+
-- | title                                     | author_fname |
-- +-------------------------------------------+--------------+
-- | A Hologram for the King: A Novel          | Dave         |
-- | The Circle                                | Dave         |
-- | A Heartbreaking Work of Staggering Genius | Dave         |
-- | Oblivion: Stories                         | David        |
-- | Consider the Lobster                      | David        |
-- | 10% Happier                               | Dan          |
-- | fake_book                                 | Freida       |
-- +-------------------------------------------+--------------+


SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%'; -- selects all the names which start with 'da'
-- +-------------------------------------------+--------------+
-- | title                                     | author_fname |
-- +-------------------------------------------+--------------+
-- | A Hologram for the King: A Novel          | Dave         |
-- | The Circle                                | Dave         |
-- | A Heartbreaking Work of Staggering Genius | Dave         |
-- | Oblivion: Stories                         | David        |
-- | Consider the Lobster                      | David        |
-- | 10% Happier                               | Dan          |
-- +-------------------------------------------+--------------+

SELECT title FROM books WHERE title LIKE 'the'; -- selects all the names that are equal to 'the'
-- Empty set

SELECT title FROM books WHERE title LIKE '%the'; -- selects all the names that end with 'the'.
-- Empty set

SELECT title FROM books WHERE title LIKE '%the%'; -- selects all the names that have 'the' in them
-- +-------------------------------------------+
-- | title                                     |
-- +-------------------------------------------+
-- | The Namesake                              |
-- | A Hologram for the King: A Novel          |
-- | The Circle                                |
-- | The Amazing Adventures of Kavalier & Clay |
-- | Consider the Lobster                      |
-- | Lincoln In The Bardo                      |
-- +-------------------------------------------+
