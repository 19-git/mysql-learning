-- 表子查询

-- 1. 查询与 "鹿杖客"，"宋远桥" 的职位和薪资相同的员工信息

-- a. 查询 "鹿杖客"，"宋远桥" 的职位和薪资

select job ,salary from emp_case where name = '鹿杖客' or name = '宋远桥';
-- b. 查询与 "鹿杖客"，"宋远桥" 的职位和薪资相同的员工信息

select * from emp_case where (job,salary) in (select job ,salary from emp_case where name = '鹿杖客' or name = '宋远桥');
-- 2. 查询入职日期是 "2006-01-01" 之后的员工信息 ，及其部门信息

-- a. 入职日期是 "2006-01-01" 之后的员工信息

select emp_case.* from emp_case , dept_case where emp_case.entrydate > '2006-01-01' order by entrydate asc ;
-- b. 查询这部分员工，对应的部门信息;

select emp_case.* , dept_case.name from emp_case , dept_case where emp_case.entrydate > '2006-01-01' and emp_case.dept_id = dept_case.id;

select * from emp_case where entrydate > '2006-01-01';

select ec.* , dept_case.name from (select * from emp_case where entrydate > '2006-01-01') ec left join dept_case on ec.dept_id = dept_case.id;