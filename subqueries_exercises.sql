use employees;

# SELECT column_a, column_b, column_c
# FROM table_a
# WHERE column_a IN (
#     SELECT column_a
#     FROM table_b
#     WHERE column_b = true
# );

# in employees database find all dept managers names & birthdays
# SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM dept_manager
# )
# LIMIT 10;

select COUNT(emp_no) as Same_Hire_Date_As_101010
from employees
where hire_date in (
    select hire_date
    from employees
    where emp_no = 101010
);

select count(t.title)
from titles t
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
);

select DISTINCT (t.title)
from titles t
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
);

select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from dept_manager
    where to_date = '9999-01-01'
      and employees.gender = 'F'
);

select emp_no
from employees
where emp_no in (
    select emp_no
    from dept_manager
    where to_date = '9999-01-01'
      and employees.gender = 'F'
);

select dept_name
from dept_manager dm
         inner join departments d on dm.dept_no = d.dept_no
where emp_no in (
    select emp_no
    from employees
    where employees.gender = 'F'
)
  AND to_date = '9999-01-01'
order by dept_name;
