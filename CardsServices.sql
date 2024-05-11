USE PLUTUS;

-- createCard
INSERT INTO Cards (card_number, user_id, card_type_id, expiry_date) VALUES
('4598567133443815', 13, 33, '2029-12-31');

-- addCard
-- Check if card exists
SELECT * FROM Cards WHERE card_number = '1234567890123489';
-- If not exists, insert the card
INSERT INTO Cards (card_number, user_id, card_type_id, expiry_date) VALUES
('1234567890123489', 14, 24, '2025-12-31');

-- getAllCardsByUserId
SELECT * FROM Cards WHERE user_id = 12; 

-- getCardByCardNumber
SELECT * FROM Cards WHERE card_number = '1234567890123489'; 

-- getCardByCardTypeId
SELECT * FROM Cards WHERE card_type_id = 32;

-- getCardByExpiryDate
SELECT * FROM Cards WHERE expiry_date = '2029-12-31';

-- getAllCards;
SELECT * FROM Cards;

-- deleteCardByCardNumber
-- Check if the card exists
SELECT * FROM Cards WHERE card_number = '1234567890123489';
-- If exists, delete the card
DELETE FROM Cards WHERE card_number = '1234567890123489';

-- findById (It seems same as cardNumber)
SELECT * FROM Cards WHERE card_number = '1234567890123489'; 

-- deleteCard 
-- Check if the card exists
SELECT * FROM Cards WHERE card_number = '1234567890123489';
-- If exists, delete the card
DELETE FROM Cards WHERE card_number = '1234567890123489';





