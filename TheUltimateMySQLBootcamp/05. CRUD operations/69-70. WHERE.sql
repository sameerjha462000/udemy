SELECT * FROM cats WHERE age=4;

-- We can also search for cat whose name is Egg.
-- NOTE (VV IMP)
-- This command is CASE INSENSITIVE, but what does this mean?
SELECT * FROM cats WHERE name='Egg';
SELECT * FROM cats WHERE name='EGG';
SELECT * FROM cats WHERE name='eGg';
SELECT * FROM cats WHERE name='EgG';
