-- 3. С учетом сведений о составе комплектующих изделий вычислить стоимость компьютера 
--    с заданным названием (название вводить через параметр запроса)

DO $$
DECLARE
    comp_name VARCHAR := 'Компьютер DNS Extreme XL';  -- Объявление переменной
    result RECORD;
BEGIN
    SELECT
        SUM(Comp_Parts.Price * Comp_Config.Quantity) INTO result
    FROM 
        Comp_Config
    JOIN 
        Comp_Parts ON Comp_Config.Part_id = Comp_Parts.Part_id
    JOIN 
        Computers ON Comp_Config.Comp_id = Computers.Comp_id
    WHERE 
        Computers.Name = comp_name;
    RAISE NOTICE 'Стоимость компьютера "%": %', comp_name, result;
END $$;
