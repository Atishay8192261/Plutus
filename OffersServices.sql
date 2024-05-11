USE PLUTUS;

-- addOffers
-- Check if the offer exists and then insert if it does not
SELECT * FROM Offers WHERE offer_id = 15; -- Replace 1 with the actual offer_id
INSERT INTO Offers (offer_type_id, expiry_date, offer_description) VALUES (1, '2023-12-31', 'Christmas Sale');

-- getOffers
SELECT * FROM Offers;

-- findById (for Integer id)
SELECT * FROM Offers WHERE offer_id = 2;

-- findById (for Offers offer)
SELECT * FROM Offers WHERE offer_id = 2; -- Replace 1 with the offer's ID

-- findByOfferType
SELECT * FROM Offers WHERE offer_type_id = 10;

-- findByExpiryDate
SELECT * FROM Offers WHERE expiry_date = '2024-11-20';

-- updateOffers
-- Check if the offer exists and then update if it does
SELECT * FROM Offers WHERE offer_id = 2; -- Replace 1 with the actual offer_id
UPDATE Offers SET offer_type_id = 2, expiry_date = '2024-01-01', offer_description = 'New Year Special' WHERE offer_id = 2;

-- deleteOffers
-- Check if the offer exists and then delete if it does
SELECT * FROM Offers WHERE offer_id = 2;
DELETE FROM Offers WHERE offer_id = 2;
