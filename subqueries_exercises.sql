use employees;

SELECT CONCAT(last_name, ', ', first_name) AS 'employee', hire_date
 FROM employees
 WHERE hire_date = (
     SELECT hire_date
     FROM employees
     WHERE emp_no = 101010
 );

SELECT hire_date
 FROM employees
 WHERE emp_no = 101010;


SELECT emp_no
 FROM employees
 WHERE first_name = 'Aamod';

SELECT title, COUNT(*) AS '# of Aamod''s with title'
 FROM titles
 WHERE emp_no in (
     SELECT emp_no
     FROM employees
     WHERE first_name = 'Aamod'
     )
 GROUP BY title;


SELECT emp_no -- selecting the female employees
 FROM employees
 WHERE gender = 'F';


SELECT first_name, last_name
 FROM employees
 WHERE



SELECT emp_no
FROM dept_manager
 WHERE emp_no IN (
     SELECT emp_no -- selecting the female employees
     FROM employees
     WHERE gender = 'F'
     );

SELECT first_name, last_name
 FROM employees
 WHERE gender = 'F' AND
       emp_no IN (
           SELECT emp_no
           FROM dept_manager
        );



SELECT * FROM employees
 where gender = 'F';




