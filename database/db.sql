DROP DATABASE IF EXISTS db_links;
CREATE DATABASE db_links CHARSET utf8mb4;
USE db_links;


CREATE TABLE users (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL,
    fullname VARCHAR(40) NOT NULL
);


CREATE TABLE links (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    url VARCHAR(100) NOT NULL,
    description TEXT,
    user_id INT UNSIGNED,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id)
);

