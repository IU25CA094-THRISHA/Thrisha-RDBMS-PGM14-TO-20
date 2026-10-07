USE CollegeDB;

CREATE TABLE IF NOT EXISTS Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Department VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Employee_Log (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT,
    Message VARCHAR(200),
    LogDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TRIGGER IF EXISTS AfterEmployeeInsert;

DELIMITER //

CREATE TRIGGER AfterEmployeeInsert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Log (EmployeeID, Message)
    VALUES (
        NEW.EmployeeID,
        'New employee inserted successfully'
    );
END //

DELIMITER ;

INSERT INTO Employee
VALUES (1, 'Arun', 'Computer Science');

SELECT * FROM Employee;

SELECT * FROM Employee_Log;