CREATE DATABASE codebook;
//PRODUCTS 
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    overview VARCHAR(255),
    long_description TEXT,
    price MONEY,
    poster VARCHAR(255),
    image_local VARCHAR(255),
    rating INT,
    in_stock BOOLEAN,
    size INT,
    best_seller BOOLEAN
);
INSERT INTO products (name, overview, long_description, price, poster, image_local, rating, in_stock, size, best_seller)
VALUES ('Django Framework for Beginners', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 19, 'https://images.unsplash.com/photo-1580894894513-541e068a3e2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=650&q=40', '/assets/images/10001.avif', 5, true, 2, false),
 ('Basics To Advanced In React', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 29, 'https://images.unsplash.com/photo-1633356122544-f134324a6cee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=650&q=40', '/assets/images/10002.avif', 3, true,1 , false);
 
 //PRODUCTS FEATURED 

ALTER TABLE products 
ADD  featured_products BOOLEAN DEFAULT FALSE ;

SELECT * FROM products WHERE featured_products = TRUE;

//roles
CREATE TABLE roles(
    role_id SERIAL PRIMARY KEY,
    role VARCHAR(255)
);

// USERS
CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE,
    user_password VARCHAR(255),
    user_email VARCHAR(100) UNIQUE,
    role_id INT,
    CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES roles(role_id)

);

