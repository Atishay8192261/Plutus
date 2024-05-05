Create database if not exists plutus;
Use plutus;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    mobile INT NOT NULL
);

CREATE TABLE Banks (
    bank_id INT AUTO_INCREMENT PRIMARY KEY,
    bank_name VARCHAR(255) NOT NULL
);

CREATE TABLE Card_Types (
    card_type_id INT AUTO_INCREMENT PRIMARY KEY,
    bank_id INT,
    card_type_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (bank_id) REFERENCES Banks(bank_id)
);

CREATE TABLE Cards (
    card_number VARCHAR(16) PRIMARY KEY,
    user_id INT,
    card_type_id INT,
    expiry_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (card_type_id) REFERENCES Card_Types(card_type_id)
);

CREATE TABLE Product_Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Product_Categories(category_id)
);

CREATE TABLE Offer_Types (
    offer_type_id INT AUTO_INCREMENT PRIMARY KEY,
    offer_type_name VARCHAR(255) NOT NULL
);

CREATE TABLE Offers (
    offer_id INT AUTO_INCREMENT PRIMARY KEY,
    offer_type_id INT,
    expiry_date DATE,
    offer_description VARCHAR(255) NOT NULL,
    FOREIGN KEY (offer_type_id) REFERENCES Offer_Types(offer_type_id)
);

CREATE TABLE Product_Offers (
    product_id INT,
    offer_id INT,
    PRIMARY KEY (product_id, offer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (offer_id) REFERENCES Offers(offer_id)
);


CREATE TABLE Card_Offers (
    offer_id INT,
    card_type_id INT,
    PRIMARY KEY (offer_id, card_type_id),
    FOREIGN KEY (offer_id) REFERENCES Offers(offer_id),
    FOREIGN KEY (card_type_id) REFERENCES Card_Types(card_type_id)
);

CREATE TABLE Companies (
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    company_url VARCHAR(255)
);

CREATE TABLE Company_Offers (
    offer_id INT,
    company_id INT,
    offer_description VARCHAR(255) NOT NULL,
    is_online_offer BOOLEAN NOT NULL,
    is_in_store_offer BOOLEAN NOT NULL,
    PRIMARY KEY (offer_id, company_id),
    FOREIGN KEY (offer_id) REFERENCES Offers(offer_id),
    FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);

CREATE TABLE Stores (
    store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(255) NOT NULL,
    address_line1 VARCHAR(255) NOT NULL,
    address_line2 VARCHAR(255),
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    zip INT NOT NULL,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);

CREATE TABLE Notifications (
    notification_id INT AUTO_INCREMENT PRIMARY KEY,
    offer_id INT,
    FOREIGN KEY (offer_id) REFERENCES Offers(offer_id)
);

CREATE TABLE User_Notifications (
    notification_id INT,
    user_id INT,
    PRIMARY KEY (notification_id, user_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (notification_id) REFERENCES Notifications(notification_id)
);
