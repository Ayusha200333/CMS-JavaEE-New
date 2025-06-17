CREATE DATABASE CMS;

USE CMS;

CREATE TABLE User (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255),
    userRole VARCHAR(255)
);

CREATE TABLE Complaints (
     c_id INT PRIMARY KEY AUTO_INCREMENT,
     e_id INT,
     description TEXT,
     date DATE,
     status VARCHAR(20) DEFAULT 'pending'
);
