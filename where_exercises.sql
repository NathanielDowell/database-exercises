USE employees;

# SELECT *
#  FROM employees
#  WHERE first_name IN ('Irena', 'Vidya', 'Maya'); --Updated below

SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
     OR first_name = 'Maya') AND gender = 'M';

SELECT *
 FROM employees
 WHERE last_name LIKE ('E%');

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

SELECT *
FROM employees
 WHERE last_name like 'e%'
    AND last_name like '%e';

SELECT *
 FROM employees
  WHERE hire_date like '199%'
   AND birth_date like '%12-25%';

SELECT *
 FROM employees
 WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%';



