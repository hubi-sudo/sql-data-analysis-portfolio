with wyplaty as (select e.first_name, e.last_name, s.salary from employees as e join salaries as s on e.emp_no = s.emp_no) 

select * from wyplaty where salary >= 38000 and salary <= 60000 order by salary desc


