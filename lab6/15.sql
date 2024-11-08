-- (15) По таблице HR.EMPLOYEES получить список сотрудников, 
--     которые приняты на работу с начала 1999 г. 
--     и не относятся к департаментам 50, 80, 100.

SELECT employee_id, first_name, last_name, hire_date, department_id
FROM employees
WHERE hire_date >= '01-01-1999'
AND department_id NOT IN (50, 80, 100);