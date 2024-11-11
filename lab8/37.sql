-- 37. Используя таблицы HR.JOBS, HR.EMPLOYEES и HR.JOB_HISTORY, 
--     отобразить полные данные о текущих должностях сотрудников, 
--     которые в прошлом занимали должность с идентификатором ST_CLERK.

SELECT employees.*, jobs.job_title
FROM employees 
JOIN jobs ON employees.job_id = jobs.job_id
WHERE employees.employee_id IN (
    SELECT employee_id
    FROM job_history 
    WHERE job_id = 'ST_CLERK'
);
