DELIMITER $$
CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE subscriber_count INT;
    DECLARE new_subscriber_id INT;
    SELECT COUNT(*) INTO subscriber_count
    FROM Subscribers
    WHERE SubscriberName = subName;
    IF subscriber_count = 0 THEN
        SELECT IFNULL(MAX(SubscriberID), 0) + 1 INTO new_subscriber_id FROM Subscribers;
        INSERT INTO Subscribers (SubscriberID, SubscriberName, SubscriptionDate)
        VALUES (new_subscriber_id, subName, CURDATE());
        SELECT CONCAT('Subscriber ', subName, ' added with ID ', new_subscriber_id);
    ELSE
        SELECT 'Subscriber already exists. No new subscriber added.';
    END IF;
END$$
DELIMITER ;