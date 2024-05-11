USE PLUTUS;

-- addNotification
INSERT INTO Notifications (offer_id) VALUES (101);

-- createNotification
-- First, check if a notification for the offer exists
SELECT * FROM Notifications WHERE offer_id = 101;
-- If not exists, insert the new notification
INSERT INTO Notifications (offer_id) VALUES (101);

-- findById
SELECT * FROM Notifications WHERE notification_id = 45;

-- findByOffer
SELECT * FROM Notifications WHERE offer_id = 67;

-- updateNotification
-- First, verify the notification exists
SELECT * FROM Notifications WHERE notification_id = 101;
-- If exists, update the notification 
UPDATE Notifications SET offer_id = 102 WHERE notification_id = 102;
