use employees;


#Find all employees born on Christmas
select count(*)
from employees.employees
where month(birth_date) = 12
and day(birth_date) = 25;

#Find all employees HIRED in 90s and born on Christmas
select count(*)
from employees.employees
where YEAR(hire_date) BETWEEN 1990 and 1999
  AND month(birth_date) = 12
  and day(birth_date) = 25;

#Oldest employee who was hired last
select *
from employees.employees
where YEAR(hire_date) BETWEEN 1990 and 1999
  AND month(birth_date) = 12
  and day(birth_date) = 25 order by hire_date desc limit 1;

#How many days they have been working at company
select *
from employees.employees
where YEAR(hire_date) BETWEEN 1990 and 1999
  AND month(birth_date) = 12
  and day(birth_date) = 25 order by hire_date desc limit 1;

select *
from employees.employees
where YEAR(hire_date) BETWEEN 1990 and 1999
  AND month(birth_date) = 12
  and day(birth_date) = 25 ;

