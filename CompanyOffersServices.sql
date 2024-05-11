USE PLUTUS;

-- getCompanyOffers
SELECT * FROM Company_Offers;

-- findById
SELECT * FROM Company_Offers WHERE offer_id = 71;

-- findByCompany
SELECT * FROM Company_Offers WHERE company_id = 81;

-- addCompanyOffers
INSERT INTO Company_Offers (offer_id, company_id, offer_description, is_online_offer, is_in_store_offer) VALUES
(73, 83, 'Special discount for customers', FALSE, TRUE);

-- updateCompanyOffer
UPDATE Company_Offers
SET offer_description = 'flat 10% discount on gadgets', is_online_offer = TRUE, is_in_store_offer = FALSE
WHERE offer_id = 71 AND company_id = 81;

-- deleteCompanyOffer
DELETE FROM Company_Offers WHERE offer_id = 73;

-- createCompanyOffer
-- Inserts a new offer first
INSERT INTO Offers (offer_id, offer_type_id, expiry_date, offer_description) VALUES
(74, 64, '2024-12-31', 'New Year Special');

-- Get the last inserted offer_id
SET @last_offer_id = LAST_INSERT_ID();

-- Insert a new company offer
INSERT INTO Company_Offers (offer_id, company_id, offer_description, is_online_offer, is_in_store_offer) VALUES
(@last_offer_id, 84, 'New Year Special at MACYS', TRUE, TRUE);


