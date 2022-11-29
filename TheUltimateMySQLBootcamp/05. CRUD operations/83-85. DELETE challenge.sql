-- QUES 1 : DELETE all 4 years old cats
SELECT * FROM cats WHERE age=4; -- see the data
DELETE FROM cats WHERE age=4; -- now delete it

-- QUES 2 : DELETE cats whose age is the same as their cat_id;

SELECT * FROM cats WHERE age=cat_id; -- see the data
DELETE FROM cats WHERE age=cat_id; -- now delete it

-- QUES 3 : DELETE all cats

SELECT * FROM cats;
DELETE FROM cats;

