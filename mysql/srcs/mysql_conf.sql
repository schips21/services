CREATE DATABASE wordpress;
CREATE USER 'schips'@'%' IDENTIFIED BY 'schips';
GRANT ALL PRIVILEGES ON wordpress.* TO 'schips'@'%';
FLUSH PRIVILEGES;