-- 日期函数

-- curdate()
    select curdate();

-- curtime()
    select curtime();

-- now()
    select now();

-- YEAR , MONTH , DAY
    select YEAR(now());

    select MONTH(now());

    select DAY(now());

-- date_add
    select date_add(now(), interval 70 year );

-- datediff
    select datediff('2021-12-01', '2021-11-01');

-- 案例：查询所有员工的入职天数，并根据入职天数倒序排序。
    select name,datediff(curdate(),entrydate) '入职天数' from emp order by '入职天数' desc ;

