CREATE TABLE cats3(
	name VARCHAR(100) DEFAULT 'unnamed',
	age INT DEFAULT 99
);

-- But what are these DEFAULT VALUES ?

-- DEFAULT VALUES of a field are used when we do not give the value of that field.

INSERT INTO cats3(name) VALUES ('Texas');

-- The above query would add the data ('Texas',99) into cats3.

INSERT INTO cats3(age) VALUES (10);

-- The above query would add the data ('unnamed',10) into cats3.

INSERT INTO cats3() VALUES ();

-- The above query would add the data ('unnamed',99) into cats3.



-- //////////////////////////////////// Very Very Important Question ////////////////////////

DESC cats3;

-- If we see the NULL column then we see that it is YES but why is it so ? -- I mean if someone is not 
-- giving the value for a column then sql would automatically insert DEFAULT VALUE into that place, so why
-- do we have NULL as YES ?

-- REASON := 
-- The reason is pretty simple as someone might deliberately insert NULL values.


INSERT INTO cats3(name,age) VALUES (NULL,NULL);

--  If we do not want to allow NULL values then we use NOT NULL.


-- //////////////////////////////////// Lets create a new table without null values and default values //////

CREATE TABLE cats4(
	name VARCHAR(100) NOT NULL DEFAULT 'unnamed',
	age INT NOT NULL DEFAULT 69
);


INSERT INTO cats4(name,age) VALUES ('Montana',NULL);

-- The above command would give us error as we have NOT NULL in age.

INSERT INTO cats4(name) VALUES ('Abhishek');

-- The above command would add ('Abhishek',69) into the table as we have not provided a value for age.

INSERT INTO cats4(age) VALUES (10);

-- The above command would add ('unnamed',10) into the table as we have not provided a value for name.

INSERT INTO cats4() VALUES ();

-- The above command would add ('unnamed',69) into the table as we have not provided a value for name as well as age.







