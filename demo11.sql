-- DELETE - Removing Data from a Table

DELETE FROM users
WHERE id = 3;

-- Delete Multiple Rows

DELETE FROM users  
WHERE gender = 'other';

-- Delete All Rows (but keep table structure)
DELETE FROM users;

-- Drop the Entire Table (use with caution)

DROP TABLE users;


-- BEST practices

SELECT * FROM users WHERE id = 3;

-- quick quiz 


DELETE FROM users
WHERE salary < 50000;

DELETE FROM users
WHERE salary IS NULL;

