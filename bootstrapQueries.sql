

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
    best_seller BOOLEAN,
    featured_products BOOLEAN DEFAULT FALSE
);
INSERT INTO products (name, overview, long_description, price, poster, image_local, rating, in_stock, size, best_seller)
VALUES ('Django Framework for Beginners', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 19, 'https://images.unsplash.com/photo-1580894894513-541e068a3e2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=650&q=40', '/assets/images/10001.avif', 5, true, 2, false),
 ('Basics To Advanced In React', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 29, 'https://images.unsplash.com/photo-1633356122544-f134324a6cee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=650&q=40', '/assets/images/10002.avif', 3, true,1 , false),
 ('The Future of Design Systems', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 19,'https://images.unsplash.com/photo-1595617795501-9661aafda72a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=650&q=40', '/assets/images/10003.avif', 5, true, 9, false),
 ('The Complete Guide to Backend Development', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 29, 'https://images.unsplash.com/photo-1633356122544-f134324a6cee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=650&q=40', '/assets/images/10004.avif', 2, true,6 , false),
  ('Build a Blockchain from Scratch in Go', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 19, 'https://images.unsplash.com/photo-1639322537228-f710d846310a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=650&q=40', '/assets/images/10005.avif', 4, true, 5, false),
 ('Frontend Fastlane Plan With Projects', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error unde quisquam magni vel eligendi nam', 29, 'https://images.unsplash.com/photo-1522542550221-31fd19575a2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=650&q=40', '/assets/images/10006.avif', 1, true,4 , false);
 





CREATE TABLE roles(
    role_id SERIAL PRIMARY KEY,
    role VARCHAR(255)
);

CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE,
    user_password VARCHAR(255),
    user_email VARCHAR(100) UNIQUE,
    role_id INT,
    CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES roles(role_id)

);




























