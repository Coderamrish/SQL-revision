-- SQL FUNCTIONS (MYSQL)

-- 1. Aggregate Functions

SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM users WHERE gender = 'Female';

-- min() and max()\

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

-- sum()

SELECT SUM(salary) AS total_payroll FROM users;

-- avg()

SELECT AVG(salary) AS avg_salary FROM users;

-- Grouping with GROUP BY

SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender;

-- string Functions

SELECT name, LENGTH(name) AS name_length FROM users;

-- Lower() and upper()

SELECT name, LOWER(name) AS lowercase_name FROM users;
SELECT name, UPPER(name) AS uppercase_name FROM users;

-- CONCAT()

SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;

-- Date Functions

SELECT NOW();

-- year() , month(), day()

SELECT name, YEAR(date_of_birth) AS birth_year FROM users;

--DATEDIFF()

SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;

SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;

-- mathematical functions

SELECT salary,
 ROUND(salary) AS rounded,
 FLOOR(salary) AS floored,
 CEIL(salary) AS ceiled
FROM users;

-- mod()

SELECT id, MOD(id, 2) AS remainder FROM users;

-- conditional functions

SELECT name, gender,
 IF(gender = 'Female', 'Yes', 'No') AS is_female
FROM users;

