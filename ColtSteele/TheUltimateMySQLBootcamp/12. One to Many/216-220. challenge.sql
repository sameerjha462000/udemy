-- OUR FIRST JOIN EXERCISE

-- QUES 1 :
	-- Write these schemas 
	-- students ==> id, first_name
	-- papers   ==> title, grade, student_id

	SHOW DATABASES;
	SELECT DATABASE();
	CREATE DATABASE exp;
	USE exp;
	SHOW TABLES FROM exp;
	CREATE TABLE students(
		id INT AUTO_INCREMENT PRIMARY KEY,
		first_name VARCHAR(100)
	);

	CREATE TABLE papers(
		title VARCHAR(100),
		grade VARCHAR(100),
		student_id INT,
		FOREIGN KEY (student_id) REFERENCES students(id)
	);

	-- Now paste the following data into the table
	INSERT INTO students (first_name) 
	VALUES 	('Caleb'), 
			('Samantha'), 
			('Raj'), 
			('Carlos'), 
			('Lisa');

	INSERT INTO papers (student_id, title, grade ) 
	VALUES	(1, 'My First Book Report', 60),
	    	(1, 'My Second Book Report', 75),
	    	(2, 'Russian Lit Through The Ages', 94),
	    	(2, 'De Montaigne and The Art of The Essay', 98),
	    	(4, 'Borges and Magical Realism', 89);

	SELECT * FROM students;
	-- +----+------------+
	-- | id | first_name |
	-- +----+------------+
	-- |  1 | Caleb      |
	-- |  2 | Samantha   |
	-- |  3 | Raj        |
	-- |  4 | Carlos     |
	-- |  5 | Lisa       |
	-- +----+------------+
	SELECT * FROM papers;
	-- +---------------------------------------+-------+------------+
	-- | title                                 | grade | student_id |
	-- +---------------------------------------+-------+------------+
	-- | My First Book Report                  | 60    |          1 |
	-- | My Second Book Report                 | 75    |          1 |
	-- | Russian Lit Through The Ages          | 94    |          2 |
	-- | De Montaigne and The Art of The Essay | 98    |          2 |
	-- | Borges and Magical Realism            | 89    |          4 |
	-- +---------------------------------------+-------+------------+



-- QUES 2 :
	-- print this(shown in video)
	SELECT first_name, title, grade FROM students INNER JOIN papers ON students.id=papers
	.student_id ORDER BY grade DESC;
	-- +------------+---------------------------------------+-------+
	-- | first_name | title                                 | grade |
	-- +------------+---------------------------------------+-------+
	-- | Samantha   | De Montaigne and The Art of The Essay |    98 |
	-- | Samantha   | Russian Lit Through The Ages          |    94 |
	-- | Carlos     | Borges and Magical Realism            |    89 |
	-- | Caleb      | My Second Book Report                 |    75 |
	-- | Caleb      | My First Book Report                  |    60 |
	-- +------------+---------------------------------------+-------+


-- QUES 3 :
	-- print this(shown in video)
	SELECT first_name, title, grade FROM students LEFT JOIN papers ON students.id=papers.student_id;
	-- +------------+---------------------------------------+-------+
	-- | first_name | title                                 | grade |
	-- +------------+---------------------------------------+-------+
	-- | Caleb      | My First Book Report                  |    60 |
	-- | Caleb      | My Second Book Report                 |    75 |
	-- | Samantha   | Russian Lit Through The Ages          |    94 |
	-- | Samantha   | De Montaigne and The Art of The Essay |    98 |
	-- | Raj        | NULL                                  |  NULL |
	-- | Carlos     | Borges and Magical Realism            |    89 |
	-- | Lisa       | NULL                                  |  NULL |
	-- +------------+---------------------------------------+-------+


-- QUES 4 :
	-- print this(shown in video)
	SELECT first_name, IFNULL(title,'MISSING') AS title, IFNULL(grade,0) AS grade FROM students LEFT JOIN papers ON students.id=papers.student_id;
	-- +------------+---------------------------------------+-------+
	-- | first_name | title                                 | grade |
	-- +------------+---------------------------------------+-------+
	-- | Caleb      | My First Book Report                  |    60 |
	-- | Caleb      | My Second Book Report                 |    75 |
	-- | Samantha   | Russian Lit Through The Ages          |    94 |
	-- | Samantha   | De Montaigne and The Art of The Essay |    98 |
	-- | Raj        | MISSING                               |     0 |
	-- | Carlos     | Borges and Magical Realism            |    89 |
	-- | Lisa       | MISSING                               |     0 |
	-- +------------+---------------------------------------+-------+


-- QUES 5 :
	-- print average grade of every student next to his first_name

	SELECT first_name, IFNULL(AVG(grade),0) AS average FROM students LEFT JOIN papers ON students.id=papers.student_id
	GROUP BY first_name ORDER BY average DESC;
	-- +------------+---------+
	-- | first_name | average |
	-- +------------+---------+
	-- | Samantha   | 96.0000 |
	-- | Carlos     | 89.0000 |
	-- | Caleb      | 67.5000 |
	-- | Raj        |  0.0000 |
	-- | Lisa       |  0.0000 |
	-- +------------+---------+


-- QUES 6 :
	-- Assign to each of them a grade.
	-- If average >= 75 the PASSING otherwise FAILING
	SELECT 	first_name, 
			IFNULL(AVG(grade), 0) AS average,
			CASE
            	WHEN AVG(grade) IS NULL THEN 'FAILING' -- To ensure that AVG(grade) is a number if it is not then return 'FAILING'
				WHEN AVG(grade) >= 75 THEN 'PASSING'
				ELSE 'FAILING'
			END AS passing_status
	FROM students
	LEFT JOIN papers ON students.id=papers.student_id
	GROUP BY first_name ORDER BY average DESC;
	-- +------------+---------+----------------+
	-- | first_name | average | passing_status |
	-- +------------+---------+----------------+
	-- | Samantha   | 96.0000 | PASSING        |
	-- | Carlos     | 89.0000 | PASSING        |
	-- | Caleb      | 67.5000 | FAILING        |
	-- | Raj        |  0.0000 | FAILING        |
	-- | Lisa       |  0.0000 | FAILING        |
	-- +------------+---------+----------------+








