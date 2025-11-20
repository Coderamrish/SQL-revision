SELECT * FROM users WHERE salary > 60000 ORDER BY CREATED_AT DESC LIMIT 100;
SELECT * FROM users ORDER BY salary DESC;
SELECT * FROM user WHERE salary BETWEEN 50000 AND 70000;
SELECT AVG(salary) AS AvearageSalary FROM users;
SELECT SUM(salary) AS TotalUserSalary FROM users WHERE department = 'IT';