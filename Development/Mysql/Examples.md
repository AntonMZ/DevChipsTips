* Поиск дублирующихся записей в таблице

    ```sql
    SELECT
        `col1`,
        COUNT(`col1`) AS `count`
    FROM
        `table`
    GROUP BY
        `col1`
    HAVING 
        `count` > 1
    ```

    |col1|count|
    |-|-|
    |Монитор|3|
    |Принтер|2|