CREATE DATABASE immo;

USE immo;

CREATE TABLE categories (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100)
);

CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE adverts (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    price FLOAT(2),
    description TEXT,
    user_id INT NOT NULL,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE categories_join_adverts (
    id_categorie INT NOT NULL,
    id_advert INT NOT NULL,
    CONSTRAINT fk_categorie_id FOREIGN KEY (id_categorie) REFERENCES categories(id),
    CONSTRAINT fk_advert_id FOREIGN KEY (id_advert) REFERENCES adverts(id)
);