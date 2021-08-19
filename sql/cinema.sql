DROP DATABASE if exists cinema
CREATE DATABASE cinema
USE cinema

CREATE TABLE customer(
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    customer_address VARCHAR(50) NOT NULL,
    customer_age SMALLINT NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE booking(
    booking_id INT AUTO_INCREMENT,
    fk_customer_id INT
    date_booking DATETIME NOT NULL,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id)    
);