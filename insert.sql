INSERT INTO Users (user_id, email_id, password, first_name, last_name, phone, Role) VALUES
('11111328', 'zcheimer@mtu.edu', 'P@ssw0rd', 'Zach', 'Heimer', 507-884-7221, 'Employee');
DROP User IF EXISTS '11111328'@'localhost';
CREATE User '11111328'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT 'Employee' TO '11111328'@'localhost';
INSERT INTO Users (user_id, email_id, password, first_name, last_name, phone, Role) VALUES
('11111329', 'zcheimer1@mtu.edu', 'P@ssw0rd', 'Zach1', 'Heimer', 507-884-7221, 'Customer');
DROP User IF EXISTS '11111329'@'localhost';
CREATE User '11111329'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT 'Customer' TO '11111329'@'localhost';
INSERT INTO Users (user_id, email_id, password, first_name, last_name, phone, Role) VALUES
('11111330', 'zcheimer2@mtu.edu', 'P@ssw0rd', 'Zach2', 'Heimer', 507-884-7221, 'Customer');
DROP User IF EXISTS '11111330'@'localhost';
CREATE User '11111330'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT 'Customer' TO '11111330'@'localhost';
INSERT INTO Users (user_id, email_id, password, first_name, last_name, phone, Role) VALUES
('11111331', 'zcheimer3@mtu.edu', 'P@ssw0rd', 'Zach3', 'Heimer', 507-884-7221, 'Customer');
DROP User IF EXISTS '11111331'@'localhost';
CREATE User '11111331'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT 'Customer' TO '11111331'@'localhost';
INSERT INTO Users (user_id, email_id, password, first_name, last_name, phone, Role) VALUES
('11111332', 'zcheimer4@mtu.edu', 'P@ssw0rd', 'Zach4', 'Heimer', 507-884-7221, 'Customer');
DROP User IF EXISTS '11111332'@'localhost';
CREATE User '11111332'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT 'Customer' TO '11111332'@'localhost';
INSERT INTO Users (user_id, email_id, password, first_name, last_name, phone, Role) VALUES
('11111333', 'zcheimer5@mtu.edu', 'P@ssw0rd', 'Zach5', 'Heimer', 507-884-7221, 'Customer');
DROP User IF EXISTS '11111333'@'localhost';
CREATE User '11111333'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT 'Customer' TO '11111333'@'localhost';



INSERT INTO Category VALUES (1, 'Fruit');
INSERT INTO Category VALUES (2, 'Vegetable');
INSERT INTO Category VALUES (3, 'Meat');
INSERT INTO Category VALUES (4, 'Grain');
INSERT INTO Category VALUES (5, 'Dairy');
INSERT INTO Category VALUES (6, 'Frozen');
INSERT INTO Category VALUES (7, 'Beverage');



INSERT INTO Orders VALUES (1, '2022-11-12 19:28:00', 9.38, 11111328);
INSERT INTO Orders VALUES (2, '2022-11-12 19:28:00', 9.38, 11111329);
INSERT INTO Orders VALUES (3, '2022-11-12 19:28:00', 9.38, 11111330);
INSERT INTO Orders VALUES (4, '2022-11-12 19:28:00', 9.38, 11111331);
INSERT INTO Orders VALUES (5, '2022-11-12 19:28:00', 9.38, 11111332);
INSERT INTO Orders VALUES (6, '2022-11-12 19:28:00', 9.38, 11111333);
INSERT INTO Orders VALUES (7, '2022-11-12 19:28:00', 9.38, 11111331);



