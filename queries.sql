-- Question 1
select e.emp_no, e.first_name, e.last_name, e.gender, s.salary
from employees e
inner join salaries as s on s.emp_no = e.emp_no
order by last_name;

-- Question 2
select emp_no, first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' AND '1986-12-31'
order by hire_date asc;

-- Question 3
select d.dept_no, dt.dept_name, d.emp_no, e.last_name, e.first_name, d.from_date, d.to_date
from dept_manager d
inner join employees e on e.emp_no = d.emp_no
inner join departments dt on dt.dept_no = d.dept_no

-- Question 4
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp dt on dt.emp_no = e.emp_no
inner join departments d on d.dept_no = dt.dept_no;

-- Question 5
select first_name, last_name
from employees
where first_name = 'Hercules'
and last_name like 'B%'

-- Question 6
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp dt on dt.emp_no = e.emp_no
inner join departments d on d.dept_no = dt.dept_no
where d.dept_name = 'Sales'

-- Question 7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp dt on dt.emp_no = e.emp_no
inner join departments d on d.dept_no = dt.dept_no
where d.dept_name IN('Sales', 'Development')

-- Question 8
select last_name, count(last_name) AS "Total_Count"
from employees
group by last_name
order by "Total_Count" desc;

