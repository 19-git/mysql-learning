# 学习日志

> 按日期倒序记录，新的内容放在最上面。

## 2026-11-22

- 多表关系演示：
  - 多对多：`student` 学生表、`course` 课程表，中间表 `student_course` 通过 `studentid`、`courseid` 两个外键关联
  - 一对一：`tb_user` 用户基本信息表与 `tb_user_edu` 教育信息表拆分存储；在从表中建外键关联主表主键，并给此外键字段加 `unique` 约束，使主表每条记录在从表中最多对应一条
- 多表查询练习：
  - 内连接：隐式 `from a, b where 关联条件`；显式 `inner join ... on`
  - 外连接：`left [outer] join` 保留左表全部记录，`right [outer] join` 保留右表全部记录；右连接可改写为左连接
  - 自连接：同表起两个别名互相关联，查询员工及其直属领导
  - 联合查询：`union all` 直接拼接结果、保留重复记录；`union` 拼接后对结果去重
- 易错点：
  - 两表没有关联条件会产生笛卡尔积，结果为两表行数乘积，需要靠关联条件过滤
  - 表别名不要用 `lead` 等保留关键字，否则会报 1064 语法错误

## 2026-11-21

- 流程控制函数：`if`、`ifnull`、`case when then else end`
  - 案例：按工作地址划分一线/二线城市；按成绩划分优秀/及格/不及格
- 列约束练习：主键 `primary key`、`auto_increment`、`not null`、`unique`、`check`、`default`，用违规插入验证拦截效果
- 外键练习：`dept` 与 `dept_emp` 关联，外键的添加与删除，`on update/delete cascade`、`set null` 级联行为
- 易错点：
  - 范围判断用 `case when 条件`，不要写成 `case 字段 when 条件`；等值匹配才用 `case 字段 when 值`
  - 自增主键在失败回滚后会留下断号，断号不回收、不复用，不影响唯一递增
  - `on delete cascade` 会连带删除从表数据，生产环境慎用

## 2026-11-20

- 目录整理：脚本按主题归入 `practice/` 与 `function/` 文件夹。
- 练习内容：
  - DQL 练习：条件查询、分组统计、排序与分页
  - DCL 练习：创建用户、修改密码、查看权限、授予与撤销权限
  - 数值函数：`ceil`、`floor`、`mod`、`rand`、`round`
  - 字符串函数：`concat`、`lower`、`upper`、`lpad`、`rpad`、`trim`、`substring`
  - 日期函数：`curdate`、`curtime`、`now`、`year/month/day`、`date_add`、`datediff`
- 易错点：用聚合函数（`count`）做分组统计时，`select` 中的普通列必须出现在 `group by` 中。

## 2026-11-14

- 环境：MySQL + DataGrip，本机连接 127.0.0.1:3306
- 练习内容：
  - 员工表 `emp` 建表与初始数据插入
  - 基础查询：指定字段、全字段、别名、去重
  - 条件查询：`is null`、`!=`、`between and`、`and/or`、`in`、`like`
  - 聚合函数：`count`、`avg`、`max`、`min`、`sum`
  - 分组查询：`group by` + `having`
  - 分页查询：`limit`
  - 排序查询：`order by`
- 易错点：`where` 在分组前过滤原始数据，`having` 在分组后过滤聚合结果。
