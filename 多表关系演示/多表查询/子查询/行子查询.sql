-- 行子查询

-- 1. 查询与 "张无忌" 的薪资及直属领导相同的员工信息

-- a. 查询 "张无忌" 的薪资及直属领导

select e1.salary,e1.managerid,e2.name from emp_case e1 , emp_case e2 where e1.name = '张无忌' and e1.managerid = e2.id;

select salary , managerid from emp_case where name = '张无忌';

-- b. 查询与 "张无忌" 的薪资及直属领导相同的员工信息
select * from emp_case where (salary,managerid) = (select salary , managerid from emp_case where name = '张无忌')
