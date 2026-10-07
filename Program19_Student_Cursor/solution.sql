DELIMITER //

CREATE PROCEDURE DisplayStudents()
BEGIN
DECLARE done INT DEFAULT 0;
DECLARE v_StudentID INT;
DECLARE v_StudentName VARCHAR(100);
DECLARE v_DepartmentID INT;

DECLARE student_cursor CURSOR FOR  
    SELECT StudentID, StudentName, DepartmentID  
    FROM Student;  

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;  

OPEN student_cursor;  

student_loop: LOOP  

    FETCH student_cursor  
    INTO v_StudentID, v_StudentName, v_DepartmentID;  

    IF done = 1 THEN  
        LEAVE student_loop;  
    END IF;  

    SELECT  
        v_StudentID AS StudentID,  
        v_StudentName AS StudentName,  
        v_DepartmentID AS DepartmentID;  

END LOOP;  

CLOSE student_cursor;

END //

DELIMITER ;

CALL DisplayStudents();