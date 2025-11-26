-- MYSQL Transactions and autoCommit

-- 1. Disabling AutoCommit

SET autocommit = 0;

-- 2. COMMIT - save changes to the database

COMMIT;

-- 3. ROLLBACK 

ROLLBACK;


-- example 

SET autocommit = 0;
UPDATE users SET salary = 80000 WHERE id = 5;
COMMIT;
ROLLBACK;

-- Enabling AutoCommit Again

SET autocommit = 1;
