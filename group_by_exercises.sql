USE employees;

SELECT DISTINCT title
 FROM titles;

SELECT last_name AS 'Last Name', COUNT(last_name) AS '# Of Occurrences' -- Using GROUP BY
FROM employees
WHERE last_name like 'e%'
  AND last_name like '%e'
    GROUP BY last_name;

SELECT DISTINCT last_name -- Using DISTINCT
 FROM employees
  WHERE last_name like 'e%'
    AND last_name like '%e'
     ORDER BY last_name;

SELECT last_name, first_name
FROM employees
WHERE last_name like 'e%'
  AND last_name like '%e'
GROUP BY last_name, first_name;


SELECT last_name AS 'Last Name', COUNT(last_name) AS '# Of Occurrences'
FROM employees
WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%'
    GROUP BY last_name;