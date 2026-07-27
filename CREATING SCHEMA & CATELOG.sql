-- Databricks notebook source
CREATE CATALOG IF NOT EXISTS june_intake;

USE CATALOG june_intake;

CREATE SCHEMA IF NOT EXISTS students_profile;

CREATE TABLE IF NOT EXISTS students (
    student_id INT,
    name STRING,
    surname STRING,
    age INT,
    email STRING,
    registration_DT DATE
);

INSERT INTO students
 VALUES 
    (101,'Rochester', 'Jones', 28, 'rochester@google.com', '2019-06-05'),
    (102,'Sive', 'Magazi', 33, 'sive@phalaphala.com', '1912-01-01'),
    (103,'Cassper', 'Zuma', 73, 'czuma@kandla.com', '2020-01-12'),
    (104,'Mbali', 'Hlapo', 41, 'mbali@cleaaning.com', '2010-01-12')
;


SELECT *
FROM students;