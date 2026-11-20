# 学习日志

> 按日期倒序记录，新的内容放在最上面。

## 2026-11-20

- 目录整理：脚本按主题归入 `practice/` 与 `function/` 文件夹。
- 练习内容：
  - DQL 练习：条件查询、分组统计、排序与分页
  - DCL 练习：创建用户、修改密码、查看权限、授予与撤销权限
  - 数值函数：`ceil`、`floor`、`mod`、`rand`、`round`
  - 字符串函数：`concat`、`lower`、`upper`、`lpad`、`rpad`、`trim`、`substring`
  - 日期函数：`curdate`、`curtime`、`now`、`year/month/day`、`date_add`、`datediff`
- 易错点：聚合查询中的普通列必须加入 `group by`；函数名注意拼写（`substring`，不是 `substting`）。

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
