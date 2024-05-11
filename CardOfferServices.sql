USE PLUTUS;

-- getCardOffers
SELECT * FROM Card_Offers;

-- findById
SELECT * FROM Card_Offers CO
JOIN Offers O ON CO.offer_id = O.offer_id
WHERE O.offer_id = 71; 

-- createCardOffer
-- Insert a new offer
INSERT INTO Offers (offer_id, offer_type_id, expiry_date, offer_description) VALUES
(73, 63, '2024-12-31', 'Coupon For Next Purchase'); 

-- Get the last inserted offer_id
SET @last_offer_id = LAST_INSERT_ID();

-- Insert a new card offer relation
INSERT INTO Card_Offers (offer_id, card_type_id) VALUES
(@last_offer_id, 31); 

-- addCardOffers
-- Assuming cardOffer contains offer_id and card_type_id
INSERT INTO Card_Offers (offer_id, card_type_id) VALUES
(offerId, cardTypeId);

-- Update the offer details first
UPDATE Offers SET offer_description = 'Free Accessory worth 10 dollars on your first purchase', expiry_date = '2025-01-01' -- etc.
WHERE offer_id = 71; 

-- Assuming there's a need to update the Card_Offers entry
UPDATE Card_Offers SET card_type_id = 33  
WHERE offer_id = 71;

-- deleteCardOffer
-- Delete the card offer relationship first
DELETE FROM Card_Offers WHERE offer_id = 71;
-- Then delete the offer
DELETE FROM Offers WHERE offer_id = 71;





