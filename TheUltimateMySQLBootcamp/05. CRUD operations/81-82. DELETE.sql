-- We are at D of CRUD operations

DELETE FROM cats WHERE name='Egg';

-- GOOD TIP := Always review the data before deleting

SELECT * FROM cats WHERE name='Egg';

-- If we do not specify the WHERE clause in DELETE then all entries from cats would be deleted but cats table would still be there.

DELETE FROM cats;


-- NOTE := This command deletes all the entires from the table and not the entire table.
-- In a way it just empties the table HOWEVER, the drop command deletes the entire table from the database.