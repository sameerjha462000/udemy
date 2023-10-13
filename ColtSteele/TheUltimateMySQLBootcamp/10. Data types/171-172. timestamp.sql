-- TIMESTAMP has limited range(1970 to 2038) than DATETIME(1000-9999), BUT as usual it takes less space.
CREATE TABLE comments
	(
		content VARCHAR(255),
		created_at TIMESTAMP DEFAULT NOW()
	)


INSERT INTO comments(content)
VALUES  ('low what a funny article'),
		('I found this offensive');


SELECT * FROM comments;
-- +--------------------------+---------------------+
-- | content                  | created_at          |
-- +--------------------------+---------------------+
-- | lol what a funny article | 2022-09-02 05:01:53 |
-- | I found this offensive   | 2022-09-02 05:01:53 |
-- +--------------------------+---------------------+





-- / / / / / / / / / / / / / / / / / / / / / / / UPDATING COMMENTS / / / / / / / / / / / / / / / / / / / / / / 
CREATE TABLE comments2
	(
		content VARCHAR(100),
		changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP -- YHA pr we could have also used NOW()
	)


INSERT INTO comments2(content) VALUES ('dasdasdasd');
INSERT INTO comments2(content) VALUES ('lololololo');
INSERT INTO comments2(content) VALUES ('I like cats and dogs');



SELECT * FROM comments2;
-- +----------------------+---------------------+
-- | content              | changed_at          |
-- +----------------------+---------------------+
-- | dasdasdasd           | 2022-09-02 05:15:02 |
-- | lololololo           | 2022-09-02 05:15:10 |
-- | I like cats and dogs | 2022-09-02 05:15:17 |
-- +----------------------+---------------------+


-- Now when we will change the content of 'daddasdasd' it will automatically update the changed_at


UPDATE comments2 SET content='This is not gibberish' WHERE content='dasdasdasd';


SELECT * FROM comments2;
-- +-----------------------+---------------------+
-- | content               | changed_at          |
-- +-----------------------+---------------------+
-- | This is not gibberish | 2022-09-02 05:17:50 | -- automatically changed to current time
-- | lololololo            | 2022-09-02 05:15:10 |
-- | I like cats and dogs  | 2022-09-02 05:15:17 |
-- +-----------------------+---------------------+







