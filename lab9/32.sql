--(32) Путем соединения таблиц HR.DEPARTMENTS и HR.LOCATIONS получить список департаментов, 
--     которые размещены на территории США (COUNTRY_ID ='US').

SELECT departments.*
FROM departments
JOIN locations ON departments.location_id = locations.location_id
WHERE locations.country_id = 'US';