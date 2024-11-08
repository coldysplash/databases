-- 31. Определить клиента, который заказал максимальное количество компьютеров

SELECT 
    Customers.Cust_id,
    Customers.Name,
    SUM(Quantity) AS Total_Orders
FROM 
    Customers
JOIN 
    Orders ON Customers.Cust_id = Orders.Cust_id
JOIN 
    Order_Items ON Orders.Ord_id = Order_Items.Ord_id
GROUP BY
    Customers.Cust_id,
    Customers.Name
ORDER BY
    Total_Orders DESC -- сортируем по убыванию
LIMIT 1;