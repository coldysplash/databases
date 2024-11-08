-- (9) Из таблицы HR.EMPLOYEES выдать значения SALARY так,
--     чтобы они могли повторяться, но только в разных департаментах. 
--     По столбцу SALARY сделать сортировку в порядке возрастания и ограничиться значениями не выше 4000.

SELECT salary, department_id 
FROM employees  
WHERE salary <= 4000 
GROUP BY salary, department_id HAVING COUNT(*) > 1 
ORDER BY salary;