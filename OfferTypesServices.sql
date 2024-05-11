USE PLUTUS;


-- getOfferTypes
SELECT * FROM Offer_Types;

-- findById
SELECT * FROM Offer_Types WHERE offer_type_id = 12;

-- addOfferType
-- First, check if the offer type exists
SELECT * FROM Offer_Types WHERE offer_type_name = 'COUPON';
-- If not exists, insert the new offer type
INSERT INTO Offer_Types (offer_type_name) VALUES ('COUPON');

-- updateOfferType
-- First, verify the offer type exists
SELECT * FROM Offer_Types WHERE offer_type_id = 100; 
-- If exists, update the offer type
UPDATE Offer_Types SET offer_type_name = 'Flash Sale' WHERE offer_type_id = 100; 

-- deleteOfferType
-- Check if the offer type exists
SELECT * FROM Offer_Types WHERE offer_type_id = 100;
-- If exists, delete the offer type
DELETE FROM Offer_Types WHERE offer_type_id = 100; 
