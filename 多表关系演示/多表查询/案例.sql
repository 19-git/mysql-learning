-- 1. 查询员工的姓名、年龄、职位、部门信息（隐式内连接）
-- 表：emp , dept
-- 连接条件：emp.dept_id = dept.id

select e.name, e.age, e.job, d.name
from emp_case e,
     dept_case d
where e.dept_id = d.id;


-- 2. 查询年龄小于30岁的员工的姓名、年龄、职位、部门信息（显式内连接）
-- 表：emp , dept
-- 连接条件：emp.dept_id = dept.id

select e.name, e.age, e.job, d.name
from emp_case e
         inner join dept_case d
where e.dept_id = d.id
  and e.age < '30'
order by age;

-- 3. 查询拥有员工的部门ID、部门名称
-- 表：emp , dept
-- 连接条件：emp.dept_id = dept.id

select distinct d.id, d.name
from emp_case e,
     dept_case d
where e.dept_id = d.id
order by d.id;


-- 4. 查询所有年龄大于40岁的员工，及其归属的部门名称；如果员工没有分配部门，也需要展示出来
-- 表：emp , dept
-- 连接条件：emp.dept_id = dept.id
-- 外连接

select e.name, e.age, d.name
from emp_case e
         left outer join dept_case d
                         on e.dept_id = d.id and e.age > '40'
order by age;


-- 5. 查询所有员工的工资等级
-- 表：emp , salgrade
-- 连接条件：emp.salary >= salgrade.losal and emp.salary <= salgrade.hisal

select emp_case.name, salgrade_case.grade
from emp_case,
     salgrade_case
where emp_case.salary between salgrade_case.losal and salgrade_case.hisal
order by salgrade_case.grade;

-- 6. 查询 "研发部" 所有员工的信息及 工资等级
-- 表：emp , salgrade , dept
-- 连接条件：emp.salary between salgrade.losal and salgrade.hisal , emp.dept_id = dept.id
-- 查询条件：dept.name = '研发部'

select e.*, s.grade
from emp_case e,
     dept_case d,
     salgrade_case s
where e.salary between s.losal and s.hisal
  and e.dept_id = d.id
  and d.name = '研发部'
order by age, s.grade;


-- 7. 查询 "研发部" 员工的平均工资
-- 表：emp , dept
-- 连接条件：emp.dept_id = dept.id

select avg(e.salary)
from emp_case e , dept_case d
where e.dept_id = d.id;







