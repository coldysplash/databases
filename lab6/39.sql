-- 39. С помощью таблицы HR.JOBS получить список должностей с указанием данных по зарплате, 
-- провести сортировку этого списка по названию должности (JOB_TITLE) в алфавитном порядке.

SELECT job_title, min_salary, max_salary
FROM JOBS
ORDER BY job_title; 