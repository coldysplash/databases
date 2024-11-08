-- 35. Определить общее количество заказанных компьютеров по каждому клиенту

SELECT 
    Customers.Name AS Cust_Name,
    SUM(Order_Items.Quantity) AS TotalOrderComputers
FROM 
    Customers
JOIN 
    Orders ON Customers.Cust_id = Orders.Cust_id
JOIN 
    Order_Items ON Orders.Ord_id = Order_Items.Ord_id
GROUP BY 
    Customers.Name
ORDER BY 
    TotalOrderComputers DESC;
