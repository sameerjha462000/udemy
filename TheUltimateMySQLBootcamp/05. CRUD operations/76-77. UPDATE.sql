-- For updating a command remember this 
-- UPDATE SET WHERE

UPDATE cats SET breed='shorthair' 
WHERE breed='Tabby';

UPDATE cats SET age=14 WHERE name='Misty';


-- GOOD RULE

-- It is always better that you see the data you want to update, this would help you in NOT nodifying any data which was not needed to be changed.
-- Always try SELECTing before you UPDATE

-- For example : in above case we should have seen the rows from cats WHERE name is Misty and then UPDATEd it.

SELECT * FROM cats WHERE name='Misty';


