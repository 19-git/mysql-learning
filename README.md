# mysql-learning

MySQL 学习练习仓库，记录课程中的建表、数据插入与各类查询练习。

## 环境

- 数据库：MySQL（本机 127.0.0.1，端口 3306）
- 客户端：DataGrip

## 目录结构

- `practice/`：SQL 练习脚本
  - `basic-query.sql`：员工表 `emp` 建表、初始数据，以及基础查询、条件查询、聚合函数、分组查询、分页查询、排序查询练习。
  - `dql-practice.sql`：DQL 条件查询、分组统计、排序与分页练习。
  - `dcl-practice.sql`：DCL 用户创建、修改密码、查询授权、授予与撤销权限练习。
- `function/`：常用函数练习
  - `numeric-functions.sql`：数值函数（`ceil`、`floor`、`mod`、`rand`、`round` 等）。
  - `string-functions.sql`：字符串函数（`concat`、`lower`、`upper`、`lpad`、`rpad`、`trim`、`substring` 等）。
  - `date-functions.sql`：日期函数（`curdate`、`curtime`、`now`、`year/month/day`、`date_add`、`datediff` 等）。
- `docs/learning-log.md`：学习日志，按日期记录每次更新的内容。

## 运行方式

1. 本地创建数据库（如 `itheima`）；
2. 在 DataGrip 中连接本机 MySQL；
3. 先执行建表、插入语句，再运行各条查询练习。

## 说明

- 表名、字段以实际练习为准；
- 仓库会随学习进度持续补充。
