-- In challenge no 6, we learnt something called as IF condition 

CASE
	WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
	ELSE 'INACTIVE'
END AS STATUS



--  The above code using IF condition can be written as

IF(COUNT(rating) >= 1, 'ACTIVE', 'INACTIVE') AS STATUS;



-- This could be handy in cases where only two possible cases are there



