DROP DATABASE if exists cinema;
CREATE DATABASE cinema;
USE cinema;

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    customer_address VARCHAR(50) NOT NULL,
    age SMALLINT NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE film (
    film_id INT AUTO_INCREMENT,
    film_name VARCHAR(100) NOT NULL,
    rating VARCHAR(2) NOT NULL,
    runtime TIME NOT NULL,
    PRIMARY KEY (film_id)
);

CREATE TABLE booking (
    booking_id INT AUTO_INCREMENT,
    fk_customer_id INT,
    fk_film_id INT,
    date_booking DATETIME NOT NULL,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (fk_film_id) REFERENCES film(film_id)    
);