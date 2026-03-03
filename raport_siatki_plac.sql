with tytul as (select t.emp_no, t.title, s.salary from titles as t join salaries as s on t.emp_no = s.emp_no), 
wszystko as (select e.emp_no, e.first_name, e.last_name, ty.title, ty.salary from tytul as ty join employees as e on ty.emp_no = e.emp_no)

select title, count(emp_no) as ilosc_pracownikow, avg(salary) as srednia from wszystko group by title order by srednia desc



