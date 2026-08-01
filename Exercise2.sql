-- Databricks notebook source
SELECT *
FROM employees1;


--1----finding  the total number of employees in the company---
SELECT COUNT(*) As number_of_employees;

 ---the total salary paid to all employees in the IT department--
 SELECT  department, SUM(salary) AS total_salary
 FROM employees1
 GROUP BY department
 HAVING department = 'IT';


 ---calculate the average salary of employees in the HR department ---
 SELECT department, AVG(salary) AS avg_salary
 FROM employees1
 GROUP BY department 
 HAVING department = 'HR';

---find the highest and lowest salary in the company---

 SELECT MAX(salary) AS max_salary, 
 MIN(salary) AS min_salary
 FROM employees1;

---- group employees by department and display the total salary--

 SELECT department, SUM(Salary) AS total_salarY
 FROM employees1
 GROUP BY department;

 -----SQL query to count how many employees work in each city---

 SELECT city, COUNT (*) AS number_of_employees
 FROM employees1
 GROUP BY city;

 ----query to group employees by department, calculate the average salary in each department, and order the results in descending order of average salary---

SELECT department, AVG(salary) AS avg_salary
FROM employees1
GROUP BY department
ORDER BY avg_salary DESC;

---Write a SQL query to find departments where the total salary paid exceeds 100,000---

SELECT DISTINCT department
FROM employees1
GROUP BY department
HAVING SUM (salary) > 100000;

----Write a SQL query to list cities where more than one employee works, ordered by the number of employees in descending order.---


SELECT DISTINCT city
FROM employees1
GROUP BY city
HAVING COUNT (*) > 1
ORDER BY city DESC;

----Write a SQL query to find the department with the highest average salary----

SELECT department, AVG(salary) AS avg_salary
FROM employees1
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;