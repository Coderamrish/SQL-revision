-- primary key

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100)
);

-- Example with UNIQUE

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
 email VARCHAR(100) UNIQUE,
 name VARCHAR(100)
);

-- DROP primary key

ALTER TABLE users DROP PRIMARY KEY;
ALTER TABLE users DROP INDEX email;

-- Auto increment

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100)
);

ALTER TABLE users AUTO_INCREMENT = 1000;


-- Foreign key

-- creating a table with foreign key 
CREATE TABLE addresses (
id INT AUTO_INCREMENT PRIMARY KEY,
 user_id INT,
 street VARCHAR(255),
 city VARCHAR(100),
 state VARCHAR(100),
 pincode VARCHAR(10),
 FOREIGN KEY (user_id) REFERENCES users(id)
);

-- dropping a  foreign key
CREATE TABLE addresses (
id INT AUTO_INCREMENT PRIMARY KEY,
 user_id INT,
 street VARCHAR(255),
 city VARCHAR(100),
 state VARCHAR(100),
 pincode VARCHAR(10),
 FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE addresses
DROP FOREIGN KEY fk_user;

-- adding a foreign key Later 
ALTER TABLE addresses
ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id);

-- on delete cascade

CREATE TABLE addresses (
id INT AUTO_INCREMENT PRIMARY KEY,
 user_id INT,
 street VARCHAR(255),
 city VARCHAR(100),
 state VARCHAR(100),
 pincode VARCHAR(10),
 CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

ALTER TABLE addresses
ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE
CASCADE;

