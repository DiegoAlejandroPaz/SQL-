create view order_subtotal as 
select order#, sum (quantity* paideach) subtotal from orderitems
group by order#;