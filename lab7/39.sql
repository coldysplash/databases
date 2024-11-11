-- (39) По данным из таблицы HR.EMPLOYEES сформировать список департаментов (DEPARTMENT_ID), 
--      для которых количество сотрудников, 
--      получающих месячную зарплату в размере от 7000 до 10000, меньше 4.

SELECT department_id, COUNT(employee_id) AS employee_count
FROM employees
WHERE salary BETWEEN 7000 AND 10000
GROUP BY department_id
HAVING COUNT(employee_id) < 4;