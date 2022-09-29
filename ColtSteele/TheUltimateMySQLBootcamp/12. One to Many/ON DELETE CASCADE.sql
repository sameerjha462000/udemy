CREATE TABLE students(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100)
);

-- Whenever a student would be deleted then all his papers would be deleted as well.
CREATE TABLE papers(
	title VARCHAR(100),
	grade VARCHAR(100),
	student_id INT,
	FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);


-- ROUGH WORK




