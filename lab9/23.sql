-- (23) Путем соединения таблиц HR.EMPLOYEES, HR.DEPARTMENTS и HR.LOCATIONS посчитать, 
--      сколько сотрудников работает в разных городах.

SELECT COUNT(employees.employee_id) AS employee_count, locations.city
FROM employees
JOIN departments ON employees.department_id = departments.department_id
JOIN locations ON departments.location_id = locations.location_id
GROUP BY locations.city;

