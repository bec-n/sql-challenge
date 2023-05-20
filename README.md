# sql-challenge
SQL Challenge Module 9
 
# ERD code in Quick Based Diagrams 
# https://app.quickdatabasediagrams.com/#/

Departments
-
dept_no VARCHAR(5) PK 
dept_name VARCHAR(30)

Dept_emp
-
emp_no INT FK >- Employees.emp_no
dept_no VARCHAR(5) FK >- Departments.dept_no

Dept_manager
-
dept_no VARCHAR(5) FK >- Departments.dept_no
emp_no INT PK FK >- Employees.emp_no

Employees
-
emp_no INT PK
emp_title_id VARCHAR(5) FK >- Titles.title_id
birth_date VARCHAR(30)
first_name VARCHAR(30)
last_name VARCHAR(30)
sex VARCHAR(1)
hire_date VARCHAR(30)

Salaries
- 
emp_no INT PK FK >- Employees.emp_no
salary INT

Titles
- 
title_id VARCHAR(5) PK 
title VARCHAR(30)


# References
Converting date strings to date value 
https://www.postgresqltutorial.com/postgresql-date-functions/postgresql-to_date/


Code from class activity solutions 