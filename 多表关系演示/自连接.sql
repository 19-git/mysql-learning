-- 自连接

-- 1. 查询员工 及其 所属领导的名字
-- 表结构：dept_emp
select staff.name , leader.name from dept_emp staff , dept_emp leader where staff.managerid = leader.id;

-- 2. 查询所有员工  及其领导的名字， 如果员工没有领导， 也需要查询出来
-- 表结构：emp a , emp b
select a.name '员工', b.name '领导' from dept_emp a left join dept_emp b on a.managerid = b.id;




select staff.name , leader.name from dept_emp staff left outer join dept leader on staff.managerid = leader.id;
