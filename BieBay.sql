#Be ready to load a pre-existing biebay_database...
DROP DATABASE IF EXISTS biebay_database;
#...otherwise, create a new one.
CREATE DATABASE biebay_database;
#Prepare database to be executed by the Terminal using USE DATABASE
USE biebay_database;
#Database needs data, so CREATE a TABLE.
CREATE TABLE products (
#Now start adding columns
`item_id` INT(1) AUTO_INCREMENT NOT NULL,#AUTO_INCREMENT will assign unique ID number to every new item entered.
`product_name` VARCHAR(100) NULL,#Number in parentheses for VARCHAR determines max characters in entered value.
`department_name` VARCHAR(50) NULL,
`price_in_us_dollars` INTEGER NULL,
`stock_quantity` INTEGER NULL,
`autographed` TINYINT(1) NULL,#Seting a TINYINT between 0 and 1 will allow a boolean "true" or "false" statment
PRIMARY KEY (`item_id`)#Primary key allegedly updates 'item_id' on my behalf for every new item entered. Also, PRIMARY KEY has no NULL value.
);
#Then add values to those columns.
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(1, "perfume", "smelly things", 50, 10, 0);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(2, "deluxe album", "noisy things", 80, 40, 1);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(3, "baseball cap", "itchy things", 20, 100, 0);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(4, "baseball", "lopsided things", 100, 10, 1);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(5, "cardboard cutout", "flat things", 25, 150, 1);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(6, "tattoo", "sharp and pointy things", 80, 40, 1);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(7, "concert vhs tape", "nonexistent things", 100, 1000, 1);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(8, "star bought and named by Justin Bieber", "out-of-reach things", 1, 15000, 1);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(9, "action figure", "plastic things", 15, 75, 0);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity, autographed)
VALUES(10, "makeup", "runny things", 200, 200, 0);
	