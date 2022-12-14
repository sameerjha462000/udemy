
-- DO NOT USE DATEDIFF() AND DATE_ADD() FUNCTIONS INSTEAD USE +/-

SELECT DATEDIFF(NOW(), '2000-06-04');
-- +-------------------------------+
-- | DATEDIFF(NOW(), '2000-06-04') |
-- +-------------------------------+
-- |                          8125 |
-- +-------------------------------+


SELECT DATEDIFF(NOW(), birthdate) FROM people;
-- +----------------------------+
-- | DATEDIFF(NOW(), birthdate) |
-- +----------------------------+
-- |                      14175 |
-- |                      28741 |
-- |                          1 |
-- +----------------------------+





-- / / / / / / / / / / / / / / / / / / / / / DATE_ADD() / / / / / / / / / / / / / / / / / / / / / / / / / / / 
SELECT birthdate,DATE_ADD(birthdate, INTERVAL 1 MONTH) AS 'NEXT MONTH' FROM people;
-- +------------+------------+
-- | birthdate  | NEXT MONTH |
-- +------------+------------+
-- | 1983-11-11 | 1983-12-11 |
-- | 1943-12-25 | 1944-01-25 |
-- | 2022-09-01 | 2022-10-01 |
-- +------------+------------+



SELECT birthdate,DATE_ADD(birthdate, INTERVAL 3 QUARTER) AS 'AFTER 3 QUARTERS' FROM people;
-- +------------+------------------+
-- | birthdate  | AFTER 3 QUARTERS |
-- +------------+------------------+
-- | 1983-11-11 | 1984-08-11       |
-- | 1943-12-25 | 1944-09-25       |
-- | 2022-09-01 | 2023-06-01       |
-- +------------+------------------+






-- / / / / / / / / / / / / / / / / / / / / using +/- / / / / / / / / / / / / / / / / / / / / / / / / 
SELECT birthdt, birthdt + INTERVAL 1 MONTH AS 'after one month' FROM people;
-- +---------------------+---------------------+
-- | birthdt             | after one month     |
-- +---------------------+---------------------+
-- | 1983-11-11 10:07:35 | 1983-12-11 10:07:35 |
-- | 1943-12-25 04:10:42 | 1944-01-25 04:10:42 |
-- | 2022-09-01 20:58:03 | 2022-10-01 20:58:03 |
-- +---------------------+---------------------+



SELECT birthdt, birthdt - INTERVAL 5 MONTH AS 'before 5 month' FROM people;
-- +---------------------+---------------------+
-- | birthdt             | before 5 month      |
-- +---------------------+---------------------+
-- | 1983-11-11 10:07:35 | 1983-06-11 10:07:35 |
-- | 1943-12-25 04:10:42 | 1943-07-25 04:10:42 |
-- | 2022-09-01 20:58:03 | 2022-04-01 20:58:03 |
-- +---------------------+---------------------+



SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;
-- +---------------------+------------------------------------------------+
-- | birthdt             | birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR |
-- +---------------------+------------------------------------------------+
-- | 1983-11-11 10:07:35 | 1985-02-11 20:07:35                            |
-- | 1943-12-25 04:10:42 | 1945-03-25 14:10:42                            |
-- | 2022-09-01 20:58:03 | 2023-12-02 06:58:03                            |
-- +---------------------+------------------------------------------------

 



