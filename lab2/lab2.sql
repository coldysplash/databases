-- SELECT * FROM students;

-- CREATE TABLE IF NOT EXISTS students (
--     Номер serial,
--     ФИО varchar(80),
--     Пол varchar(1) CHECK (Пол = 'м' OR Пол = 'ж'),
--     ДатаРождения DATE,
--     Адрес varchar(80),
--     Факультет varchar(40),
--     ТелефонДеканата varchar(20),
--     ФИО_Декана varchar(80),
--     Курс int,
--     Группа varchar(10),
--     Кол_во_чел_в_группе int,
--     СреднийБалл float CHECK (СреднийБалл >= 3  AND СреднийБалл <= 5),
--     Стипендия int CHECK (Стипендия > 0 AND Стипендия < 4000) DEFAULT 2300,
--     Военнообязан boolean
-- );

-- 1
-- SELECT ФИО, Адрес FROM students;

-- 2
-- SELECT Факультет, COUNT(ФИО) FROM students GROUP BY Факультет;

-- 3
-- SELECT ФИО, Группа FROM students WHERE Группа='ИВ-121';

-- 4 
-- SELECT 
--     Факультет,
--     Курс,
--     AVG(СреднийБалл) AS СреднийБалл
-- FROM 
--     students
-- GROUP BY 
--     Факультет, Курс
-- ORDER BY 
--     Факультет, Курс;

-- 5
-- SELECT ФИО,Военнообязан,Пол,Стипендия FROM students WHERE Военнообязан=true AND Пол='м' AND Стипендия != 0;

-- 6
-- UPDATE students SET Стипендия = (Стипендия / 100 * 10) + Стипендия WHERE Военнообязан=true;
-- SELECT ФИО, Стипендия, Военнообязан FROM students;

-- 7
-- DROP TABLE students_2;
-- CREATE TABLE students_2 
-- AS (SELECT ФИО, Стипендия, Военнообязан FROM students WHERE ДатаРождения < '2004-05-16' AND ДатаРождения > '2002-01-01');
-- SELECT * FROM students_2;

-- 8
-- DELETE FROM students_2 WHERE Стипендия=2300;
-- SELECT * FROM students_2;

-- 9
-- SELECT ФИО, Стипендия FROM students WHERE Стипендия > 2300;

-- 10
-- SELECT Группа, SUM(Стипендия) FROM students GROUP BY Группа;


-- SELECT 
--     ФИО,
--     Адрес,
--     Стипендия,
--     CASE 
--         WHEN Адрес LIKE 'Центральная' THEN 2000
--         WHEN Адрес LIKE 'Ленина' THEN 2000
--         WHEN Адрес LIKE 'Мирная' THEN 3000
--         WHEN Адрес LIKE 'Солнечная' THEN 5000
--         WHEN Адрес LIKE 'Зеленая' THEN 5000
--         ELSE Стипендия 
--     END AS К_зачислению
-- FROM 
--     students;