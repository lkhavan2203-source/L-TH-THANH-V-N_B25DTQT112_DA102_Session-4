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