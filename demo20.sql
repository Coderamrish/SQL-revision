-- Triggers in mysql

-- basic triggers structure

CREATE TRIGGER trigger_name
AFTER INSERT ON table_name
FOR EACH ROW
BEGIN
-- statements to execute
END;

-- create a log table 

CREATE TABLE user_log (
id INT AUTO_INCREMENT PRIMARY KEY,
 user_id INT,
 name VARCHAR(100),
 created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- create a trigger 

DELIMITER $$
CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
 INSERT INTO user_log (user_id, name)
 VALUES (NEW.id, NEW.name);
END$$
DELIMITER ;


-- test the trigger 

CALL AddUser('Ritika Jain', 'ritika@example.com', 'Female', '1996-03-12', 74000);

SELECT * FROM user_log;


-- dropping a trigger 

DROP TRIGGER IF EXISTS after_user_insert;

-- additional on mysql 

-- add a column to existing table 
ALTER TABLE users
ADD COLUMN city VARCHAR(100);

-- limit with offset 

SELECT * FROM users
ORDER BY id
LIMIT 5 OFFSET 10;

SELECT * FROM users
ORDER BY id
LIMIT 10, 5;

-- distinct keyword

SELECT DISTINCT gender FROM users;


-- truncate 

TRUNCATE TABLE users;

-- changes vs modify 

-- changes 

ALTER TABLE users
CHANGE COLUMN city location VARCHAR(150);


-- modify


ALTER TABLE users
MODIFY COLUMN salary BIGINT;

-- END 
-- thank
        -- you!
                 -- Amrish Tiwary(SDE).