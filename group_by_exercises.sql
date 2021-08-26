use employees;


#2
select distinct title
from titles
group by title
limit 7;

#3
select last_name
from employees
where last_name like 'e%e'
group by last_name
order by last_name;

#4
select COUNT(distinct first_name, last_name)
from employees
where last_name like 'e%e'
order by last_name;

#5
select distinct last_name
from employees
where last_name like '%q%'
  AND last_name not like '%qu%';

#6

select count(last_name), last_name
from employees
where last_name like '%q%'
  AND last_name not like '%qu%'
group by last_name
order by last_name;

#7

select COUNT(gender), gender
from employees
where first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
group by gender
order by gender;














