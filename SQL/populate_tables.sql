COPY titles(title_id,title) 
FROM 'C:\SQL\titles.csv' DELIMITER ',' CSV HEADER;
SELECT COUNT(*) FROM titles

COPY departments(dept_no,dept_name) 
FROM 'C:\SQL\departments.csv' DELIMITER ',' CSV HEADER;
SELECT COUNT(*) FROM departments

COPY employees(emp_no,emp_title_id,birth_date, first_name,last_name,sex,hire_date)
FROM 'C:\SQL\employees.csv' DELIMITER ',' CSV HEADER;
SELECT COUNT(*) FROM employees

COPY dept_emp(emp_no,dept_no) 
FROM 'C:\SQL\dept_emp.csv' DELIMITER ',' CSV HEADER;
SELECT COUNT(*) FROM dept_emp

COPY dept_managers(dept_no,emp_no) 
FROM 'C:\SQL\dept_manager.csv' DELIMITER ',' CSV HEADER;
SELECT COUNT(*) FROM dept_managers

COPY salaries(emp_no,salary)
FROM 'C:\SQL\salaries.csv' DELIMITER ',' CSV HEADER;
SELECT COUNT(*) FROM salaries
