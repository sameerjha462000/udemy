-- Version 1

CREATE TABLE employees(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	middle_name VARCHAR(255),
	age INT NOT NULL,
	current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);

-- Version 2

-- NOT NULL means field is mandatory. 

CREATE TABLE employees(
	id INT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	middle_name VARCHAR(255),
	age INT NOT NULL,
	current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
	PRIMARY KEY (id)
);
