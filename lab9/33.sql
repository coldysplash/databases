--(33) Путем соединения таблиц HR.EMPLOYEES и HR.DEPARTMENTS 
--     получить список сотрудников, которые относятся к службам Marketing, Sales и IT.

SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name IN ('Marketing', 'Sales', 'IT');