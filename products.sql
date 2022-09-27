--создание таблиц

CREATE TABLE Products (
    id integer CONSTRAINT firstkey PRIMARY KEY,
    name varchar(100) NOT NULL
);

CREATE TABLE Categories (
    id integer CONSTRAINT firstkey PRIMARY KEY,
    name varchar(100) NOT NULL
);

CREATE TABLE ProductsCategories (
	productId integer NOT NULL,
	categoryId integer NOT NULL
);

--наполнение таблиц

INSERT INTO Products (id, name)
VALUES
(1, 'Watch 8'),
(2, 'iPhone SE'),
(3, 'Galaxy S22'),
(4, 'Galaxy Watch'),
(5, 'Poco X3'),
(6, 'Without categoty');

INSERT INTO Categories (id, name)
VALUES
(1, 'Watches'),
(2, 'Phones'),
(3, 'BigDisplay');
	
INSERT INTO ProductsCategories (productId, categoryId)
VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 1),
(5, 2),
(2, 2),
(3, 1),
(5, 3);

--вывод

SELECT p.name, c.name
FROM Products p
LEFT JOIN ProductsCategories pc ON p.id = pc.productId
LEFT JOIN Categories c ON pc.categoryId = c.id;