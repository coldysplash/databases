-- 34. Используя таблицы HR.JOBS и HR.EMPLOYEES, 
--     отобразить полные данные о должностях, на которые были приняты сотрудники в 2005 году.

SELECT DISTINCT jobs.*
FROM jobs
JOIN employees ON jobs.job_id = employees.job_id
WHERE EXTRACT(YEAR FROM employees.hire_date) = 2000