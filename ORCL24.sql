SELECT
    lastname,
    firstname,
    order#,
    SUM(paideach * quantity) AS "ORDER TOTAL"
FROM
    full_orders
GROUP BY
    lastname,
    firstname,
    order#
ORDER BY
    SUM(paideach * quantity) DESC;