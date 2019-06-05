USE employees;

# SELECT *
#  FROM employees
#  WHERE first_name IN ('Irena', 'Vidya', 'Maya'); --Updated below

SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya') AND gender = 'M'
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE ('E%')
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date like '199%';

SELECT *
FROM employees
WHERE birth_date like '%12-25';

SELECT *
from employees
where last_name like '%q%';

SELECT *
FROM employees
WHERE last_name like '%e%';

SELECT CONCAT(first_name, ' ', last_name) AS 'Most ''E''lustrious Employees'
FROM employees
WHERE last_name like 'e%'
  AND last_name like '%e';

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name', (datediff(curdate(), hire_date)) AS 'Working Time In Days'
FROM employees
WHERE hire_date like '199%'
  AND birth_date like '%12-25%'
ORDER BY hire_date ASC;

SELECT *
FROM employees
WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%';

select curdate();