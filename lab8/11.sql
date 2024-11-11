-- 11. С помощью таблицы HR.EMPLOYEES построить список сотрудников, которые имеют оклад ниже среднего. 
--     В этом списке для каждого сотрудника также указать, сколько ему не хватает до среднего оклада.

SELECT employee_id, first_name, last_name, salary,
(SELECT AVG(salary) FROM employees) - salary AS deficit_to_average
FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees);