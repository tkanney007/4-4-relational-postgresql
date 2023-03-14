CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE items (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DOUBLE(10, 2) NOT NULL,
    description TEXT(1000),
    category_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) 
        REFERENCES categories(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

INSERT INTO categories (name) VALUES ("fruits");
INSERT INTO categories (name) VALUES ("vegetables");

INSERT INTO items (name, price, description, category_id) VALUES ("Banana", 18.75, "A bunch of yellow bananas");
INSERT INTO items (name, price, description, category_id) VALUES ("Strawberry", 70.99, "Fresh strawberries");
INSERT INTO items (name, price, description, category_id) VALUES ("Celery", 5.00, "A sprig of celery");

SELECT * FROM categories;
SELECT name, price FROM items;
SELECT * FROM items WHERE name = "Banana";
SELECT * FROM items WHERE price > 10;

UPDATE items SET category_id = 1 WHERE name = "Banana";
UPDATE items SET category_id = 1 WHERE name = "Strawberry";
UPDATE items SET category_id = 2 WHERE name = "Celery";

DELETE FROM items WHERE name = "Strawberry";
SELECT * FROM items;

SELECT c.name, i.name, i.description 
FROM categories c 
JOIN items i
ON i.category_id = c.id; 