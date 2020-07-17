CREATE TABLE "titles" (
    "title_id" varchar(5) PRIMARY KEY,
    "title" varchar(30)
);

CREATE TABLE "departments" (
    "dept_no" varchar(4) PRIMARY KEY,
    "dept_name" varchar(30)
);

CREATE TABLE "employees" (
    "emp_no" integer PRIMARY KEY,
    "emp_title_id" varchar(5) REFERENCES titles(title_id),
    "birth_date" date,
    "first_name" varchar(30),
    "last_name" varchar(30),
    "sex" char,
    "hire_date" date
);

CREATE TABLE "dept_emp" (
    "emp_no" integer REFERENCES employees(emp_no),
    "dept_no" varchar(4) REFERENCES departments(dept_no)
);

CREATE TABLE "dept_managers" (
    "emp_no" integer REFERENCES employees(emp_no),
    "dept_no" varchar(4) REFERENCES departments(dept_no)
);

CREATE TABLE "salaries" (
    "emp_no" integer REFERENCES employees(emp_no),
    "salary" integer
);