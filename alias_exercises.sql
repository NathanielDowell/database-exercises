USE employees;

SELECT CONCAT(last_name, ', ', first_name) AS 'full_name' -- > pt 1
 FROM employees
  LIMIT 10;

SELECT CONCAT(last_name, ', ', first_name) AS 'full_name', birth_date AS 'DOB' -- > pt 2
FROM employees
LIMIT 10;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS 'full_name', birth_date AS 'DOB' -- > pt 3
FROM employees
LIMIT 10;