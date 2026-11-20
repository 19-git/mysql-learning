-- 数值函数

-- ceil
    select ceil(1.1);

-- floor
    select floor(1.9);

-- mod
    select mod(7, 4);

-- rand
    select rand();

-- round
    select round(2.344, 2);

-- 案例：通过数据库的函数，生成一个六位数的随机验证码。
    select substring(rand() * 1000000,1,6);



