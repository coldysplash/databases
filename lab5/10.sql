--  10. 
--    С учетом сведений о выполненных заказах определить общее количество 
--    израсходованных комплектующих изделий за указанный период времени 
--    (начало и конец периода вводить через параметры запроса)

DO $$
DECLARE
    start_d date := '12.08.2013'; 
    end_d date := '16.08.2013';
    result RECORD;
BEGIN
    SELECT
        SUM(Comp_Config.Quantity * Order_Items.Quantity) INTO result
    FROM 
        Order_Items
    JOIN 
        Orders ON Order_Items.Ord_id = Orders.Ord_id
    JOIN 
        Comp_Config ON Order_Items.Comp_id = Comp_Config.Comp_id
    WHERE 
        Orders.Ex_Date BETWEEN start_d AND end_d;
    RAISE NOTICE 'Общее количество израсходованных комплектующих изделий за указанный период времени: %', result;
END $$;
