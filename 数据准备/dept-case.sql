create table dept_case(
    id int auto_increment primary key comment '主键ID',
    name varchar(10) comment '部门名称'
) comment '部门表';

insert into dept_case(id, name) values
(1, '研发部'),
(2, '市场部'),
(3, '财务部'),
(4, '销售部'),
(5, '总经办'),
(6, '人事部');
