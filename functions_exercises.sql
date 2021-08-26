use employees;


select concat(e.first_name, ' ', e.last_name) fullName from employees.employees e where e.first_name like 'e%e' and e.last_name like 'e%e';

# select *
# from employees.employees
# where CONCAT(first_name like 'e%e', last_name like 'e%e');

#Find all employees born on Christmas
select count(*)
from employees.employees e
where month(e.birth_date) = 12
and day(e.birth_date) = 25;

#Find all employees HIRED in 90s and born on Christmas
select count(*)
from employees.employees e
where YEAR(e.hire_date) BETWEEN 1990 and 1999
  AND month(e.birth_date) = 12
  and day(e.birth_date) = 25;

#Oldest employee who was hired last
select *
from employees.employees
where YEAR(hire_date) BETWEEN 1990 and 1999
  AND month(birth_date) = 12
  and day(birth_date) = 25 order by hire_date desc limit 1;

#How many days they have been working at company
select first_name, last_name, DATEDIFF(now(), hire_date) daysAtCompany
from employees.employees
where YEAR(hire_date) BETWEEN 1990 and 1999
  AND month(birth_date) = 12
  and day(birth_date) = 25 order by hire_date asc;


