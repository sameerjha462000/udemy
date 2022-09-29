-- QUES 2 :
-- +----------------------+------------+
-- | title                | avg_rating |
-- +----------------------+------------+
-- | General Hospital     |    5.38000 |
-- | Bob's Burgers        |    7.52000 |
-- | Seinfeld             |    7.60000 |
-- | Bojack Horseman      |    7.94000 |
-- | Arrested Development |    8.08000 |
-- | Curb Your Enthusiasm |    8.12000 |
-- | Archer               |    8.12000 |
-- | Freaks and Geeks     |    8.60000 |
-- | Stranger Things      |    8.76667 |
-- | Breaking Bad         |    9.36000 |
-- | Fargo                |    9.40000 |
-- | Halt and Catch Fire  |    9.90000 |
-- +----------------------+------------+

SELECT 
	title, 
	AVG(rating) AS avg_rating 
FROM series 
INNER JOIN reviews
ON series.id=reviews.series_id
GROUP BY title ORDER BY avg_rating;