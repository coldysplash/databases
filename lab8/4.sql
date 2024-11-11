-- 4. С помощью таблицы HR.EMPLOYEES построить список сотрудников, 
--    у которых отклонение от среднего оклада не превышает 2000.

SELECT first_name, last_name, job_id, salary
FROM employees
WHERE ABS(salary - (SELECT AVG(salary) FROM employees)) <= 2000;

