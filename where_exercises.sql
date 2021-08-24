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

#Part Two
SELECT first_name, gender
FROM employees.employees
WHERE gender = 'M' AND (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya');

SELECT last_name
FROM employees.employees
WHERE last_name like 'e%' or last_name like '%e';

SELECT last_name
FROM employees.employees
WHERE last_name like 'e%e';

SELECT last_name
FROM employees.employees
WHERE last_name not like '%qu%' and last_name like '%q%';
