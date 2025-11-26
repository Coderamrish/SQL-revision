-- GROUP BY and HAVING in MYSQL

SELECT gender, AVG(salary) AS average_salary
FROM users
GROUP BY gender;

-- group by with count

SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id;

-- having clause

SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender
HAVING AVG(salary) > 75000;


-- groups with more than 1 referral 

SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*) > 1;

-- rollup

SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender WITH ROLLUP;



-- stored procedures in mysql

-- syntax for creating a stored procedure 

DELIMITER $$
CREATE PROCEDURE procedure_name()
BEGIN
-- SQL statements go here
END$$
DELIMITER ;

-- creating a procedure with input parameters 

DELIMITER $$
CREATE PROCEDURE AddUser(
 IN p_name VARCHAR(100),
 IN p_email VARCHAR(100),
 IN p_gender ENUM('Male', 'Female', 'Other'),
 IN p_dob DATE,
 IN p_salary INT
)
BEGIN
 INSERT INTO users (name, email, gender, date_of_birth, salary)
 VALUES (p_name, p_email, p_gender, p_dob, p_salary);
END$$
DELIMITER ;

-- calling the procedure \

CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);

-- viewing stored parameters 

SHOW PROCEDURE STATUS WHERE Db = 'startersql';

-- dropping a stored procedure 

DROP PROCEDURE IF EXISTS AddUser;
