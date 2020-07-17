/*	1. List the following details of each employee: employee number, last name, first name, sex, and salary. */
SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	e.sex AS "Sex",
	s.salary AS "Salary"
FROM
	employees e,
	salaries s
WHERE
	e.emp_no = s.emp_no

/*	2. List first name, last name, and hire date for employees who were hired in 1986. */
SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	hire_date AS "Hire Date"
FROM
	employees
WHERE
	EXTRACT(YEAR FROM hire_date) = 1986

/*	3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. */
SELECT
	d.dept_no AS "Department Number",
	d.dept_name AS "Department Name",
	e.emp_no AS "Manager Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name"
FROM
	employees e,
	departments d,
	dept_managers dm
WHERE
	d.dept_no = dm.dept_no AND
	dm.emp_no = e.emp_no

/*	4. List the department of each employee with the following information: employee number, last name, first name, and department name. */
SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM
	employees e,
	departments d,
	dept_emp de
WHERE
	e.emp_no = de.emp_no AND
	d.dept_no = de.dept_no

/*	5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." */
/*	(I assume the '.' in "B." is not intended literally)															*/
SELECT
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.sex AS "Sex"
FROM
	employees e
WHERE
	e.first_name = 'Hercules' AND
	e.last_name LIKE 'B%'

/*	6. List all employees in the Sales department, including their employee number, last name, first name, and department name. */
SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM
	employees e,
	departments d,
	dept_emp de
WHERE
	e.emp_no = de.emp_no AND
	d.dept_no = de.dept_no AND
	d.dept_name = 'Sales'

/*	7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name. */
SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM
	employees e,
	departments d,
	dept_emp de
WHERE
	e.emp_no = de.emp_no AND
	d.dept_no = de.dept_no AND
	d.dept_name IN ('Sales','Development')
ORDER BY --added because it seems more useful
	d.dept_name,
	e.emp_no

/*	8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. */
SELECT
	DISTINCT last_name AS "Last Name",
	COUNT(last_name) AS "Count"
FROM
	employees
GROUP BY
	last_name
ORDER BY
	COUNT(last_name) DESC