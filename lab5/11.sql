-- 11. Найти описание комплектующего изделия заданного типа 
--    с максимальной (или минимальной) ценой

SELECT
    TypeId, Description, Price AS result
FROM 
    Comp_Parts
WHERE 
    Comp_Parts.Price = (SELECT MAX(Price) FROM Comp_Parts WHERE TypeId = 2);