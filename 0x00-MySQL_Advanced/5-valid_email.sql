-- Create a trigger for the items table in the holberton database
-- Decrease the quantity of an item when a new order is inserted
DELIMITER $$
CREATE TRIGGER update_email BEFORE UPDATE
ON users FOR EACH ROW
BEGIN
    IF NEW.email <> OLD.email THEN
    SET NEW.valid_email = 0;
    END IF;
END; $$
