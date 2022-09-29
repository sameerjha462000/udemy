-- The SUBSTRING function takes the starting index and ending index.
-- In MySQL, strings start with index 1

SELECT SUBSTRING('Hello World',1,4); -- Hell
-- +------------------------------+
-- | SUBSTRING('Hello World',1,4) |
-- +------------------------------+
-- | Hell                         |
-- +------------------------------+

-- If we do not give the ending index, then it prints all the characters starting from starting index to the last character.

SELECT SUBSTRING('Hello World',7); -- World
-- +----------------------------+
-- | SUBSTRING('Hello World',7) |
-- +----------------------------+
-- | World                      |
-- +----------------------------+


SELECT SUBSTRING(title,1,10) FROM books;
-- +-----------------------+
-- | SUBSTRING(title,1,10) |
-- +-----------------------+
-- | The Namesa            |
-- | Norse Myth            |
-- | American G            |
-- | Interprete            |
-- | A Hologram            |
-- | The Circle            |
-- | The Amazin            |
-- | Just Kids             |
-- | A Heartbre            |
-- | Coraline              |
-- | What We Ta            |
-- | Where I'm             |
-- | White Nois            |
-- | Cannery Ro            |
-- | Oblivion:             |
-- | Consider t            |
-- +-----------------------+

-- There is also SUBSTR which is same as SUBSTRING
-- BUT do not use SUBSTR


-- COMBINATION OF SUBSTRING AND CONCAT

SELECT CONCAT(SUBSTRING(title,1,10), '...') AS 'short title' FROM books;
-- +---------------+
-- | short title   |
-- +---------------+
-- | The Namesa... |
-- | Norse Myth... |
-- | American G... |
-- | Interprete... |
-- | A Hologram... |
-- | The Circle... |
-- | The Amazin... |
-- | Just Kids...  |
-- | A Heartbre... |
-- | Coraline...   |
-- | What We Ta... |
-- | Where I'm ... |
-- | White Nois... |
-- | Cannery Ro... |
-- | Oblivion: ... |
-- | Consider t... |
-- +---------------+




