-- Creates a view need_meeting that lists all students that have a score under 80 (strict) and no last_meeting or more than 1 month.

 DELIMITER $$

DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS
SELECT  name
FROM students
WHERE score < 80 
AND last_meeting IS NULL OR DATE(NOW()) > DATE_ADD(last_meeting, INTERVAL 1 MONTH);
