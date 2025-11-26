-- mysql views 

-- creating a views 

CREATE VIEW high_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;

-- quering the view 

SELECT * FROM high_salary_users;

-- view before update

 SELECT * FROM high_salary_users;

-- update a user's salary

UPDATE users
SET salary = 72000
WHERE name = 'Raj';

-- query the view again 

SELECT * FROM high_salary_users;

-- dropping a view 

DROP VIEW high_salary_users;
