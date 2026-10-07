DELIMITER //

CREATE PROCEDURE CheckResult(IN student_marks INT)
BEGIN
    IF student_marks >= 40 THEN
        SELECT 'PASS' AS Result;
    ELSE
        SELECT 'FAIL' AS Result;
    END IF;
END //

DELIMITER ;

CALL CheckResult(65);