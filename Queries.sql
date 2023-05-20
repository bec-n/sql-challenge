-- Data Analysis

-- 1. Employee number, last name, first name, sex, and salary of each employee
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
INNER JOIN Salaries ON
Salaries.emp_no=Employees.emp_no;

-- 2. First name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees
WHERE TO_DATE(hire_date, 'MM/DD/YYYY') 
BETWEEN '1986-01-01' 
AND '1986-12-31';

-- 3. Manager of each department along with their department number, department name, employee number, last name, and first name
SELECT Dept_manager.emp_no, Dept_manager.dept_no, Departments.dept_name, Employees.last_name, Employees.first_name
FROM Dept_manager
INNER JOIN Departments ON Departments.dept_no=Dept_manager.dept_no
INNER JOIN Employees ON Employees.emp_no=Dept_manager.emp_no;

-- 4. Department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT Employees.emp_no, Dept_emp.dept_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Dept_emp
INNER JOIN Employees ON Employees.emp_no=Dept_emp.emp_no
INNER JOIN Departments ON Departments.dept_no=Dept_emp.dept_no;

-- 5. First name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. Employees in the Sales department, including their employee number, last name, and first name
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Dept_emp.dept_no, Departments.dept_name
FROM Dept_emp
INNER JOIN Employees ON Employees.emp_no=Dept_emp.emp_no
INNER JOIN Departments ON Departments.dept_no=Dept_emp.dept_no
WHERE dept_name = 'Sales';

-- 7. Employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Dept_emp.dept_no, Departments.dept_name
FROM Dept_emp
INNER JOIN Employees ON Employees.emp_no=Dept_emp.emp_no
INNER JOIN Departments ON Departments.dept_no=Dept_emp.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- 8. Frequency counts, in descending order, of all the employee last names
SELECT last_name, COUNT(last_name) AS "name count"
FROM Employees
GROUP BY last_name
ORDER BY "name count" DESC;