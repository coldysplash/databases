-- 30. По таблице HR.EMPLOYEES получить список сотрудников, 
-- у которых имя (FIRST_NAME) и фамилия (LAST_NAME) начинаются с одной и той же буквы S.

SELECT employee_id, first_name, last_name
FROM employees
WHERE upper(substring(first_name from 1 for 1)) = 'S'
AND upper(substring(last_name from 1 for 1)) = 'S';