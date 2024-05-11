USE PLUTUS;

-- getCompanies
SELECT * FROM Companies;

-- findById
SELECT * FROM Companies WHERE company_id = 82;

-- findById (company)
SELECT * FROM Companies WHERE company_name = 'Fashionista Co.';

-- addCompany
-- Checks if a company with similar name exists
SELECT * FROM Companies WHERE LOWER(company_name) LIKE LOWER('%Fashionista%'); 
-- If no result, insert the new company
INSERT INTO Companies (company_id, company_name, company_url) VALUES (84, 'Basils Co.', 'www.basilsco.com');

-- updateCompany
-- First, check if the company exists and name does not conflict
SELECT * FROM Companies WHERE company_id = 84 AND LOWER(company_name) NOT LIKE LOWER('Adams Co.'); 
-- If valid, update the company
UPDATE Companies SET company_name = 'Adams Co.', company_url = 'www.adamsco.com' WHERE company_id = 85;

-- deleteCompany
-- Check if the company exists
SELECT * FROM Companies WHERE company_id = 84;
-- If exists, delete the company
DELETE FROM Companies WHERE company_id = 84;

-- findByName
SELECT * FROM Companies WHERE LOWER(company_name) LIKE LOWER('%FASHIONinsta CO.%');

-- findOffersById
SELECT * FROM Company_Offers WHERE company_id = 83; 




