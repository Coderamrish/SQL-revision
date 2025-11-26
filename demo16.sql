-- SQL joins

-- 1. inner join

SELECT users.name, addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- 2. left join

SELECT users.name, addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- right join

SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;

-- sql union and union all 

CREATE TABLE admin_users (
id INT PRIMARY KEY,
 name VARCHAR(100),
 email VARCHAR(100),
 gender ENUM('Male', 'Female', 'Other'),
 date_of_birth DATE,
 salary INT
);

-- insert sample data into admin users 

INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

-- use UNION to combine data 

SELECT name FROM users
UNION
SELECT name FROM admin_users;

-- union all example

SELECT name FROM users
UNION
SELECT name FROM admin_users;

-- using more than one column

SELECT name FROM users
UNION
SELECT name FROM admin_users;

-- adding separate soles 

SELECT name, 'User' AS role FROM users
UNION
SELECT name, 'Admin' AS role FROM admin_users;

-- using order by with union 

 SELECT name FROM users
UNION
SELECT name FROM admin_users
ORDER BY name;

-- self joins in mysql

-- add a referred_by_id column\

ALTER TABLE users
ADD COLUMN referred_by_id INT;

-- insert referral data 

UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3); -- User 1 referred Users 2
--and 3
UPDATE users SET referred_by_id = 2 WHERE id = 4; -- User 2 referred User 4

-- use a self join to get Referrer Names 

SELECT
 a.id,
 a.name AS user_name,
 b.name AS referred_by
FROM users a
INNER JOIN users b ON a.referred_by_id = b.id;

