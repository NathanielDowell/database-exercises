USE employees;

SELECT DISTINCT title -- Exercise #2 In your script, use DISTINCT to find the unique titles in the titles table.
 FROM titles;

SELECT last_name AS 'Last Name', COUNT(last_name) AS '# Of Occurrences' -- Using GROUP BY #3 Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY.
FROM employees
WHERE last_name like 'e%'
  AND last_name like '%e'
    GROUP BY last_name;

SELECT DISTINCT last_name -- Using DISTINCT
 FROM employees
  WHERE last_name like 'e%'
    AND last_name like '%e'
     ORDER BY last_name;

SELECT last_name, first_name -- #4 Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'
FROM employees
WHERE last_name like 'e%'
  AND last_name like '%e'
GROUP BY last_name, first_name;


SELECT last_name AS 'Last Name', COUNT(last_name) AS '# Of Occurrences' -- #5 Find the unique last names with a 'q' but not 'qu'.
FROM employees
WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%'
    GROUP BY last_name;

SELECT COUNT(*), gender  -- #7 Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
FROM employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
GROUP BY gender;