INSERT INTO Manufacturer VALUES (1, 'Fruit Co.', 'Samantha Jones', 'samantha.jones@fruitco.com', '555-555-1232');
INSERT INTO Manufacturer VALUES (2, 'Veggie Co.', 'David Smith', 'david.smith@veggieco.com', '555-555-1233');
INSERT INTO Manufacturer VALUES (3, 'Berry Co.', 'Emily Brown', 'emily.brown@berryco.com', '555-555-1234');
INSERT INTO Manufacturer VALUES (4, 'Root Co.', 'Michael Lee', 'michael.lee@rootco.com', '555-555-1235');
INSERT INTO Manufacturer VALUES (5, 'Cruciferous Co.', 'Sarah Wilson', 'sarah.wilson@cruciferousco.com', '555-555-1236');
INSERT INTO Manufacturer VALUES (7, 'Prestine Farms', 'Alex Prestine', 'alex@prestinefarms.net', '555-555-9000');
INSERT INTO Manufacturer VALUES (6, 'Meat Co.', 'James Taylor', 'james.taylor@meatco.com', '555-555-1237');
INSERT INTO Manufacturer VALUES (8, 'Seafood Co.', 'Robert Jones', 'robert.jones@seafoodco.com', '555-555-1239');
INSERT INTO Manufacturer VALUES (9, 'Grain Co.', 'Samantha Johnson', 'samantha.johnson@grainco.com', '555-555-1240');
INSERT INTO Manufacturer VALUES (10, 'Bakery Co.', 'Emily Brown', 'emily.brown@bakeryco.com', '555-545-1243');
INSERT INTO Manufacturer VALUES (11, 'Frozen Goods Co.', 'Deb Brown', 'deb.brown@frozengoods.com', '555-645-1243');
INSERT INTO Manufacturer VALUES (12, 'Pepsi Co.', 'Wallace Southerland III', 'WallaceIII@PepsiCo.com', '555-649-1243');



INSERT INTO Product VALUES (1, 1, 1, 'Apple', 0.99, 'Red Delicious apple', 25);
INSERT INTO Product VALUES (2, 1, 1, 'Banana', 0.59, 'Yellow Cavendish banana', 35);
INSERT INTO Product VALUES (3, 1, 2, 'Orange', 0.79, 'Navel orange', 15);
INSERT INTO Product VALUES (4, 1, 2, 'Lemon', 0.29, 'Sour lemon', 56);
INSERT INTO Product VALUES (5, 1, 3, 'Strawberry', 2.99, 'Sweet strawberries', 56);
INSERT INTO Product VALUES (6, 1, 3, 'Raspberry', 3.49, 'Tart raspberries', 22);
INSERT INTO Product VALUES (7, 2, 4, 'Carrot', 0.99, 'Orange carrot', 10);
INSERT INTO Product VALUES (8, 2, 4, 'Broccoli', 1.49, 'Green broccoli', 3);
INSERT INTO Product VALUES (9, 2, 5, 'Cauliflower', 1.99, 'White cauliflower', 53);
INSERT INTO Product VALUES (10, 2, 5, 'Brussels sprouts', 2.49, 'Small Brussels sprouts', 6);
INSERT INTO Product VALUES (11, 3, 6, 'Chicken breast', 4.99, 'Boneless chicken breast', 73);
INSERT INTO Product VALUES (12, 3, 6, 'Ground beef', 3.99, '85% lean ground beef', 53);
INSERT INTO Product VALUES (13, 3, 7, 'Pork chops', 5.99, 'Boneless pork chops', 44);
INSERT INTO Product VALUES (14, 3, 7, 'Bacon', 4.99, 'Smoky bacon slices', 22);
INSERT INTO Product VALUES (15, 3, 8, 'Salmon fillet', 6.99, 'Wild-caught salmon fillet', 43);
INSERT INTO Product VALUES (16, 3, 8, 'Tilapia fillet', 4.99, 'Farm-raised tilapia fillet', 12);
INSERT INTO Product VALUES (17, 4, 9, 'Pasta', 1.99, 'Spaghetti pasta', 23);
INSERT INTO Product VALUES (18, 4, 9, 'Rice', 1.49, 'White jasmine rice', 19);
INSERT INTO Product VALUES (19, 4, 10, 'Bread', 2.49, 'Sliced white bread', 43);
INSERT INTO Product VALUES (20, 4, 10, 'Tortillas', 1.99, 'Flour tortillas', 27);
INSERT INTO Product VALUES (21, 5, 7, 'Milk', 2.99, 'Whole milk', 23);
INSERT INTO Product VALUES (22, 5, 7, 'Eggs', 2.49, 'Large eggs', 43);
INSERT INTO Product VALUES (23, 5, 7, 'Butter', 3.49, 'Unsalted butter', 32);
INSERT INTO Product VALUES (24, 5, 7, 'Cheese', 4.99, 'Shredded cheddar cheese', 42);
INSERT INTO Product VALUES (25, 6, 7, 'Yogurt', 1.79, 'Plain yogurt', 53);
INSERT INTO Product VALUES (26, 6, 7, 'Cottage cheese', 2.49, 'Low-fat cottage cheese', 66);
INSERT INTO Product VALUES (27, 6, 7, 'Ice cream', 3.99, 'Vanilla ice cream', 123);
INSERT INTO Product VALUES (28, 6, 11, 'Sorbet', 2.99, 'Lemon sorbet', 42);
INSERT INTO Product VALUES (29, 7, 12, 'Soda', 1.49, 'Coca-Cola', 21);
INSERT INTO Product VALUES (30, 7, 12, 'Juice', 2.99, 'Orange juice', 42);



