-- (28) По данным из таблицы HR.EMPLOYEES посчитать, 
--     сколько сотрудников было принято на работу по месяцам в течение 2004-го года.

SELECT EXTRACT(MONTH FROM hire_date) AS hire_month, 
COUNT(employee_id) AS number_of_hires
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 2000
GROUP BY hire_month