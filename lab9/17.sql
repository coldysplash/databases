--  17. Путем соединения таблиц HR.EMPLOYEES, HR.DEPARTMENTS и HR.LOCATIONS 
--      получить список сотрудников, для которых POSTAL_CODE=’26192’.

SELECT employees.*
FROM employees
JOIN departments ON employees.department_id = departments.department_id
JOIN locations ON departments.location_id = locations.location_id
WHERE locations.postal_code = '26192';