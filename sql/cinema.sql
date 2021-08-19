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
    runtime_mins SMALLINT NOT NULL,
    PRIMARY KEY (film_id)
);

CREATE TABLE foodrink (
    foodrink_id INT AUTO_INCREMENT,
    size_of_drink CHAR(1) NOT NULL,
    size_of_popcorn CHAR(1) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (foodrink_id)
);

CREATE TABLE booking (
    booking_id INT AUTO_INCREMENT,
    fk_customer_id INT,
    fk_film_id INT,
    fk_foodrink_id INT,
    date_booking DATETIME NOT NULL,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (fk_film_id) REFERENCES film(film_id),
    FOREIGN KEY (fk_foodrink_id) REFERENCES foodrink(foodrink_id)    
);