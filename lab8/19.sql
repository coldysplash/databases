-- 19. С помощью таблицы HR.EMPLOYEES получить список департаментов, 
-- 	   в которых средний оклад ниже среднего по всей компании.

SELECT d.department_id, d.department_name, AVG(e.salary) AS average_salary
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING AVG(e.salary) < (SELECT AVG(salary) FROM employees);
