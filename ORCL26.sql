CREATE VIEW order_total AS
    SELECT
        order#,
        subtotal,
        nvl(shipcost, 0)                                               shipping,
        round(subtotal *(rate / 100), 2)                               tax,
        subtotal + nvl(shipcost, 0) + round(subtotal *(rate / 100), 2) total
    FROM
             order_subtotal
        JOIN orders USING ( order# )
        JOIN tax ON orders.shipstate = tax.state
    ORDER BY
        order#
WITH READ ONLY;