-- (6) По данным из таблицы HR.EMPLOYEES сформировать 
-- перечень менеджеров с указанием идентификатора менеджера (manager_id) 
-- и количества сотрудников у него в подчинении.

SELECT manager_id, COUNT(employee_id) AS number_of_employees
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;