INSERT INTO Order_Items VALUES(1, 1, 5, 4);
INSERT INTO Order_Items VALUES(3, 1, 3, 10);
INSERT INTO order_items VALUES(2, 1, 50, 4);
INSERT INTO order_items VALUES(29, 1, 50, 4);
INSERT INTO Order_Items VALUES(1, 2, 5, 4);
INSERT INTO Order_Items VALUES(3, 2, 3, 10);
INSERT INTO order_items VALUES(27, 2, 50, 4);
INSERT INTO Order_Items VALUES(29, 2, 5, 4);
INSERT INTO Order_Items VALUES(3, 3, 3, 10);
INSERT INTO order_items VALUES(29, 3, 50, 4);
INSERT INTO Order_Items VALUES(1, 3, 5, 4);
INSERT INTO Order_Items VALUES(3, 3, 3, 10);
INSERT INTO order_items VALUES(27, 3, 50, 4);
INSERT INTO Order_Items VALUES(1, 4, 5, 4);
INSERT INTO Order_Items VALUES(3, 4, 3, 10);
INSERT INTO order_items VALUES(27, 5, 50, 4);
INSERT INTO Order_Items VALUES(7, 5, 5, 4);
INSERT INTO Order_Items VALUES(4, 6, 3, 10);
INSERT INTO order_items VALUES(29, 6, 50, 4);
INSERT INTO Order_Items VALUES(1, 1, 5, 4);
INSERT INTO Order_Items VALUES(2, 1, 3, 10);
INSERT INTO order_items VALUES(3, 1, 50, 4);
INSERT INTO order_items VALUES(4, 1, 50, 4);
INSERT INTO Order_Items VALUES(5, 2, 5, 4);
INSERT INTO Order_Items VALUES(6, 2, 3, 10);
INSERT INTO order_items VALUES(7, 2, 50, 4);
INSERT INTO Order_Items VALUES(8, 2, 5, 4);
INSERT INTO Order_Items VALUES(9, 3, 3, 10);
INSERT INTO order_items VALUES(10, 3, 50, 4);
INSERT INTO Order_Items VALUES(11, 3, 5, 4);
INSERT INTO Order_Items VALUES(12, 3, 3, 10);
INSERT INTO order_items VALUES(13, 3, 50, 4);
INSERT INTO Order_Items VALUES(14, 4, 5, 4);
INSERT INTO Order_Items VALUES(15, 4, 3, 10);
INSERT INTO order_items VALUES(16, 5, 50, 4);
INSERT INTO Order_Items VALUES(17, 5, 5, 4);
INSERT INTO Order_Items VALUES(18, 6, 3, 10);
INSERT INTO order_items VALUES(29, 6, 50, 4);
INSERT INTO order_items VALUES(29, 7, 50, 4);
INSERT INTO order_items VALUES(29, 4, 50, 4);