USE CollegeDB;

DROP PROCEDURE IF EXISTS CalculateSum;

DELIMITER //

CREATE PROCEDURE CalculateSum()
BEGIN
    DECLARE num1 INT DEFAULT 10;
    DECLARE num2 INT DEFAULT 20;
    DECLARE total INT;

    SET total = num1 + num2;

    SELECT total AS Sum;
END //

DELIMITER ;

CALL CalculateSum();