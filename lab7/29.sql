-- (29) По данным из таблицы HR.EMPLOYEES посчитать, 
--      сколько сотрудников было принято на работу 
--      во 2-й половине каждого месяца в течение 2005-го года.

SELECT EXTRACT(YEAR FROM hire_date) AS hire_year,
       EXTRACT(MONTH FROM hire_date) AS hire_month,
       COUNT(*) AS number_of_hires
FROM EMPLOYEES
WHERE EXTRACT(YEAR FROM hire_date) = 2000
  AND EXTRACT(DAY FROM hire_date) > 15
GROUP BY hire_year, hire_month
