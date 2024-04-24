drop database plutus;
Create database if not exists plutus;
Use plutus;

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    dob DATE,
    email VARCHAR(255) UNIQUE
);

CREATE TABLE Bank (
    bank_id INT AUTO_INCREMENT PRIMARY KEY,
    bank_name VARCHAR(255)
);

CREATE TABLE Card_Type (
    card_type_id INT AUTO_INCREMENT PRIMARY KEY,
    bank_id INT,
    card_type_name VARCHAR(255),
    FOREIGN KEY (bank_id) REFERENCES Bank(bank_id)
);

CREATE TABLE Card (
    card_number VARCHAR(255) PRIMARY KEY,
    user_id INT,
    card_type_id INT,
    expiry_date DATE,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (card_type_id) REFERENCES Card_Type(card_type_id)
);

CREATE TABLE Product_Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255)
);

CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Product_Category(category_id)
);

CREATE TABLE Offer_Type (
    offer_type_id INT AUTO_INCREMENT PRIMARY KEY,
    offer_type_name VARCHAR(255)
);

CREATE TABLE Offer (
    offer_id INT AUTO_INCREMENT PRIMARY KEY,
    offer_type_id INT,
    FOREIGN KEY (offer_type_id) REFERENCES Offer_Type(offer_type_id)
);

CREATE TABLE Product_Offer (
    product_id INT,
    offer_id INT,
    PRIMARY KEY (product_id, offer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (offer_id) REFERENCES Offer(offer_id)
);


CREATE TABLE Card_Offer (
    offer_id INT,
    card_type_id INT,
    offer_description VARCHAR(255),
    PRIMARY KEY (offer_id, card_type_id),
    FOREIGN KEY (offer_id) REFERENCES Offer(offer_id),
    FOREIGN KEY (card_type_id) REFERENCES Card_Type(card_type_id)
);

CREATE TABLE Company (
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(255),
    company_url VARCHAR(255)
);

CREATE TABLE Company_Offer (
    offer_id INT,
    offer_description VARCHAR(255),
    company_id INT,
    is_online_offer BOOLEAN,
    is_in_store_offer BOOLEAN,
    PRIMARY KEY (offer_id, company_id),
    FOREIGN KEY (offer_id) REFERENCES Offer(offer_id),
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

CREATE TABLE Stores (
    store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(255),
    address_line1 VARCHAR(255),
    address_line2 VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    pin_code VARCHAR(255),
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

CREATE TABLE Notifications (
    notification_id INT AUTO_INCREMENT PRIMARY KEY,
    offer_id INT,
    FOREIGN KEY (offer_id) REFERENCES Offer(offer_id)
);
