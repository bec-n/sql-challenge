-- Drop existing tables 
DROP TABLE Departments CASCADE; 
DROP TABLE Dept_emp CASCADE; 
DROP TABLE Dept_manager CASCADE; 
DROP TABLE Employees CASCADE; 
DROP TABLE Salaries CASCADE; 
DROP TABLE Titles CASCADE; 

-- Create tables
CREATE TABLE Departments (
  dept_no VARCHAR(5) PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

SELECT * FROM Departments; 

CREATE TABLE Dept_emp (
  emp_no INT,
  dept_no VARCHAR(5) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * FROM Dept_emp; 

CREATE TABLE Dept_manager (
  dept_no VARCHAR(5),
  emp_no INT PRIMARY KEY NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Dept_manager; 

CREATE TABLE Employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(5) NOT NULL,
  birth_date VARCHAR(30) NOT NULL, 
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL, 
  sex VARCHAR(1) NOT NULL,
  hire_date VARCHAR(30) NOT NULL, 
  FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

SELECT * FROM Employees; 

CREATE TABLE Salaries (
  emp_no INT PRIMARY KEY,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Salaries; 

CREATE TABLE Titles (
  title_id VARCHAR(5) PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);

SELECT * FROM Titles; 