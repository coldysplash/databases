-- (27)Путем соединения таблиц HR.DEPARTMENTS, HR.LOCATIONS и HR.COUNTRIES 
--	   получить список департаментов, 
--     которые размещаются на территории Объединенного Королевства (COUNTRY_NAME = ’United Kingdom’).

SELECT departments.*
FROM departments
JOIN locations ON departments.location_id = locations.location_id
JOIN countries ON locations.country_id = countries.country_id
WHERE countries.country_name = 'United Kingdom';