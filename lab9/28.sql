--  (28) Путем соединения таблиц HR.DEPARTMENTS, HR.LOCATIONS, HR.COUNTRIES и HR.REGIONS 
--       получить список департаментов (с указанием department_id и department_name), 
--       которые размещаются на территории Европы (region_name ='Europe').

SELECT departments.department_id, departments.department_name
FROM departments
JOIN locations ON departments.location_id = locations.location_id
JOIN countries ON locations.country_id = countries.country_id
JOIN regions ON countries.region_id = regions.region_id
WHERE regions.region_name ='Europe';
