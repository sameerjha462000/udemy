-- SQL warnings

-- Let us say we have a table cat with two columns (name, age) and name is of type VARCHAR(20)
-- and now let us say we tried to add the following data into the table

INSERT INTO cats(name,age)
VALUES ('This cat is named Charlie which is also a human name. In fact I know a couple of Charlies. Fun Fact',10);

-- This would insert the data into the cats but would also show a warning as it's name field is way beyond 20 characters


-- To take a look at warnings use the following command 

SHOW WARNINGS;

-- Note that this would give us the description of the warning only if we use it just after the warning message.


-- Now let us create another warning

INSERT INTO cats(name,age) VALUES ('Lima', 'ncsnsnskbdbcdjhvdjhcv');

-- This would set the value to be automatically to 0.

