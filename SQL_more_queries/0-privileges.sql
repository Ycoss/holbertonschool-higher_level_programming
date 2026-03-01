-- Lists all privileges of MySQL users user_0d_1 and user_0d_2.

-- Ensure user_0d_1 exists
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';

-- Ensure user_0d_2 exists
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';

-- Privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';
