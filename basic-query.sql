create table emp(
    id          int                 comment '编号',
    workno      varchar(10)         comment '工号',
    name        varchar(10)         comment '姓名',
    gender      char(1)             comment '性别',
    age         tinyint unsigned    comment '年龄',
    idcard      char(18)            comment '身份证号',
    workaddress varchar(50)         comment '工作地址',
    entrydate   date                comment '入职时间'
) comment '员工表';

insert into emp (id, workno, name, gender, age, idcard, workaddress, entrydate)
values
(1, '1', '柳岩', '女', 20, '123456789012345678', '北京', '2000-01-01'),
(2, '2', '张无忌', '男', 18, '123456789012345670', '北京', '2005-09-01'),
(3, '3', '韦一笑', '男', 38, '123456789712345670', '上海', '2005-08-01'),
(4, '4', '赵敏', '女', 18, '123456757123845670', '北京', '2009-12-01'),
(5, '5', '小昭', '女', 16, '123456769012345678', '上海', '2007-07-01'),
(6, '6', '杨逍', '男', 28, '12345678931234567X', '北京', '2006-01-01'),
(7, '7', '范瑶', '男', 40, '123456789212345670', '北京', '2005-05-01'),
(8, '8', '黛绮丝', '女', 38, '123456157123645670', '天津', '2015-05-01'),
(9, '9', '范凉凉', '女', 45, '123156789012345678', '北京', '2010-04-01'),
(10, '10', '陈友谅', '男', 53, '123456789012345670', '上海', '2011-01-01'),
(11, '11', '张士诚', '男', 55, '12356789712345670', '江苏', '2015-05-01'),
(12, '12', '常遇春', '男', 32, '123446757152345670', '北京', '2004-02-01'),
(13, '13', '张三丰', '男', 88, '123656789012345678', '江苏', '2020-11-01'),
(14, '14', '灭绝', '女', 65, '123456719012345670', '西安', '2019-05-01'),
(15, '15', '胡青牛', '男', 70, '12345674971234567X', '西安', '2018-04-01'),
(16, '16', '周芷若', '女', 18, null, '北京', '2012-06-01');

-- 基本查询
-- 1. 查询指定字段 name, workno, age 返回
    select name,workno,age from emp;

-- 2. 查询所有字段返回
    select * from emp;

-- 3. 查询所有员工的工作地址，起别名
    select name,workaddress as '工作地址' from emp;
    select name,workaddress '工作地址' from emp;

-- 4. 查询公司员工的上班地址(不要重复)
    select distinct workaddress from emp;

-- 条件查询
-- 1. 查询没有身份证号的员工信息
    select * from emp where idcard is null;

-- 2. 查询有身份证号的员工信息
    select * from emp where idcard is not null;

-- 3. 查询年龄不等于 88 的员工信息
    select * from emp where age != 88;

-- 4. 查询年龄在15岁(包含) 到 20岁(包含)之间的员工信息
    select * from emp where age between 15 and 20;

-- 5. 查询性别为 女 且年龄小于 25岁的员工信息
    select * from emp where gender = '女' and age < 25;

-- 6. 查询年龄等于18 或 20 或 40 的员工信息
    select * from emp where age in(18,20,40);
    select * from emp where age = 18 or age = 20 or age = 40;

-- 7. 查询身份证号最后一位是X的员工信息
    select * from emp where idcard like '%X';
    select * from emp where idcard like '_________________X';

-- 聚合函数
-- 1. 统计该企业员工数量
    select count(*) from emp;

-- 2. 统计该企业员工的平均年龄
    select avg(age) from emp;

-- 3. 统计该企业员工的最大年龄
    select max(age) from emp;

-- 4. 统计该企业员工的最小年龄
    select min(age) from emp;

-- 5. 统计西安地区员工的年龄之和
    select sum(age) from emp where workaddress = '西安';

-- 分组查询
-- 1. 根据性别分组，统计男性员工 和 女性员工的数量
    select gender,count(*) from emp group by gender;

-- 2. 根据性别分组，统计男性员工 和 女性员工的平均年龄
    select gender,avg(age) from emp group by gender;

-- 3. 查询年龄小于45的员工，并根据工作地址分组，获取员工数量大于等于3的工作地址
    -- `where` 过滤原始数据（分组前）；`having` 过滤分组之后的聚合结果
    select workaddress,count(*) address_count from emp where age < 45 group by workaddress having address_count >= 3;

-- 分页查询
-- 1. 查询第1页员工数据，每页展示10条
    select * from emp limit 0,10;

-- 2. 查询第2页员工数据，每页展示10条
    select * from emp limit 10,10;

-- 3. 查询年龄大于20的员工，按入职时间降序，每页5条，查第3页
    select * from emp where age>20 order by entrydate desc limit 10,5;


-- 排序查询
-- 1. 根据年龄对公司的员工进行升序排序
    select * from emp order by age;
    select name,age from emp order by age;

-- 2. 根据入职时间，对员工进行降序排序
    select * from emp order by entrydate desc ;
    select name,gender,entrydate from emp order by entrydate desc ;

-- 3. 根据年龄对公司的员工进行升序排序，年龄相同，再按照入职时间进行降序排序
    select * from emp order by age asc , entrydate desc;











