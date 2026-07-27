# Databricks notebook source
# /// script
# [tool.databricks.environment]
# environment_version = "5"
# ///
# MAGIC %sql
# MAGIC CREATE OR REPLACE TABLE employees1(
# MAGIC id INT,
# MAGIC first_name STRING,
# MAGIC last_name STRING,
# MAGIC department STRING,
# MAGIC Salary DECIMAL(5,0),
# MAGIC hire_date DATE,
# MAGIC city STRING);
# MAGIC
# MAGIC
# MAGIC INSERT INTO employees1
# MAGIC VALUES
# MAGIC  (1, 'John', 'Doe', 'IT', 55000, '2022-01-01', 'New York'),
# MAGIC (2, 'Jane', 'Smith', 'HR',	48000, '2019-07-20', 'Chicago'),
# MAGIC (3,	'Mike',	'Johnson', 'Finance',	60000,	'2019-07-20',	'Los Angeles'),
# MAGIC (4,	'Sarah', 'Brown',	'IT',	53000,	'2021-03-25',	'New York'),
# MAGIC (5,	'David',	'White',	'Marketing',	52000,	'2016-04-10',	'San Francisco'),
# MAGIC (6,	'Emily',	'Davis',	'IT',	62000,	'2015-02-14',	'Chicago'),
# MAGIC (7,	'Robert',	'Wilson',	'Finance',	59000,	'2019-10-01', 'Houston'),
# MAGIC (8,	'Jessica',	'Moore',	'HR',	51000,	'2018-05-22',	'Los Angeles'),
# MAGIC (9,	'Daniel',	'Clark',	'Marketing',	53000,	'2022-06-01',	'Chicago'),
# MAGIC (10,	'Laura',	'Hall',	'IT',	50000,	'2020-08-10',	'San Francisco');
# MAGIC
# MAGIC
# MAGIC
# MAGIC SELECT DISTINCT department
# MAGIC FROM employees1;
# MAGIC
# MAGIC SELECT first_name, last_name
# MAGIC FROM employees1
# MAGIC ORDER BY salary DESC;
# MAGIC
# MAGIC SELECT *
# MAGIC FROM employees1
# MAGIC ORDER BY Salary DESC
# MAGIC LIMIT 6;
# MAGIC
# MAGIC SELECT *
# MAGIC FROM employees1
# MAGIC WHERE department = 'IT';
# MAGIC
# MAGIC SELECT *
# MAGIC FROM employees1
# MAGIC WHERE department = "Finance" AND salary > 58000;
# MAGIC
# MAGIC SELECT *
# MAGIC FROM employees1
# MAGIC WHERE Department = "HR" OR Department = "Marketing";
# MAGIC
# MAGIC SELECT * 
# MAGIC FROM employees1
# MAGIC WHERE Department IN ("HR", "IT","Finance");
# MAGIC
# MAGIC SELECT *
# MAGIC FROM employees1
# MAGIC WHERE Department = 'IT' AND Salary >50000 AND City IN ('New York');
# MAGIC
# MAGIC SELECT first_name, department, hire_date
# MAGIC FROM employees1
# MAGIC WHERE department NOT IN ('Finance') AND Salary > 50000
# MAGIC ORDER BY hire_date DESC;
# MAGIC
# MAGIC SELECT DISTINCT city, department
# MAGIC FROM employees1
# MAGIC WHERE NOT department IN ('IT', 'HR');
# MAGIC
# MAGIC SELECT first_name, department, hire_date
# MAGIC FROM employees1
# MAGIC WHERE department NOT IN ('Finance') AND Salary > 50000
# MAGIC ORDER BY hire_date DESC;
# MAGIC
# MAGIC SELECT first_name, city, department
# MAGIC FROM employees1
# MAGIC WHERE city IN ('Chicago', 'Los Angeles') AND department = 'IT' OR department = 'Marketing'
# MAGIC lIMIT 3