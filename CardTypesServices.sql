Use Plutus;

-- getAllCardTypes
SELECT * FROM Card_Types;

-- getCardTypeById
SELECT * FROM Card_Types WHERE card_type_id = 31; 

-- getCardTypeByBankId
SELECT * FROM Card_Types WHERE bank_id = 22;

-- getCardTypeByCardTypeName
SELECT * FROM Card_Types WHERE card_type_name = 'Visa Platinum';

-- deleteCardTypeById
DELETE FROM Card_Types WHERE card_type_id = 32; 

-- deleteAllCardTypes
DELETE FROM Card_Types;

-- findById
SELECT * FROM Card_Types WHERE card_type_id = 32;

-- addCardTypes
INSERT INTO Card_Types (card_type_id, card_type_name, bank_id) VALUES (33, 'American Express Gold', 23); 

-- createCardType
-- Assuming bankId is known and valid
INSERT INTO Card_Types (card_type_id, card_type_name, bank_id) VALUES (34, 'American Express Silver', 24);

-- updateCardTypes
UPDATE Card_Types SET card_type_name = 'American Express Silver', bank_id = 24 WHERE card_type_id = 34; 


