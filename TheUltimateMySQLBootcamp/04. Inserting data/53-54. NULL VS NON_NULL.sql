-- Let us consider the TABLE cats :


DESC cats;

-- This would show us the description of the table cats and in the NULL section we can see that we have both the values as YES
-- But what does this mean??
-- This means that if we can have NULL values in these tables.
-- remember that NULL is NOT the same as 0.


INSERT INTO cats(name) VALUES ('Alabama');

-- The above command would add ('Alabama',NULL) into cats.

-- We could also have an extreme version of this

INSERT INTO cats() VALUES ();

-- The above command would add (NULL,NULL) into cats.

-- //////////////////////////////////////////SOLUTION//////////////////////////////////////////////////////////////////////////

CREATE TABLE cats2(
	name VARCHAR(100) NOT NULL,
	age INT NOT NULL
);


DESC cats2;

-- This time under NULL we would have NO.

INSERT INTO cats2(name) VALUES('Texas');

-- This would show us an error as field age does not have a DEFAULT VALUE and also we are not allowing NULL value in age.

INSERT INTO cats2(age) VALUES(10);

-- This would show us an error as field name does not have a DEFAULT VALUE and also we are not allowing NULL values in name.

 
