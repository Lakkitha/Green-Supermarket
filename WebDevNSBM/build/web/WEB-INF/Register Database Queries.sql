CREATE DATABASE IF NOT EXISTS register;

USE register;

CREATE TABLE IF NOT EXISTS users 
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    uname VARCHAR(20),
    upwd VARCHAR(20),
    uemail VARCHAR(50),
    umobile VARCHAR(15)
);

INSERT INTO users (uname, upwd, uemail, umobile) VALUES
('sample_guy', 'sample_password', 'sample@email.com', '1234567890');

SELECT * FROM users;
