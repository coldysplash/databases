-- CREATE TABLE IF NOT EXISTS faculties (
-- 	id serial PRIMARY KEY unique,
-- 	НазваниеФакультета varchar(20) NOT NULL,
-- 	ФИО_Декана varchar(80),
-- 	ТелефонДеканата varchar(80)
-- );

-- CREATE TABLE IF NOT EXISTS groups (
-- 	id serial PRIMARY KEY,
-- 	НазваниеГруппы varchar(10) NOT NULL,
-- 	Курс int,
-- 	Кол_во_чел_в_группе int,
-- 	ФакультетID int REFERENCES faculties(id) ON UPDATE CASCADE ON DELETE SET NULL
-- );

-- CREATE TABLE IF NOT EXISTS students ( 
-- 	id serial PRIMARY KEY unique,
-- 	ФИО varchar(80) NOT NULL,
-- 	Пол varchar(1) CHECK (Пол = 'м' OR Пол = 'ж'),
-- 	ДатаРождения date,
-- 	Адрес varchar(80),
-- 	ГруппаID int REFERENCES groups(id) ON UPDATE CASCADE ON DELETE SET NULL, 
-- 	СреднийБалл float,
-- 	Стипендия int CHECK (Стипендия > 0 AND Стипендия < 4000) DEFAULT 2300,
-- 	Военнообязан boolean
-- );


-- INSERT INTO faculties (НазваниеФакультета, ФИО_Декана, ТелефонДеканата) 
--                VALUES ('ИВТ', 'Иванов Иван Иванович', '8(383)123-45-67');

-- INSERT INTO faculties (НазваниеФакультета, ФИО_Декана, ТелефонДеканата) 
--                VALUES ('ИБ', 'Савельев Роман Анатольевич', '8(383)234-56-78'); 

-- INSERT INTO faculties (НазваниеФакультета, ФИО_Декана, ТелефонДеканата) 
--                VALUES ('ГФ', 'Смирнов Алексей Андреевич', '8(383)345-67-89'); 

-- INSERT INTO groups (НазваниеГруппы, Курс, Кол_во_чел_в_группе, ФакультетID) VALUES ('ИВ-121', 4, 16, 1);
-- INSERT INTO groups (НазваниеГруппы, Курс, Кол_во_чел_в_группе, ФакультетID) VALUES ('ИБ-223', 2, 23, 2); 
-- INSERT INTO groups (НазваниеГруппы, Курс, Кол_во_чел_в_группе, ФакультетID) VALUES ('ГФ-334', 3, 21, 3); 

-- \copy students (ФИО, Пол, ДатаРождения, Адрес, ГруппаID, СреднийБалл, Военнообязан) FROM '/home/coldysplash/programming/databases/lab3/infostudents.csv' WITH (FORMAT csv);

-- SELECT * FROM students;
-- SELECT * FROM faculties;
-- SELECT * FROM groups;

-- 2

-- SELECT students.ФИО, groups.НазваниеГруппы 
-- FROM students 
-- INNER JOIN groups ON groups.id = students.ГруппаID 
-- WHERE groups.НазваниеГруппы = 'ИВ-121';

-- 3

-- UPDATE groups SET НазваниеГруппы = 'ИВ-222' WHERE id=1;
-- SELECT * FROM groups;
-- SELECT students.ФИО, groups.НазваниеГруппы FROM students INNER JOIN groups ON groups.id = students.ГруппаID;

-- 4 

-- DELETE FROM groups WHERE id=1;
-- SELECT * FROM groups;
-- SELECT ФИО, ГруппаID FROM students;