-- Let us drop our current tables :

DROP TABLE cats;

-- Now we recreate a new cats table and we would be using this table in this entire section 5

CREATE TABLE cats(
	cat_id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100),
	breed VARCHAR(100),
	age INT,
	PRIMARY KEY (cat_id)
);


-- And now let us finally insert some new cats

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);




