-- Создаем таблицу типов блюд
CREATE TABLE dish_types (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL  -- Название типа блюда 
);

-- Создаем таблицу блюд
CREATE TABLE dishes (
    id SERIAL PRIMARY KEY,
    dish_type_id INTEGER REFERENCES dish_types(id) ON DELETE CASCADE NOT NULL, -- Тип блюда (внешний ключ)
    name VARCHAR(255) NOT NULL, -- Название блюда
    calories INTEGER DEFAULT 0,  -- Калорийность (значение по умолчанию 0)
    price NUMERIC(10, 2) NOT NULL CHECK (price >= 0), -- Цена одной порции
    description TEXT -- Описание технологии приготовления
);

-- Создаем таблицу типов продуктов
CREATE TABLE product_types (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL -- Название типа продукта 
);

-- Создаем таблицу продуктов
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_type_id INTEGER REFERENCES product_types(id) ON DELETE CASCADE NOT NULL, -- Тип продукта (внешний ключ)
    name VARCHAR(255) NOT NULL,  -- Название продукта
    unit VARCHAR(100) NOT NULL   -- Название единицы измерения 
);

-- Создаем таблицу поставщиков
CREATE TABLE suppliers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL, -- Название поставщика
    contact_info VARCHAR(255) -- Контактная информация поставщика
);

-- Создаем таблицу связей поставщиков и продуктов (с ценами)
CREATE TABLE supplies (
    supplier_id INTEGER REFERENCES suppliers(id) ON DELETE CASCADE NOT NULL, -- ID поставщика (внешний ключ)
    product_id INTEGER REFERENCES products(id) ON DELETE CASCADE NOT NULL, -- ID продукта (внешний ключ)
    purchase_price NUMERIC(10, 2) NOT NULL CHECK (purchase_price >= 0), -- Закупочная цена продукта у поставщика
    PRIMARY KEY (supplier_id, product_id) -- Составной ключ
);

-- Создаем таблицу рецептов (связь блюд и продуктов с количеством)
CREATE TABLE recipes (
    dish_id INTEGER REFERENCES dishes(id) ON DELETE CASCADE NOT NULL,  -- ID блюда (внешний ключ)
    product_id INTEGER REFERENCES products(id) ON DELETE RESTRICT NOT NULL, -- ID продукта (внешний ключ)
    quantity INTEGER NOT NULL CHECK (quantity > 0), -- Количество продукта в рецепте
    PRIMARY KEY (dish_id, product_id) -- Составной ключ
);

-- Добавляем типы блюд
INSERT INTO dish_types (name) VALUES ('Салаты'), ('Супы'), ('Горячие блюда'), ('Десерты'), ('Напитки');

-- Добавляем типы продуктов
INSERT INTO product_types (name) VALUES ('Овощи'), ('Фрукты'), ('Мясо'), ('Молочные продукты'), ('Крупы');

-- Добавляем продукты
INSERT INTO products (product_type_id, name, unit) VALUES
(1, 'Помидоры', 'кг'),
(1, 'Огурцы', 'кг'),
(1, 'Лук', 'кг'),
(2, 'Яблоки', 'кг'),
(3, 'Курица', 'кг'),
(4, 'Молоко', 'литр'),
(5, 'Рис', 'кг');


-- Добавляем поставщиков
INSERT INTO suppliers (name, contact_info) VALUES
('Поставщик 1', 'тел. 123-456-789, email: supplier1@example.com'),
('Поставщик 2', 'тел. 987-654-321, email: supplier2@example.com');

-- Добавляем информацию о поставках
INSERT INTO supplies (supplier_id, product_id, purchase_price) VALUES
(1, 1, 2.50),  -- Поставщик 1 поставляет помидоры по цене 2.50 за кг
(1, 2, 1.80),  -- Поставщик 1 поставляет огурцы по цене 1.80 за кг
(2, 1, 2.70),  -- Поставщик 2 поставляет помидоры по цене 2.70 за кг
(2, 5, 5.00);  -- Поставщик 2 поставляет курицу по цене 5.00 за кг

-- Добавляем блюда
INSERT INTO dishes (dish_type_id, name, calories, price, description) VALUES
(1, 'Салат Греческий', 250, 5.50, 'Классический греческий салат с помидорами, огурцами, фетой и оливками'),
(2, 'Куриный суп', 300, 4.00, 'Наваристый куриный суп с лапшой и овощами');

-- Добавляем рецепты
INSERT INTO recipes (dish_id, product_id, quantity) VALUES
(1, 1, 200),  -- Для греческого салата нужно 200 г помидоров
(1, 2, 150),  -- Для греческого салата нужно 150 г огурцов
(2, 5, 300),  -- Для куриного супа нужно 300 г курицы
(2, 3, 100); -- Для куриного супа нужно 100 г лука

-- SELECT * FROM dish_types;
-- SELECT * FROM dishes;
-- SELECT * FROM product_types;
-- SELECT * FROM products;
-- SELECT * FROM recipes;
