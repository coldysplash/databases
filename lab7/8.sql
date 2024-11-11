-- (8) По данным из таблицы HR.EMPLOYEES сформировать список тех менеджеров, 
--    у которых в подчинении находится не менее 5 сотрудников. 
--    При формировании списка ограничиться департаментами с номерами 50 и 80.

SELECT manager_id, COUNT(employee_id) AS number_of_employees
FROM employees
WHERE department_id IN (50, 80)
GROUP BY manager_id
HAVING COUNT(employee_id) >= 5;