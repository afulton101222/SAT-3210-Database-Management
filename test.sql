SELECT COUNT(quantity) AS 'Total Products' FROM Product;

SELECT Product_name FROM Product NATURAL JOIN Order_Items GROUP BY Product_id ORDER BY Quantity DESC LIMIT 20;
