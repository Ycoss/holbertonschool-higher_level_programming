-- List all privileges of MySQL users user_0d_1 and user_0d_2.

-- Create user_0d_1 if missing
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';

-- Create user_0d_2 if missing
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';

-- Grant privileges to user_0d_1
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';

-- Grant privileges to user_0d_2
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_2'@'localhost';

-- List privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- List privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';
