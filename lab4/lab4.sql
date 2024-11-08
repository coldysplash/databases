-- CREATE TABLE IF NOT EXISTS Comp_Types (
-- 	TypeId int PRIMARY KEY,
-- 	Name varchar(100),
-- 	Description varchar(200)
-- );

-- CREATE TABLE IF NOT EXISTS Computers (
-- 	Comp_id int PRIMARY KEY,
-- 	Name varchar(100),
-- 	Description varchar(200),
-- 	TypeId int REFERENCES Comp_Types(TypeId) ON UPDATE CASCADE ON DELETE CASCADE,
--     Price int
-- );

-- CREATE TABLE IF NOT EXISTS Customers (
--     Cust_id int PRIMARY KEY,
-- 	Name varchar(100),
-- 	Telephone varchar(20),
--     Address varchar(50),
--     Email varchar(50)
-- );

CREATE TABLE IF NOT EXISTS Orders (
    Ord_id int PRIMARY KEY,
	Rec_Date date,
	Ex_Date date,
    Cust_id int REFERENCES Customers(Cust_id) ON UPDATE CASCADE ON DELETE CASCADE,
    Summa int
);

-- CREATE TABLE IF NOT EXISTS Part_Types (
-- 	TypeId int PRIMARY KEY,
-- 	Name varchar(200)
-- );

-- CREATE TABLE IF NOT EXISTS Comp_Parts (
-- 	Part_id int PRIMARY KEY,
-- 	Name varchar(200),
-- 	Description varchar(1000),
-- 	Model varchar(500),
--     Price int,
-- 	TypeId int REFERENCES Part_Types(TypeId) ON UPDATE CASCADE ON DELETE CASCADE
-- );

CREATE TABLE IF NOT EXISTS Order_Items (
    Ord_id int,
    Comp_id int,
    Quantity int,
    PRIMARY KEY(Ord_id, Comp_id),
    FOREIGN KEY (Ord_id)  REFERENCES Orders(Ord_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (Comp_id) REFERENCES Computers(Comp_id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- CREATE TABLE IF NOT EXISTS Comp_Config (
--     Comp_id int,
-- 	Part_id int,
-- 	Quantity int,
--     PRIMARY KEY(Comp_id, Part_id),
--     FOREIGN KEY (Comp_id)  REFERENCES Computers(Comp_id) ON UPDATE CASCADE ON DELETE CASCADE,
--     FOREIGN KEY (Part_id) REFERENCES Comp_Parts(Part_id) ON UPDATE CASCADE ON DELETE CASCADE
-- );

-- \copy Comp_Types (TypeId,Name,Description) FROM '/home/coldysplash/programming/databases/lab4/Data/Comp_Types.csv' WITH (FORMAT csv, HEADER 1);
-- \copy Computers (Comp_id,Name,Description,TypeId,Price) FROM '/home/coldysplash/programming/databases/lab4/Data/Computers.csv' WITH (FORMAT csv, HEADER 1);
-- \copy Customers (Cust_id,Name,Telephone,Address,Email) FROM '/home/coldysplash/programming/databases/lab4/Data/Customers.csv' WITH (FORMAT csv, HEADER 1);
-- \copy Orders (Ord_id, Rec_Date,Ex_Date,Cust_id,Summa) FROM '/home/coldysplash/programming/databases/lab4/Data/Orders.csv' WITH (FORMAT csv, HEADER 1);
-- \copy Part_Types (TypeId,Name) FROM '/home/coldysplash/programming/databases/lab4/Data/Part_Types.csv' WITH (FORMAT csv, HEADER 1);
-- \copy Comp_Parts (Part_id,Name,Description,Model,Price,TypeId) FROM '/home/coldysplash/programming/databases/lab4/Data/Comp_Parts.csv' WITH (FORMAT csv, HEADER 1);
-- \copy Order_Items (Ord_id,Comp_id,Quantity) FROM '/home/coldysplash/programming/databases/lab4/Data/Order_Items.csv' WITH (FORMAT csv, HEADER 1);
-- \copy Comp_Config (Comp_id, Part_id, Quantity) FROM '/home/coldysplash/programming/databases/lab4/Data/Comp_Config.csv' WITH (FORMAT csv, HEADER 1);

-- UPDATE Comp_Config SET Comp_id=9 WHERE Comp_id=9;
-- UPDATE Comp_Config SET Comp_id=2 WHERE Comp_id=11;
-- UPDATE Comp_Config SET Comp_id=8 WHERE Comp_id=8;
-- UPDATE Comp_Config SET Comp_id=15 WHERE Comp_id=12;
-- UPDATE Comp_Config SET Comp_id=22 WHERE Comp_id=13;

-- UPDATE Order_Items SET Comp_id=9 WHERE Comp_id=9;
-- UPDATE Order_Items SET Comp_id=2 WHERE Comp_id=11;
-- UPDATE Order_Items SET Comp_id=8 WHERE Comp_id=8;
-- UPDATE Order_Items SET Comp_id=15 WHERE Comp_id=12;
-- UPDATE Order_Items SET Comp_id=22 WHERE Comp_id=13;

-- DELETE FROM Computers WHERE Comp_id NOT IN (9, 2, 8, 15, 22);

-- SELECT * FROM Computers;

-- test duplicates

-- INSERT INTO Comp_Config (Comp_id, Part_id, Quantity) VALUES (22, 25, 2); 

-- SELECT * FROM Comp_Config;

-- SELECT * FROM Order_Items;

-- ALTER TABLE Computers ADD COLUMN Image varchar(100);
-- ALTER TABLE Comp_Parts ADD COLUMN Image varchar(100);

-- UPDATE Computers SET Image='lab4/Images (comps)/Travel.jpg' WHERE Name='11.6" [Travel] Ноутбук';
-- UPDATE Computers SET Image='lab4/Images (comps)/DNS Extreme XL.jpg' WHERE Name='Компьютер DNS Extreme XL';
-- UPDATE Computers SET Image='lab4/Images (comps)/DNS Prestige XL.jpg' WHERE Name='Компьютер DNS Prestige XL';
-- UPDATE Computers SET Image='lab4/Images (comps)/DNS Prestige.jpg' WHERE Name='Компьютер DNS Prestige';
-- UPDATE Computers SET Image='lab4/Images (comps)/Dell Inspiron One.jpg' WHERE Name='23" Моноблок Dell Inspiron One';

-- SELECT Name, Image FROM Computers;

-- UPDATE Comp_Parts SET Image='lab4/Images (parts)/A30.jpg' WHERE Model='A30';
-- UPDATE Comp_Parts SET Image='lab4/Images (parts)/KM-9939.jpg' WHERE Model='KM-9939';
-- UPDATE Comp_Parts SET Image='lab4/Images (parts)/Z9.jpg' WHERE Model='Z9';
-- UPDATE Comp_Parts SET Image='lab4/Images (parts)/GF-9100B.jpg' WHERE Model='GF-9100B';
-- UPDATE Comp_Parts SET Image='lab4/Images (parts)/MG-134.jpg' WHERE Model='MG-134';
-- UPDATE Comp_Parts SET Image='lab4/Images (parts)/FX-8320.jpg' WHERE Model='FX-8320';
-- UPDATE Comp_Parts SET Image='lab4/Images (parts)/i5-3570K' WHERE Model='i5-3570K';
-- UPDATE Comp_Parts SET Image='lab4/Images (parts)/G465.jpg' WHERE Model='G465';

-- SELECT Model, Image FROM Comp_Parts;