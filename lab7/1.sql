-- 1. По данным из таблицы HR.LOCATIONS сформировать список идентификаторов стран (country_id) 
--    и одновременно для этих стран вычислить количество мест размещения департаментов.

SELECT country_id, COUNT(location_id) AS location_count
FROM LOCATIONS
GROUP BY country_id;