use employees;

SELECT CONCAT(e.emp_no, ' - ',e.last_name, ', ', e.first_name) AS full_name, e.birth_date as DOB
FROM employees e
LIMIT 10;