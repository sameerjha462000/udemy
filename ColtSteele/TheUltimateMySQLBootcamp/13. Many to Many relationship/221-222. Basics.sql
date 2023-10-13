-- 1. The Many to Many relationship

-- 2. Examples := 
	
	-- 	(a) Books  		<===> Authors
	--  	(b) Blog Post   	<===> Tags
	-- 	(c) Students    	<===> Classes

-- 3. In this section we would be working with TV show database 
	-- Series Data
	-- Reviewers Data
	-- Reviews Data

-- 4. To represent a many to many relationship between two tables we always need a third table
	-- called as join table. For example, in our above case we have reviews table which is acting as the
 	-- third table.

-- 5. 	Reviewers has 
		-- id (primary key)
		-- first_name
		-- last_name
--    	Series has
		-- id (primary key)
		-- title
		-- released_year
		-- genre
--	Reviews has
		-- id
		-- rating
		-- series_id(foreign key references primary key id of Series table)
		-- reviewer_id(foreign key references primary key id of Reviewers table)



-- 6. Dataset for tables is in Dataset.sql file

