-- / / / / / / / / / /  MAX AND MIN WITHOUT GROUP BY  / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
SELECT MIN(released_year) FROM books;
-- +--------------------+
-- | MIN(released_year) |
-- +--------------------+
-- |               1945 |
-- +--------------------+

SELECT MIN(pages) FROM books;
-- +------------+
-- | MIN(pages) |
-- +------------+
-- |        176 |
-- +------------+

SELECT MAX(pages) FROM books;
-- +------------+
-- | MAX(pages) |
-- +------------+
-- |        634 |
-- +------------+

SELECT MAX(released_year) FROM books;
-- +--------------------+
-- | MAX(released_year) |
-- +--------------------+
-- |               2017 |
-- +--------------------+

-- / / / / / / / / / / / / / / / / / / BUT WHAT IF WE WANT TO FIND THE TITLE OF THE BOOK WITH MAX NUMBER OF PAGES / / / / / / / / 
SELECT MAX(pages), title FROM books;-- But this would not work. LOL XD
-- +------------+--------------+
-- | MAX(pages) | title        |
-- +------------+--------------+ -- But is this the correct result ? => No
-- |        634 | The Namesake | -- But why we are getting this result ? => MySQL calculates MAX(pages) but then we need to append the title column as well so it picks the first entry of the title column.
-- +------------+--------------+


-- / / / / / / / / / / / / / / / / / / /  Then what is the solution ? / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / 
SELECT title, pages FROM books WHERE pages=(SELECT MIN(pages) FROM books); -- This is called SUBQUERY method.
-- +-----------------------------------------------------+-------+
-- | title                                               | pages |
-- +-----------------------------------------------------+-------+
-- | What We Talk About When We Talk About Love: Stories |   176 |
-- +-----------------------------------------------------+-------+

-- But there is a problem in this method => This is slow as it runs two independent queries. Although, in our dataset it is not a problem as our dataset is very small


SELECT title, pages FROM books ORDER BY DESC LIMIT 1;
-- +-----------------------------------------------------+-------+
-- | title                                               | pages |
-- +-----------------------------------------------------+-------+
-- | What We Talk About When We Talk About Love: Stories |   176 |
-- +-----------------------------------------------------+-------+








