use employees;

#2.

SELECT d.dept_name as Department_Name, concat(e.first_name, ' ', e.last_name) as Department_Manager
from departments d
         inner join dept_manager dm on d.dept_no = dm.dept_no
         inner join employees e on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01'
order by dept_name;

#1 Managed by women
SELECT d.dept_name as Department_Name, concat(e.first_name, ' ', e.last_name) as Department_Manager
from departments d
         inner join dept_manager dm on d.dept_no = dm.dept_no
         inner join employees e on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01'
  AND e.gender = 'F'
order by dept_name;

#1. Current titles in Customer Service

select t.title, count(t.emp_no) as Total
from departments d
         inner join dept_emp de on d.dept_no = de.dept_no
         inner join titles t on de.emp_no = t.emp_no
where d.dept_name = 'Customer Service'
  and de.to_date = '9999-01-01'
  and t.to_date = '9999-01-01'
group by t.title;

#1. Find current salary for all current managers
SELECT d.dept_name                            as Department_Name,
       concat(e.first_name, ' ', e.last_name) as Department_Manager,
       s.salary                               as Salary
from departments d
         inner join dept_manager dm on d.dept_no = dm.dept_no
         inner join employees e on dm.emp_no = e.emp_no
         inner join salaries s on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
order by dept_name;

#BONUS
select concat(e.first_name, ' ', e.last_name) as Employee,
       d.dept_name                            as Department,
       concat(mgr.first_name, ' ', mgr.last_name) as Manager
from employees e
         inner join dept_emp de on de.emp_no = e.emp_no
         inner join departments d on de.dept_no = d.dept_no
         inner join dept_manager dm on dm.dept_no = d.dept_no
         inner join employees mgr on dm.emp_no = mgr.emp_no
where de.to_date = '9999-01-01'
  and dm.to_date = '9999-01-01'
order by dept_name
limit 5;



