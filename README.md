# mysql-learning

MySQL 学习练习仓库，记录课程中的建表、约束、函数、多表关系、多表查询与权限练习。

## 环境

- 数据库：MySQL（本机 127.0.0.1，端口 3306）
- 客户端：DataGrip

## 目录结构

- `practice/`：DQL/DCL 与基础查询练习
  - `basic-query.sql`：员工表 `emp` 建表、初始数据，以及基础查询、条件查询、聚合函数、分组查询、分页查询、排序查询练习。
  - `dql-practice.sql`：DQL 条件查询、分组统计、排序与分页练习。
  - `dcl-practice.sql`：DCL 用户创建、修改密码、查询授权、授予与撤销权限练习。
- `function/`：常用函数练习
  - `numeric-functions.sql`：数值函数（`ceil`、`floor`、`mod`、`rand`、`round` 等）。
  - `string-functions.sql`：字符串函数（`concat`、`lower`、`upper`、`lpad`、`rpad`、`trim`、`substring` 等）。
  - `date-functions.sql`：日期函数（`curdate`、`curtime`、`now`、`year/month/day`、`date_add`、`datediff` 等）。
  - `flow-control-functions.sql`：流程控制函数（`if`、`ifnull`、`case when` 分支判断，含地址分类与成绩等级案例）。
- `多表关系演示/`：表关系与多表查询练习
  - `约束演示.sql`：列级约束（主键、自增、非空、唯一、`check`、默认值）与外键、`cascade`/`set null` 级联行为。
  - `多对多.sql`：`student` 学生表、`course` 课程表与 `student_course` 中间表，两个外键关联。
  - `一对一.sql`：`tb_user` 用户表与 `tb_user_edu` 教育信息表拆分存储。
  - `内连接.sql`：隐式内连接（`where` 关联）与显式内连接（`inner join ... on`）。
  - `外连接.sql`：`left join`、`right join`，以及右外连接改写为左外连接。
  - `自连接.sql`：同表起别名互相关联，查询员工及其直属领导。
  - `联合查询.sql`：`union all` 拼接结果并保留重复，`union` 拼接后去重。
  - `子查询/标量子查询.sql`：子查询返回单个值，外层用 `=`、`>` 等条件比较。
  - `子查询/列子查询.sql`：子查询返回一列多行，外层用 `in` 匹配，并练习 `all`、`any` 工资比较。
- `docs/learning-log.md`：学习日志，按日期记录每次更新的内容。

## 运行方式

1. 本地创建数据库（如 `itheima`）；
2. 在 DataGrip 中连接本机 MySQL；
3. 先执行建表、插入语句，再运行各条查询练习。

## 说明

- 表名、字段以实际练习为准；
- 仓库会随学习进度持续补充。
