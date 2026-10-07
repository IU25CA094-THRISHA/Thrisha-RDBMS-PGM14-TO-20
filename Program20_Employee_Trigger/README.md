# Program 20 – Employee Insert Trigger

## Aim

Create a MySQL trigger that automatically records a message after inserting a new employee record into the Employee table.

## Employee Table

The Employee table contains:

- EmployeeID
- EmployeeName
- Department

## Trigger Requirement

Create a trigger named:

AfterEmployeeInsert

The trigger must execute automatically after a new employee is inserted.

The trigger should insert a message into the Employee_Log table.

## Concept

- CREATE TRIGGER
- AFTER INSERT
- FOR EACH ROW
- NEW keyword
- Automatic execution
