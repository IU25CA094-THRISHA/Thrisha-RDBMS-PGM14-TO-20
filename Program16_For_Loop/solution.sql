USE CollegeDB;

DROP PROCEDURE IF EXISTS DisplayNumbers;

DELIMITER $$

CREATE PROCEDURE DisplayNumbers()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 10 DO
        SELECT i AS Number;
        SET i = i + 1;
    END WHILE;
END $$

DELIMITER ;

CALL DisplayNumbers();