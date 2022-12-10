-- Remove Existing Database For Testing Puropses
DROP DATABASE IF EXISTS EconoFoods;
-- Create EconoFoods
CREATE DATABASE EconoFoods;
-- Create Roles
DROP Role IF EXISTS 'Employee';
DROP Role IF EXISTS 'Customer';
DROP Role IF EXISTS 'Anonymous';
-- Use da Database 
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
    order_id int(11) DEFAULT 0,
    order_time datetime,
    total double check (total > 0),
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
    category_id int(11),
    manufacturer_id int(11),
    product_name varchar(100),
    price double check (price > 0),
    product_description text,
    quantity int(11) check (quantity > 0),
    PRIMARY KEY (product_id),
    foreign key (category_id) references category (category_id)
        on delete set null,
    foreign key (manufacturer_id) references manufacturer (manufacturer_id)
        on delete set null
);

-- Create Order_Items Table

CREATE TABLE order_items (
    product_id int(11),
    order_id int(11),
    order_quantity int(11) check (order_quantity > 0),
    price double,
    foreign key (product_id) references product (product_id)
        on delete set null,
    foreign key (order_id) references orders (order_id)
        on delete set null
);

-- --------------------------------------------------------------------------------------------------------------------------------

-- Role Creation

CREATE Role 'Employee', 'Customer', 'Anonymous';
GRANT ALL ON EconoFoods.* TO 'Employee';
GRANT SELECT ON EconoFoods.Product TO 'Customer';
GRANT SELECT ON EconoFoods.Product TO 'Anonymous';
GRANT INSERT, UPDATE, ALTER ON EconoFoods.Orders TO 'Customer';
