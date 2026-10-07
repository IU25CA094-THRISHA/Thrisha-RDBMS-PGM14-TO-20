USE CollegeDB;

CREATE TABLE IF NOT EXISTS Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

INSERT IGNORE INTO Department
VALUES
(1, 'Computer Science'),
(2, 'Commerce');

DROP PROCEDURE IF EXISTS InsertStudent;

DELIMITER $$

CREATE PROCEDURE InsertStudent(
    IN p_student_id INT,
    IN p_student_name VARCHAR(50),
    IN p_department_id INT
)
BEGIN

    -- Insert the student record

END $$

DELIMITER ;

-- Test
CALL InsertStudent(105, 'Kavin', 1);

SELECT * FROM Student;
