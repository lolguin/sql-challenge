create table departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR(20) NOT NULL
);

create table employees(
	emp_no VARCHAR PRIMARY KEY,
	birth_date date NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date date NOT NULL
);

create table dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no VARCHAR PRIMARY KEY,
	from_date date NOT NULL,
	to_date date not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

create table dept_emp(	
	emp_no VARCHAR NOT NULL,
	dept_no VARCHAR NOT NULL,	
	from_date date NOT NULL,
	to_date date not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


create table salaries(	
	emp_no VARCHAR PRIMARY KEY,
	salary int NOT NULL,	
	from_date date NOT NULL,
	to_date date not null
);

create table titles(	
	emp_no VARCHAR,
	title VARCHAR NOT NULL,	
	from_date date NOT NULL,
	to_date date not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);