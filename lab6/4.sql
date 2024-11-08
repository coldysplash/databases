-- 4. При выборке данных из таблицы HR.EMPLOYEES значения полей FIRST_NAME и LAST_NAME 
-- 	  для каждого сотрудника поместить в один столбец с названием FULL_NAME.

SELECT (first_name, last_name) AS FULL_NAME FROM employees;