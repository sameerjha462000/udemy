-- QUES 1 : What a good use case for CHAR ?

	-- CHAR can be used where you want fixed length. Also, It takes less space and time in comparison to VARCHAR.


-- QUES 2 : 




-- QUES 3 : What is the difference between DATETIME and TIMESTAMP?

	-- TIMESTAMP has a range of 1970 to 2038 and DATETIME has a range of 1000 to 9999.
	-- TIMESTAMP takes less space than DATETIME.


-- QUES 4 : print out the current time.

	SELECT CURTIME();
	-- +-----------+
	-- | CURTIME() |
	-- +-----------+
	-- | 05:41:53  |
	-- +-----------+


-- QUES 5 : print out the current date but not time.

	SELECT CURDATE();
	-- +------------+
	-- | CURDATE()  |
	-- +------------+
	-- | 2022-09-02 |
	-- +------------+


-- QUES 6 : print out the current day of the week
	SELECT DAYOFWEEK(CURDATE());
	-- +----------------------+
	-- | DAYOFWEEK(CURDATE()) |
	-- +----------------------+
	-- |                    6 |
	-- +----------------------+

	SELECT DAYOFWEEK(NOW());  -- This can also be used for the above question

--QUES 7 : print out the name of the current day
	SELECT DAYNAME(CURDATE()); -- SELECT DAYNAME(NOW());
	-- +--------------------+
	-- | DAYNAME(CURDATE()) |
	-- +--------------------+
	-- | Friday             |
	-- +--------------------+

	OR

	SELECT DATE_FORMAT(CURDATE(),'%W');
	-- +-----------------------------+
	-- | DATE_FORMAT(CURDATE(),'%W') |
	-- +-----------------------------+
	-- | Friday                      |
	-- +-----------------------------+


-- QUES 8 : print out the current day and time using this format : mm/dd/yyyy

	SELECT DATE_FORMAT(CURDATE(),'%m/%d/%Y');
	-- +-----------------------------------+
	-- | DATE_FORMAT(CURDATE(),'%m/%d/%Y') |
	-- +-----------------------------------+
	-- | 09/02/2022                        |
	-- +-----------------------------------+


-- QUES 9 : print out the current day and time using this format 'January 2nd at 3:15'

	SELECT DATE_FORMAT(CURDATE(),CONCAT('%M %D at ',TIME_FORMAT(CURTIME(),'%h:%m'))) AS 'day and time'; -- lengthy
	SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i') AS 'day and time'; -- colt's answer -- much better than mine
	-- +------------------------+
	-- | day and time           |
	-- +------------------------+
	-- | September 2nd at 05:00 |
	-- +------------------------+


-- QUES 10 : Create a tweets table that stores 
				-- . The tweet content
				-- . A username
				-- . Time it was created

	CREATE TABLE tweets(content VARCHAR(140), username VARCHAR(20), created_at TIMESTAMP DEFAULT NOW());
	INSERT INTO tweets(content, username) VALUES ('this is my first tweet', 'coltscat');
	INSERT INTO tweets(content, username) VALUES ('this is my second tweet', 'coltscat');
	-- +-------------------------+----------+---------------------+
	-- | content                 | username | created_at          |
	-- +-------------------------+----------+---------------------+
	-- | this is my first tweet  | coltscat | 2022-09-02 05:59:04 |
	-- | this is my second tweet | coltscat | 2022-09-02 05:59:15 |
	-- +-------------------------+----------+---------------------+






	

