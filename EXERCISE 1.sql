-- Databricks notebook source
CREATE OR REPLACE TABLE employees1(
id INT,
first_name STRING,
last_name STRING,
department STRING,
Salary DECIMAL(5,0),
hire_date DATE,
city STRING);


INSERT INTO employees1
VALUES
 (1, 'John', 'Doe', 'IT', 55000, '2022-01-01', 'New York'),
(2, 'Jane', 'Smith', 'HR',	48000, '2019-07-20', 'Chicago'),
(3,	'Mike',	'Johnson', 'Finance',	60000,	'2019-07-20',	'Los Angeles'),
(4,	'Sarah', 'Brown',	'IT',	53000,	'2021-03-25',	'New York'),
(5,	'David',	'White',	'Marketing',	52000,	'2016-04-10',	'San Francisco'),
(6,	'Emily',	'Davis',	'IT',	62000,	'2015-02-14',	'Chicago'),
(7,	'Robert',	'Wilson',	'Finance',	59000,	'2019-10-01', 'Houston'),
(8,	'Jessica',	'Moore',	'HR',	51000,	'2018-05-22',	'Los Angeles'),
(9,	'Daniel',	'Clark',	'Marketing',	53000,	'2022-06-01',	'Chicago'),
(10,	'Laura',	'Hall',	'IT',	50000,	'2020-08-10',	'San Francisco');



SELECT DISTINCT department
FROM employees1;

SELECT first_name, last_name
FROM employees1
ORDER BY salary DESC;

SELECT *
FROM employees1
ORDER BY Salary DESC
LIMIT 6;

SELECT *
FROM employees1
WHERE department = 'IT';

SELECT *
FROM employees1
WHERE department = "Finance" AND salary > 58000;

SELECT *
FROM employees1
WHERE Department = "HR" OR Department = "Marketing";

SELECT * 
FROM employees1
WHERE Department IN ("HR", "IT","Finance");

SELECT *
FROM employees1
WHERE Department = 'IT' AND Salary >50000 AND City IN ('New York');

SELECT first_name, department, hire_date
FROM employees1
WHERE department NOT IN ('Finance') AND Salary > 50000
ORDER BY hire_date DESC;

SELECT DISTINCT city, department
FROM employees1
WHERE NOT department IN ('IT', 'HR');

SELECT first_name, department, hire_date
FROM employees1
WHERE department NOT IN ('Finance') AND Salary > 50000
ORDER BY hire_date DESC;

SELECT first_name, city, department
FROM employees1
WHERE city IN ('Chicago', 'Los Angeles') AND department = 'IT' OR department = 'Marketing'
lIMIT 3