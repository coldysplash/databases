-- (16) По таблице HR.EMPLOYEES получить список сотрудников, у которых зарплата не ниже 10000, 
--      с указанием кода подразделения (department_id) и фамилии (last_name). 
--      Список отсортировать сначала по коду подразделения, а в пределах одного подразделения – по фамилии.

SELECT department_id, first_name, last_name, salary
FROM employees
WHERE salary >= 10000
ORDER BY department_id, last_name;
