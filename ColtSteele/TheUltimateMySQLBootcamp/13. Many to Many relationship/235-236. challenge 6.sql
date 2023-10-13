-- QUES 6 :
-- +------------+-----------+-------+-----+-----+---------+----------+
-- | first_name | last_name | COUNT | MIN | MAX | AVG     | STATUS   |
-- +------------+-----------+-------+-----+-----+---------+----------+
-- | Thomas     | Stoneman  |     5 | 7.0 | 9.5 | 8.02000 | ACTIVE   |
-- | Wyatt      | Skaggs    |     9 | 5.5 | 9.3 | 7.80000 | ACTIVE   |
-- | Kimbra     | Masters   |     9 | 6.8 | 9.0 | 7.98889 | ACTIVE   |
-- | Domingo    | Cortes    |    10 | 5.8 | 9.1 | 7.83000 | ACTIVE   |
-- | Colt       | Steele    |    10 | 4.5 | 9.9 | 8.77000 | ACTIVE   |
-- | Pinkie     | Petit     |     4 | 4.3 | 8.8 | 7.25000 | ACTIVE   |
-- | Marlon     | Crafford  |     0 | 0.0 | 0.0 | 0.00000 | INACTIVE |
-- +------------+-----------+-------+-----+-----+---------+----------+


SELECT 
	first_name,
	last_name,
	COUNT(rating) AS COUNT,
	IFNULL(MIN(rating),0) AS MIN,
	IFNULL(MAX(rating),0) AS MAX,
	IFNULL(AVG(rating),0) AS AVG,
	CASE
		WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
		ELSE 'INACTIVE'
	END AS STATUS
FROM reviewers LEFT JOIN reviews ON reviewers.id=reviews.reviewer_id
GROUP BY reviewers.id;






-- The above code works fine but we if we have a look at the AVG column, it looks ugly
-- So we can use ROUND() function to make it look somewhat prettier.


-- Approach 2
SELECT 
	first_name,
	last_name,
	COUNT(rating) AS COUNT,
	IFNULL(MIN(rating),0) AS MIN,
	IFNULL(MAX(rating),0) AS MAX,
	IFNULL(ROUND(AVG(rating),2),0) AS AVG,
	CASE
		WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
		ELSE 'INACTIVE'
	END AS STATUS
FROM reviewers LEFT JOIN reviews ON reviewers.id=reviews.reviewer_id
GROUP BY reviewers.id;



-- ROUGH WORK





