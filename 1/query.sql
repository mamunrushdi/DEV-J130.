-- SELECT * FROM public.orders where (EXTRACT(MONTH FROM order_date) = 11 OR EXTRACT(MONTH FROM order_date) = 12);
-- SELECT * FROM public.orders where (EXTRACT(MONTH FROM shipment_delivary_date) = 11 OR EXTRACT(MONTH FROM shipment_delivary_date) = 12);
-- SELECT * FROM public.orders where (client_full_name is not null and client_contact_number is not null and client_email is not null);
-- SELECT * FROM public.orders where order_id = 3;
-- SELECT product_name FROM STORE where article_id in	(select article_id from orders_status where order_id = 3);
-- SELECT * FROM public.orders  LEFT JOIN orders_status on public.orders.order_id = orders_status.order_id where order_status = 'S';
-- SELECT SUM(amount * price) AS total FROM public.orders_status
-- SELECT SUM(amount * price) AS total FROM  (SELECT * FROM public.orders  LEFT JOIN orders_status on public.orders.order_id = orders_status.order_id where order_status = 'S');

------ Запрос, фиксирующий отгрузку заказа с id=5 ------------ 

-- alter table orders set shipment_delivary_date = '11-25-2020', order_stauts = 'S' where order_id = 5
alter table store set product_left = ((select product_left from store) - 1)
-- select product_left from store


