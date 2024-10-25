# SQL запросы
## 1. Получить список юзернеймов пользователей
>SELECT "username" FROM "users"
## 2. Получить кол-во отправленных сообщений каждым пользователем
>SELECT
    "users"."username",
    coalesce("sub"."messages_count", 0) AS "Total messages sent" FROM
    "users" LEFT JOIN (
SELECT
        "from" AS "user_id",
            count("id") AS "messages_count"
    FROM
            "messages"
    GROUP BY
            "from"
    ) AS "sub" ON "users"."id" = "sub"."user_id"
ORDER BY
    "Total messages sent" DESC
## 3. Получить пользователя с самым большим кол-вом полученных сообщений и само количество
>
SELECT
    "users"."username",
    "max_counts"."message_count" AS "Total messages received"
FROM
    (
        SELECT
            "to" AS "user_id",
            count("id") AS "message_count"
        FROM
            "messages"
        GROUP BY
            "to"
        ORDER BY
            "message_count" DESC
        LIMIT 1
    ) AS "max_counts"
    JOIN
    "users" ON "users"."id" = "max_counts"."user_id"
## 4. Получить среднее кол-во сообщений, отправленное каждым пользователем
>SELECT
    avg("messages_count") AS "Average messages sent per user"
FROM (
         SELECT
             "from",
             count("id") AS "messages_count"
         FROM
             "messages"
         GROUP BY
             "from"
     ) AS "sub"