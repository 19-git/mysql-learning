-- 外连接演示

-- 1. 查询dept_emp表的所有数据，和对应的部门信息(左外连接)
-- 表结构：dept_emp, dept
-- 连接条件：dept_emp.dept_id = dept.id
select e.*, d.name from dept_emp e left outer join dept d on e.dept_id = d.id;

select e.*,d.name from dept_emp e left join dept d on e.dept_id = d.id;

-- 2. 查询dept表的所有数据，和对应的员工信息(右外连接)

select d.*, e.* from dept_emp e right outer join dept d on e.dept_id = d.id;

select d.*, e.* from dept d left outer join dept_emp e on e.dept_id = d.id;
