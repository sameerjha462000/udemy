-- QUES 5 :
-- +-----------+------------+
-- | genre     | avg_rating |
-- +-----------+------------+
-- | Animation |    7.86000 |
-- | Comedy    |    8.16250 |
-- | Drama     |    8.04375 |
-- +-----------+------------+



SELECT genre, AVG(rating) AS avg_rating FROM series INNER JOIN reviews ON series.id=reviews.series_id GROUP BY genre;


-- We now introduce new function which is called ROUND() which takes in two arguments -- The number to be rounded and the decimal places upto which rounding has to be done.

SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series INNER JOIN reviews ON series.id=reviews.series_id GROUP BY genre;


-- ROUGH WORK


