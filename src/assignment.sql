CREATE TABLE users (
	id SERIAL NOT NULL,
	username VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	firstName VARCHAR(50) NULL,
	lastName VARCHAR(100) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE countries (
	id SERIAL NOT NULL,
	name VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE addresses (
	id SERIAL NOT NULL,
	user_id int NOT NULL,
	country_id int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (user_id) 
        REFERENCES users(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
	FOREIGN KEY (country_id) 
        REFERENCES countries(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

-- DELETE FROM users

-- ALTER SEQUENCE users_id_seq RESTART WITH 1

INSERT INTO users (username, password, email, firstName, lastName)
SELECT 'tom.kanney', 'Pa$$w0rd123!', 'tkanney@gmail.com', 'Tom', 'Kanney'
UNION
SELECT 'tara.kanney', 'Pa$$w0rd123!', 'tara.kanney@gmail.com', 'Tara', 'Kanney'

--SELECT * FROM users

INSERT INTO countries (name)
SELECT 'USA'
UNION
SELECT 'Australia'
UNION
SELECT 'Peru'

--SELECT * FROM countries

INSERT INTO addresses (user_id, country_id)
SELECT 1, 1
UNION
SELECT 2, 1
UNION
SELECT 2, 3

--SELECT * FROM addresses

--1. List all the countries
SELECT * FROM countries
--2. List all user emails
SELECT email FROM users
--3. List all user firstNames that have the letter "e" in the name.
SELECT firstName from users WHERE firstName LIKE '%e%'
--4. List all the countries where user_id = 2 lives.
SELECT a.user_id, c.* FROM addresses a
JOIN countries c on a.country_id = c.id
WHERE a.user_id = 2
