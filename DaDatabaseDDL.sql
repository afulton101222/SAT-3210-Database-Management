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

CREATE TABLE users (
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

CREATE TABLE category (
    category_id int(11),
    category_name varchar(100),
    PRIMARY KEY (category_id)
);

-- Create Orders Table

CREATE TABLE orders (
    order_id int(11),
    order_time datetime,
    total double DEFAULT '0',
    user_id varchar(20),
    PRIMARY KEY (order_id),
    foreign key (user_id) references users (user_id)
        on delete set null
);
-- Create Manufacturer Table

CREATE TABLE manufacturer (
    manufacturer_id int(11),
    manufacturer_name varchar(100),
    contact_name varchar(100),
    email varchar(100),
    phone_number varchar(100),
    PRIMARY KEY (manufacturer_id, phone_number)
);
-- Create Product Table

CREATE TABLE product (
    product_id int(11),
    product_name varchar(100),
    quantity int(11),
    category_id int(11),
    price double,
    product_description text,
    manufacturer_id int(11),
    PRIMARY KEY (product_id),
    foreign key (category_id) references category (Category_id)
        on delete set null,
    foreign key (manufacturer_id) references manufacturer (manufacturer_id)
        on delete set null
);

-- Create Order_Items Table

CREATE TABLE order_Items (
    product_id int(11),
    order_id int(11),
    quantity int(11) DEFAULT '0',
    price double,
    foreign key (product_id) references product (product_id)
        on delete set null,
    foreign key (order_id) references orders (order_id)
        on delete set null
);
