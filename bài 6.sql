
create database CompanyDB; 
use CompanyDB ;
create table Employess(
emplayeeID int primary key auto_increment,
firstname varchar(50),
lastname varchar(50)
);
 ALTER TABLE Employess 
ADD COLUMN HireDate DATE;
Alter table Employess
add column Salary INT; 
INSERT INTO Employees (FirstName, LastName, HireDate, Salary)
VALUES
    ('Hoa', 'Nguyen', '2023-01-15', 18000000),
    ('Tuan', 'Le', '2022-08-20', 25500000),
    ('Mai', 'Pham', '2024-03-01', 12000000);
UPDATE Salary 
SET Salary = 4800
Where EmployeeID = 2;
UPDATE HireDate 
SET HireDate = 2021-08-01 
Where FirstName = 'David';
DELETE FROM emplayeeID 
WHERE emplayeeID=1; 
DELETE FROM Salary 
Where salary<5000;
SELECT * FROM Employess;
SELECT * FROM Employess 
WHERE Salary > 5000;
SELECT * 
FROM Employees
ORDER BY HireDate Desc;
