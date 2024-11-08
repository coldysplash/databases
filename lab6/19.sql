-- 19. По таблице HR.EMPLOYEES получить список сотрудников, 
--     у которых фамилия (LAST_NAME) начинается с буквы A и заканчивается буквой n.

SELECT employee_id, last_name
FROM employees
WHERE upper(substring(last_name from 1 for 1)) = 'A'
AND right(last_name, 1) = 'n';