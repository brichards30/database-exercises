use employees;

#Part One
SELECT first_name
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees.employees
WHERE last_name like 'e%';

SELECT last_name
FROM employees.employees
WHERE last_name like '%q%';

