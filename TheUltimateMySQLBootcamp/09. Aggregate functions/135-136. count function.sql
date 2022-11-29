SELECT COUNT(*) FROM books;
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |       19 |
-- +----------+

SELECT COUNT(author_fname) FROM books;
-- +---------------------+
-- | COUNT(author_fname) |
-- +---------------------+ -- But is this correct ? => NO
-- |                  19 |
-- +---------------------+

-- So we use distict author_fname
SELECT COUNT(DISTINCT author_fname) FROM books;
-- +------------------------------+
-- | COUNT(DISTINCT author_fname) |
-- +------------------------------+
-- |                           12 |
-- +------------------------------+

SELECT COUNT(DISTINCT author_fname,author_lname) AS 'distinct full names' FROM books;
-- +---------------------+
-- | distinct full names |
-- +---------------------+
-- |                  12 |
-- +---------------------+


-- How many titles contains 'the' ?

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        6 |
-- +----------+

-- PROOF := 
	SELECT title FROM books WHERE title LIKE '%the%';
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







