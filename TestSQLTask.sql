CREATE TABLE Products (
Id INT PRIMARY KEY,
"Name" TEXT
);

CREATE TABLE Categories (
Id INT PRIMARY KEY,
"Name" TEXT
);

CREATE TABLE ProductsCategories (
ProductId INT FOREIGN KEY REFERENCES Products(Id),
CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
PRIMARY KEY (ProductId, CategoryId)
);


INSERT INTO Products
VALUES
(1, 'Bread'),
(2, 'Loaf'),
(3, 'Chicken'),
(4, 'Tomato');


INSERT INTO Categories
VALUES
(1, 'Meat'),
(2, 'Vegetables'),
(3, 'Bakery');



INSERT INTO ProductsCategories
VALUES
(1, 3),
(2, 3),
(3, 1),
(4, 2);

SELECT Products."Name", Categories."Name"
FROM Products
LEFT JOIN ProductsCategories
ON Products.Id = ProductsCategories.ProductId
LEFT JOIN Categories Categories
ON ProductsCategories.CategoryId = Categories.Id;
