-- DROP TABLE students; 

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

-- \copy students (ФИО, Пол, ДатаРождения, Адрес, Факультет, ТелефонДеканата, ФИО_Декана, Курс, Группа, Кол_во_чел_в_группе, СреднийБалл, Военнообязан) FROM '/home/coldysplash/programming/databases/lab1/infostudents.csv' WITH (FORMAT csv);

SELECT * FROM students;