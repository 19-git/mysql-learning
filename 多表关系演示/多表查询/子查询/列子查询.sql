-- 列子查询

-- 1. 查询 "研发部" 和 "市场部" 的所有员工信息

-- a. 查询 "研发部" 和 "市场部" 的部门ID
select id from dept where name = '研发部' or name = '市场部';

-- b. 根据部门ID，查询员工信息
select * from dept_emp where dept_id in (1,4);

select * from dept_emp where dept_id in (select id from dept where name = '研发部' or name = '市场部');


-- 2. 查询比 研发部 所有人工资都高的员工信息

-- a. 查询所有 研发部 人员工资
select name , salary from dept_emp where dept_id = (select id from dept where name = '研发部');

-- b. 比 研发部 所有人工资都高的员工信息

select * from dept_emp where salary > all (select salary from dept_emp where dept_id = (select id from dept where name = '研发部'));


-- 3. 查询比研发部其中任意一人工资高的员工信息

select * from dept_emp where salary > any (select salary from dept_emp where dept_id = (select id from dept where name = '研发部'));




