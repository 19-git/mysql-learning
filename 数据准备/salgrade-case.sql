create table salgrade_case(
    grade int,
    losal int,
    hisal int
) comment '薪资等级表';

insert into salgrade_case values (1,0,3000);
insert into salgrade_case values (2,3001,5000);
insert into salgrade_case values (3,5001,8000);
insert into salgrade_case values (4,8001,10000);
insert into salgrade_case values (5,10001,15000);
insert into salgrade_case values (6,15001,20000);
insert into salgrade_case values (7,20001,25000);
insert into salgrade_case values (8,25001,30000);
