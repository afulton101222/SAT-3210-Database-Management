-- 6. 
SELECT COUNT(user_id) AS 'Total Customers that Bought Coca-Cola' FROM users, orders, order_items WHERE users.user_id = orders.user_id AND orders.order_id = order_items.order_id AND Role = 'customer' AND order_items.product_id = 29 GROUP BY users.user_id;
