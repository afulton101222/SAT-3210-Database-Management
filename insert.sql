INSERT INTO Users (user_id, email_id, password, first_name, last_name, phone, Role) VALUES
('zcheimer', 'zcheimer@mtu.edu', 'P@ssw0rd', 'Zach', 'Heimer', 507-884-7221, 'Employee');

INSERT INTO Category VALUES (1, 'Fruit');
INSERT INTO Category VALUES (2, 'Vegetable');
INSERT INTO Category VALUES (3, 'Meat');
INSERT INTO Category VALUES (4, 'Grain');
INSERT INTO Category VALUES (5, 'Dairy');
INSERT INTO Category VALUES (6, 'Frozen');
INSERT INTO Category VALUES (7, 'Beverage');

;

INSERT INTO Orders VALUES (1, '2022-11-12 19:28:00', 9.38, 11111328);


INSERT INTO Manufacturer VALUES (1, 'Fruit Co.', 'Samantha Jones', 'samantha.jones@fruitco.com', '555-555-1232');
INSERT INTO Manufacturer VALUES (2, 'Veggie Co.', 'David Smith', 'david.smith@veggieco.com', '555-555-1233');
INSERT INTO Manufacturer VALUES (3, 'Berry Co.', 'Emily Brown', 'emily.brown@berryco.com', '555-555-1234');
INSERT INTO Manufacturer VALUES (4, 'Root Co.', 'Michael Lee', 'michael.lee@rootco.com', '555-555-1235');
INSERT INTO Manufacturer VALUES (5, 'Cruciferous Co.', 'Sarah Wilson', 'sarah.wilson@cruciferousco.com', '555-555-1236');
INSERT INTO Manufacturer VALUES (6, 'Meat Co.', 'James Taylor', 'james.taylor@meatco.com', '555-555-1237');
INSERT INTO Manufacturer VALUES     (8, 'Seafood Co.', 'Robert Jones', 'robert.jones@seafoodco.com', '555-555-1239');
INSERT INTO Manufacturer VALUES (9, 'Grain Co.', 'Samantha Johnson', 'samantha.johnson@grainco.com', '555-555-1240');
INSERT INTO Manufacturer VALUES (10, 'Bakery Co.', 'Emily Brown', 'emily.brown@bakeryco.com', '555-555-1243');


INSERT INTO Product (Product_id, Category_id, Manufacturer_id, Product_name, Price, Product_description, Quantity) VALUES
    (1, 1, 1, 'Apple', 0.99, 'Red Delicious apple', 25),
    (2, 1, 1, 'Banana', 0.59, 'Yellow Cavendish banana', 35),
    (3, 1, 2, 'Orange', 0.79, 'Navel orange', 15),
    (4, 1, 2, 'Lemon', 0.29, 'Sour lemon', 56),
    (5, 1, 3, 'Strawberry', 2.99, 'Sweet strawberries', 56),
    (6, 1, 3, 'Raspberry', 3.49, 'Tart raspberries', 22),
    (7, 2, 4, 'Carrot', 0.99, 'Orange carrot', 10),
    (8, 2, 4, 'Broccoli', 1.49, 'Green broccoli', 3),
    (9, 2, 5, 'Cauliflower', 1.99, 'White cauliflower', 53),
    (10, 2, 5, 'Brussels sprouts', 2.49, 'Small Brussels sprouts', 6),
    (11, 3, 6, 'Chicken breast', 4.99, 'Boneless chicken breast', 73),
    (12, 3, 6, 'Ground beef', 3.99, '85% lean ground beef', 53),
    (13, 3, 7, 'Pork chops', 5.99, 'Boneless pork chops', 44),
    (14, 3, 7, 'Bacon', 4.99, 'Smoky bacon slices', 22),
    (15, 3, 8, 'Salmon fillet', 6.99, 'Wild-caught salmon fillet', 43),
    (16, 3, 8, 'Tilapia fillet', 4.99, 'Farm-raised tilapia fillet', 12),
    (17, 4, 9, 'Pasta', 1.99, 'Spaghetti pasta', 23),
    (18, 4, 9, 'Rice', 1.49, 'White jasmine rice', 19),
    (19, 4, 10, 'Bread', 2.49, 'Sliced white bread', 43),
    (20, 4, 10, 'Tortillas', 1.99, 'Flour tortillas', 27),
    (21, 5, 11, 'Milk', 2.99, 'Whole milk', 23),
    (22, 5, 11, 'Eggs', 2.49, 'Large eggs', 43),
    (23, 5, 12, 'Butter', 3.49, 'Unsalted butter', 32),
    (24, 5, 12, 'Cheese', 4.99, 'Shredded cheddar cheese', 42),
    (25, 6, 13, 'Yogurt', 1.79, 'Plain yogurt', 53),
    (26, 6, 13, 'Cottage cheese', 2.49, 'Low-fat cottage cheese', 66),
    (27, 6, 14, 'Ice cream', 3.99, 'Vanilla ice cream', 123),
    (28, 6, 14, 'Sorbet', 2.99, 'Lemon sorbet', 42),
    (29, 7, 15, 'Soda', 1.49, 'Coca-Cola', 21),
    (30, 7, 15, 'Juice', 2.99, 'Orange juice', 42)
;


INSERT INTO Order_Items (Product_id, Order_id, Quantity, price) VALUES
(1, 1, 5, 4),
(3, 1, 3, 10);