use master;
go
DROP DATABASE if exists BcDb;
go
create database BcDb;
go
use BcDb;
go
--Create the table here
CREATE TABLE Customers(
Id int Primary Key(identity(1,1),
Code varchar(10) not null, unique,
Name varchar(30) not null,
Sales decimal(9,2) not null, 
default 0 check(sales > 0),
Active bit not null default 1,
Created DateTime not null default GETDATE()
)
go
--Do your inserts here
INSERT Customers
(Code, Name, Sales) VALUES
('AMAZ','Amazon', 900000.00)
('WSOP','Western', 50000.00)
('KING','Kings', 67000.00)
('KROG','Kroger', 89000.00)
('AUTO','Kings Auto Mall', 7650000.00)
go

ALTER TABLE Customers (Add Updated DateTime)

ALTER TABLE Customers
    Add Note varchar(30) null;


UPDATE Customers Set
	Note = 'Default Note'

Select * from Customers