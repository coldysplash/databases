-- 27. Должности и количество сотрудников с комиссионной надбавкой

SELECT job_id, COUNT(commission_pct) AS employees_with_commission
FROM employees
GROUP BY job_id;

