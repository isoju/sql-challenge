--dropping table if exist, and creating table
--departments table

drop table departments

create table departments(
	dept_no varchar(30) primary key
	, dept_name varchar(30) not null
);

select * from departments

--titles table

drop table titles

create table titles(
	title_id varchar(30) primary key
	, title varchar(30)
);

select * from titles

--employees table

drop table employees

create table employees(
	emp_no integer primary key
	, emp_title_id varchar(30) not null
	, birth_date date not null
	, first_name varchar(30) not null
	, last_name varchar(30) not null
	, sex varchar(30) not null
	, hire_date date not null
	, foreign key (emp_title_id) references titles(title_id)
);

select * from employees

--dept_emp table

drop table dept_emp

create table dept_emp(
	emp_no integer not null
	, dept_no varchar(30) not null
	, foreign key (emp_no) references employees(emp_no)
	, foreign key (dept_no) references departments(dept_no)
);

select * from dept_emp

--dept_manager table

drop table dept_manager

create table dept_manager(
	dept_no varchar(30) not null
	, emp_no integer not null
	, foreign key (dept_no) references departments(dept_no)
	, foreign key (emp_no) references employees(emp_no)
);

select * from dept_manager

--salaries table

drop table salaries

create table salaries(
	emp_no integer not null
	, salary integer not null
	, foreign key (emp_no) references employees(emp_no)
);

select * from salaries

