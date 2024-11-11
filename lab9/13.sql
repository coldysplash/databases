-- (13)Путем соединения таблиц HR.EMPLOYEES и HR.DEPARTMENTS сформировать список, 
--     в котором для каждого сотрудника отобразить имя, фамилию, номер телефона, номер отдела и полное название отдела. 
--     Список ограничить сотрудниками, у которых стаж работы выше 16 лет.

SELECT e.first_name, e.last_name, e.phone_number, e.department_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE EXTRACT(YEAR FROM age(hire_date)) > '30';

