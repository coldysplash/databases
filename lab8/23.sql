-- 23. Используя таблицу HR.DEPARTMENTS, отобразить полные данные о департаментах, 
--     которые размещаются там же, где департамент с номером 90. 
--     Исключить из рассмотрения департаменты, для которых не указан код руководителя.

SELECT * FROM departments
WHERE departments.location_id = (SELECT location_id FROM departments WHERE department_id = 90)
AND manager_id IS NOT NULL