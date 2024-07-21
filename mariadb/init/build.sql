CREATE USER 'developer'@'%' IDENTIFIED BY 'developer';
GRANT ALL PRIVILEGES ON *.* TO 'developer'@'%' WITH GRANT OPTION;

CREATE USER 'tester'@'%' IDENTIFIED BY 'tester';
GRANT ALL PRIVILEGES ON *.* TO 'tester'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

CREATE DATABASE development CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE testing CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
