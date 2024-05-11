USE PLUTUS;

-- addBank
-- Checks if the bank exists
SELECT * FROM Banks WHERE bank_name = 'newBankName';
-- If not exists, insert the new bank
INSERT INTO Banks (bank_name) VALUES ('newBankName');

-- getAllBanks
SELECT * FROM Banks;

-- getBankById
SELECT * FROM Banks WHERE bank_id = 21;  

-- getBankByName
SELECT * FROM Banks WHERE bank_name = 'Global Bank';

-- getCardTypesByBankId
SELECT ct.* FROM Card_Types ct
JOIN Banks b ON ct.bank_id = b.bank_id
WHERE b.bank_id = 22;  

-- deleteBankById
-- Check if the bank exists
SELECT * FROM Banks WHERE bank_id = 21;
-- If exists, delete the bank
DELETE FROM Banks WHERE bank_id = 21;

-- updateBank
-- Check if the bank exists
SELECT * FROM Banks WHERE bank_id = 22;
-- If exists, update the bank
UPDATE Banks SET bank_name = 'Chase Bank' WHERE bank_id = 22;
