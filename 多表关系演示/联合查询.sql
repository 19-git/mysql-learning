-- 1. 将薪资低于 5000 的员工，和 年龄大于 50 岁的员工全部查询出来.

select * from dept_emp where salary < 5000
union all
select* from emp where age > 50;

select * from dept_emp where salary < 5000
union
select* from emp where age > 50;