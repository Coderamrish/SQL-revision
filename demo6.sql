SELECT column1, column2 FROM table_name;
SELECT * FROM users;
SELECT * FROM users WHERE gender = 'Male';
SELECT * FROM users WHERE gender != 'Female';
-- or
SELECT * FROM users WHERE gender <> 'Female';
SELECT * FROM users WHERE date_of_birth < '1995-01-01';
SELECT * FROM users WHERE id > 10;
-- Greater than or Equal/ Less Than or Equal
SELECT * FROM users WHERE id >= 5;
SELECT * FROM users WHERE id <= 20;
SELECT * FROM users WHERE date_of_birth IS NULL;
-- IS NOT NULL
SELECT * FROM users WHERE date_of_birth IS NOT NULL;
-- BETWEEN
SELECT * FROM users WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-01-12';
--IN
SELECT * FROM users WHERE gender IN ('Male', 'Female');
-- LIKE (pattern matching)
SELECT * FROM users WHERE name LIKE 'A%'; -- starts with A
SELECT * FROM users WHERE name LIKE '%a'; -- Ends with a
SELECT * FROM users WHERE name LIKE '%li%'; -- contains 'li
--AND/ OR
SELECT * FROM users WHERE gender = 'Female' And date_of_birth > '1990-01-01'
SELECT * FROM users WHERE gender = 'Male' OR gender = 'Other';
-- order by

SELECT * FROM users ORDER BY date_of_birth ASC;
SELECT * FROM users ORDER BY name DESC;
-- limit
SELECT * FROM users LIMIT 5; -- top 5 rows
SELECT * FROM users LIMIT 10 OFFSET 5; --skip first 5 rows , then get next 10
SELECT * FROM users LIMIT 5, 10; -- get 10 rows starting from the 6th row(same as above)
SELECT * FROM users ORDER BY created_at DESC LIMIT 10;
-- aggregate functions
SELECT COUNT(*) AS TotalUsers FROM users;
SELECT COUNT(*) AS MaleUsers FROM users WHERE gender = 'Male';