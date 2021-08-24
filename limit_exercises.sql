use employees;

# select * from employees.employees e order by e.emp_no limit 100 offset 0;
# select * from employees.employees e order by e.emp_no limit 100 offset 100;
# select * from employees.employees e order by e.emp_no limit 100 offset 200;

#2. First 10 Distinct last names
SELECT DISTINCT last_name FROM employees.employees e order by e.last_name desc limit 10;

#3. Top 5 salaries
SELECT distinct salary, emp_no from employees.salaries order by salary desc limit 5;

# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 45;#page 10
SELECT emp_no from employees.salaries order by salary desc limit 4 offset 46;#ACTUAL ANSWER BASED OFF CURRICULUM


# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 15;
# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 10;
# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 15;
# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 20;
# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 25;
# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 30;
# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 35;
# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 40;
# SELECT emp_no from employees.salaries order by salary desc limit 5 offset 45;














