-- 13. По данным из таблицы HR.EMPLOYEES сформировать список должностей 
--     с указанием job_id, количества сотрудников и средней зарплаты. 
--      При формировании списка ограничиться только должностями, у которых максимальная зарплата превышает 8000.

SELECT job_id, 
COUNT(employee_id) AS number_of_employees, 
AVG(salary) AS average_salary
FROM employees
GROUP BY job_id
HAVING MAX(salary) > 8000;