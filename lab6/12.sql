--(12) По таблице HR.EMPLOYEES получить список сотрудников, 
--     у которых зарплата находится в замкнутом диапазоне [3000, 7000].

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary >= 3000 AND salary <= 7000;