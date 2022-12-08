-- Remove Existing Database For Testing Puropses
DROP DATABASE IF EXISTS EconoFoods;
-- Create Database EconoFoods
CREATE DATABASE EconoFoods;
-- Create EconoFoods Admin User On the Database
DROP User IF EXISTS 'EFadmin'@'localhost'; 
CREATE User 'EFadmin'@'localhost' IDENTIFIED BY 'EFadminPass';
GRANT ALL ON EconoFoods.* TO 'EFadmin'@'localhost';
FLUSH PRIVILEGES;
-- Use the newly created Database 
USE EconoFoods;

-- --------------------------------------------------------------------------------------------------------------------------------

-- Create Users Table

CREATE TABLE Users (
    user_id varchar(20),
    email_id varchar(100),
    password varchar(200),
    first_name varchar(50),
    last_name varchar(50),
    phone varchar(20),
    Role varchar(20),
    PRIMARY KEY (user_id, phone)
);

-- Create Category Table

CREATE TABLE Category (
    Category_id int(11),
    Category_Name varchar(100),
    PRIMARY KEY (Category_id)
);

-- Create Orders Table

CREATE TABLE Orders (
    Order_id int(11),
    Order_time datetime,
    Total double DEFAULT '0',
    user_id varchar(20),
    PRIMARY KEY (Order_id),
    foreign key (user_id) references Users (user_id)
        on delete set null
);
-- Create Manufacturer Table

CREATE TABLE Manufacturer (
    Manufacturer_id int(11),
    Manufacturer_Name varchar(100),
    contact_Name varchar(100),
    email varchar(100),
    phone_number varchar(100),
    PRIMARY KEY (Manufacturer_id, phone_number)
);
-- Create Product Table

CREATE TABLE Product (
    Product_id int(11),
    Product_name varchar(100),
    Quantity int(11),
    Category_id int(11),
    Price double,
    Product_description text,
    Manufacturer_id int(11),
    PRIMARY KEY (Product_id),
    foreign key (Category_id) references Category (Category_id)
        on delete set null,
    foreign key (Manufacturer_id) references Manufacturer (Manufacturer_id)
        on delete set null
);

-- Create Order_Items Table

CREATE TABLE Order_Items (
    Product_id int(11),
    Order_id int(11),
    Quantity int(11) DEFAULT '0',
    price double,
    foreign key (Product_id) references Product (Product_id)
        on delete set null,
    foreign key (Order_id) references Orders (Order_id)
        on delete set null
);
