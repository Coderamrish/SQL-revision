-- MYSQL Constrainsts 

-- unique constraints

CREATE TABLE users (
id INT PRIMARY KEY,
 email VARCHAR(100) UNIQUE
);


-- Add UNIQUE using ALTER TABLE :

ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (email);

-- 2. NOT NULL Constraint

CREATE TABLE users (
id INT PRIMARY KEY,
 name VARCHAR(100) NOT NULL
);

-- Change an existing column to NOT NULL:

ALTER TABLE users
MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- Make a column nullable again:

ALTER TABLE users
MODIFY COLUMN name VARCHAR(100) NULL;

-- 3. CHECK Constraint

ALTER TABLE users
ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01');

-- DEFAULT constraint

CREATE TABLE users (
id INT PRIMARY KEY,
 is_active BOOLEAN DEFAULT TRUE
);

-- Add DEFAULT using ALTER TABLE :

ALTER TABLE users
ALTER COLUMN is_active SET DEFAULT TRUE;

-- 5. PRIMARY KEY Constraint

CREATE TABLE users (
id INT PRIMARY KEY,
 name VARCHAR(100)
);

-- Add later with ALTER TABLE :

ALTER TABLE users
ADD PRIMARY KEY (id);

-- AUTO_INCREMENT

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100)
);

-- summary 
--Summary Table
--Constraint Purpose
--UNIQUE Prevents duplicate values
--NOT NULL Ensures value is not NULL
--CHECK Restricts values using a condition
--DEFAULT Sets a default value
--PRIMARY KEY Uniquely identifies each row
--AUTO_INCREMENT Automatically generates unique numbers