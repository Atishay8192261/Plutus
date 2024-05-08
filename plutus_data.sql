Use plutus;
INSERT INTO Users (user_id, first_name, last_name, date_of_birth, email, mobile) VALUES
(11, 'John', 'Doe', '1980-03-15', 'johndoe@gmail.com', 123456789),
(12, 'Jane', 'Smith', '1992-07-24', 'janesmith@gmail.com', 234567890);

-- Dummy data for Banks
INSERT INTO Banks (bank_id, bank_name) VALUES
(21, 'Global Bank'),
(22, 'Local Credit Union');

-- Dummy data for Card_Types
INSERT INTO Card_Types (card_type_id, bank_id, card_type_name) VALUES
(31, 21, 'Visa Platinum'),
(32, 22, 'MasterCard Gold');

-- Dummy data for Cards
INSERT INTO Cards (card_number, user_id, card_type_id, expiry_date) VALUES
('1234567890123456', 11, 31, '2025-12-31'),
('6543210987654321', 12, 32, '2024-11-30');

-- Dummy data for Product_Categories
INSERT INTO Product_Categories (category_id, category_name) VALUES
(41, 'Electronics'),
(42, 'Clothing');


-- Dummy data for Products
INSERT INTO Products (product_id, product_name, category_id) VALUES
(51, 'Smartphone', 41),
(52, 'Jeans', 42);

-- Dummy data for Offer_Types
INSERT INTO Offer_Types (offer_type_id, offer_type_name) VALUES
(61, 'Discount'),
(62, 'Buy One Get One Free');

-- Dummy data for Offers
INSERT INTO Offers (offer_id, offer_type_id, expiry_date, offer_description) VALUES
(71, 61, '2023-12-31', '10% off on all electronics'),
(72, 62, '2023-06-30', 'Buy 2 jeans, get 1 free');

-- Dummy data for Product_Offers
INSERT INTO Product_Offers (product_id, offer_id) VALUES
(51, 71),
(52, 72);

-- Dummy data for Card_Offers
INSERT INTO Card_Offers (offer_id, card_type_id) VALUES
(71, 31),
(72, 32);

-- Dummy data for Companies
INSERT INTO Companies (company_id, company_name, company_url) VALUES
(81, 'TechGadgets Inc.', 'www.techgadgets.com'),
(82, 'Fashionista Co.', 'www.fashionista.com');

-- Dummy data for Company_Offers
INSERT INTO Company_Offers (offer_id, company_id, offer_description, is_online_offer, is_in_store_offer) VALUES
(71, 81, 'Special discount on gadgets', TRUE, FALSE),
(72, 82, 'Jeans sale', TRUE, TRUE);

-- Dummy data for Stores
INSERT INTO Stores (store_id, store_name, address_line1, address_line2, city, state, zip, company_id) VALUES
(91, 'Gadget World', '123 Tech Rd', 'Suite 100', 'San Jose', 'California', 95112, 81),
(92, 'Fashion Hub', '234 Style St', NULL, 'Dallas', 'Texas', 75019, 82);

-- Dummy data for Notifications
INSERT INTO Notifications (notification_id, offer_id) VALUES
(101, 71),
(102, 72);

-- Dummy data for User_Notifications
INSERT INTO User_Notifications (notification_id, user_id) VALUES
(101, 11),
(102, 12); 
