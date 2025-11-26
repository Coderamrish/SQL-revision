SELECT column1, column2 FROM TotalUserSalary
SELECT * FROM users;

-- filtering Rows with WHERE
SELECT * FROM users WHERE gender = 'Male';
SELECT * FROM users WHERE gender != 'Female';
-- or
SELECT * FROM users WHERE gender <> 'Female';

--Greater than or less than 
SELECT * FROM users WHERE date_of_birth < '1995-08-01';
SELECT * FROM users WHERE id > 10;
 -- Greater Than or Equal/ Less Than or Equal

 SELECT * FROM users WHERE id >= 5;
 SELECT * FROM users WHERE id <= 20;

 -- working with NULL

-- is NULL
SELECT * FROM users WHERE date_of_birth IS NULL;

-- is not NULL
SELECT * FROM users WHERE date_of_birth IS NOT NULL;

-- Between
SELECT * FROM users WHERE date_of_birth BETWEEN '1990-06-15' AND '2000-12-31';

-- IN
SELECT * FROM users WHERE gender IN('Male', 'other');

-- LIKE (Pattern Matching)
SELECT * FROM users WHERE name LIKE 'A%'; -- Starts with A
SELECT * FROM users WHERE name LIKE '%a'; -- Ends with a
SELECT * FROM users WHERE name LIKE '%li%'; -- Contains 'li'

-- AND/OR

SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
SELECT * FROM users WHERE gender = 'Male' OR gender = 'Other';

-- ORDER BY

SELECT * FROM users ORDER BY date_of_birth ASC;
SELECT * FROM users ORDER BY name DESC;

--LIMIT
SELECT * FROM users LIMIT 5; -- Top 5 rows
SELECT * FROM users LIMIT 10 OFFSET 5; -- Skip first 5 rows, then get next 10
SELECT * FROM users LIMIT 5, 10; -- Get 10 rows starting from the 6th row (Same as
SELECT * FROM users ORDER BY created_at DESC LIMIT 10;


-- quick quiz

SELECT * FROM users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5;
SELECT * FROM users ORDER BY salary DESC;
SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000;