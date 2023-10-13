-- QUES 1 = CHANGE Jackson's name to "Jack"

SELECT * FROM cats WHERE name='Jackson'; -- see the data

UPDATE cats SET name='Jack' WHERE name='Jackson'; -- UPDATE it

-- QUES 2 = CHANGE Ringo's breed to 'British Shorthair'

SELECT * FROM cats WHERE name='Ringo'; -- see the data

UPDATE cats SET breed='British Shorthair' WHERE name='Ringo'; -- UPDATE the data

-- QUES 3 = Update both Maine Coons' ages to be 12

SELECT * FROM cats WHERE breed='Maine Coon';

UPDATE cats SET age=12 WHERE breed='Maine Coon'



