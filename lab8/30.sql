-- 30. Используя таблицы HR.DEPARTMENTS и HR.EMPLOYEES, 
--     отобразить полные данные о департаментах, 
--     в которые за период 2008-2009 гг. были приняты на работу новые сотрудники.

SELECT DISTINCT departments.*
FROM departments 
JOIN employees ON departments.department_id = employees.department_id
WHERE EXTRACT(YEAR FROM employees.hire_date) IN (1999, 2000)
