# nl2sql-spider-1.0-dataset
This project delivers Spider 1.0 multi-dialect testing; however, its scope is currently limited to relational database types, including MySQL, PostgreSQL, and Oracle.
---
该项目提供了spider1.0多方言测试，包含数据库类型目前只有关系性数据库，如Mysql，PostgreSQL，Oracle

reference: https://yale-lily.github.io/spider


# Mysql 
`test.json` record the query and the database name.
`gold_sql_test.json` record the gold sql for the Mysql.

You can use the test.json and gold_sql_test.json to test Execution Accuracy. 

:thinking: Attention: 

From my opinion, there are some questions.

1. The query in the test.json may have semantic errors. For example: 
   - `DISTINCT` keywords: Whether the query should contain the `DISTINCT` keyword? Some gold sqls contain the `DISTINCT` keyword, while others do not with no hints in the query.
   - `LEFT JOIN` and `JOIN` keywords: When using foreign keys, there is no explicit words to indicate whether it is a `LEFT JOIN` or a `JOIN`. 

So, just using hash as matching method to compare the return results is not a good idea.

According following opinion: 
1. The order of results returned by Mysql is not guaranteed unless an `ORDER BY` clause is specified.
   - To solve above problem, you may use `sort` function by result rows. But, in a rare case, the order of columns may be different and this situation is caused by the `SELECT` clause。 Nevertheless, it is valid in terms of semantics.
2. The type `Decimal`, `DateTime` may have precision errors.
   - For example, the gold sql may return `123.456`，while the generated sql may return `123.456000`.

So, using hash function just get the bottom line of the execution accuracy.