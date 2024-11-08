-- 43. Найти общее количество заказов для компьютеров заданного типа (вводить через параметр запроса)

DO $$
DECLARE
    comp_name VARCHAR := 'Компьютер DNS Prestige XL';  -- Объявление переменной
    result RECORD;
BEGIN
    SELECT
        SUM(Order_Items.Quantity) INTO result
    FROM 
        Order_Items
    JOIN 
        Computers ON Order_Items.Comp_id = Computers.Comp_id
    WHERE 
        Computers.Name = comp_name;

    RAISE NOTICE 'Количество заказов для компьютера "%": %', comp_name, result;
END $$;
