use employees;

select * from employees.employees as e where e.first_name like '%tim%';
select * from employees.employees as e where e.last_name like 'j%a';

#This will grab any record that has an a and then a u in the last name;
select * from employees.employees as e where e.last_name like '%a%o';

select * from employees.employees as e where e.last_name like 'v%';

select * from employees.employees as e where e.birth_date between '1964-06-02' and '1964-06-05';

SELECT emp_no, first_name, last_name
FROM employees.employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, first_name, last_name
FROM employees.employees
WHERE last_name ='Herber' or last_name = 'Dredge';