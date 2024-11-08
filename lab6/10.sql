-- 10. По данным из таблицы HR.EMPLOYEES получить 
--     список сотрудников с низкой зарплатой (не более 2500$).

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary <= 2500;