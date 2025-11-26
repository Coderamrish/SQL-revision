-- mysql indexes

-- viewing indexes on a table 

SHOW INDEXES FROM users;

-- creating a single-column index

CREATE INDEX idx_email ON users(email);

SELECT * FROM users WHERE email = 'example@example.com';

-- creating a multi-column index

CREATE INDEX idx_gender_salary ON users(gender, salary);

SELECT * FROM users
WHERE gender = 'Female' AND salary > 70000;

-- index order matters 

WHERE gender = 'Female' AND salary > 70000
WHERE salary > 70000

-- dropping an index

DROP INDEX idx_email ON users;

-- subQueries in mysql

SELECT id, name, salary
FROM users
WHERE salary > (
 SELECT AVG(salary) FROM users
);

-- subquery with IN

SELECT id, name, referred_by_id
FROM users
WHERE referred_by_id IN (
 SELECT id FROM users WHERE salary > 75000
);

-- other places subqueries are used 

SELECT name, salary,
(SELECT AVG(salary) FROM users) AS average_salary
FROM users;

