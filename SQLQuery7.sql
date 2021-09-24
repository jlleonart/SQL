CREATE DATABASE PRMS
GO
USE PRMS
GO
CREATE TABLE Users (
id int not null primary key identity(1,1),
Username varchar(30) not null Unique,
Password varchar(30) not null,
Firstname varchar(30) not null,
Lastname varchar(30) not null,
Phone varchar(12) null,
Email varchar(255)null,
IsReviewer int Default 0 not null,
isAdmin int Default 0 not null
)
GO
CREATE TABLE Vendors (
id int not null primary key identity(1,1),
Code varchar(30) not null Unique,
Name varchar(30) not null,
Address varchar(30) not null,
City varchar(30) not null,
State varchar(2) not null,
Zip varchar(5) not null,
Phone varchar(12) null,
Email varchar(255) null,
)
GO
CREATE TABLE Products (
id int not null primary key identity(1,1),
PartNbr varchar(30) not null Unique,
Name varchar(30) not null,
Price decimal (9,2) not null Default 0,
Unit varchar(30) not null Default 'Each',
PhotoPath varchar(255) null,
VendorId int not null Foreign Key references Vendors(Id)
)
GO
CREATE TABLE Requests (
id int not null primary key identity(1,1),
Description varchar(80) not null,
Justification varchar(80) not null,
RejectionReason varchar(80) null,
DeliveryMode varchar(20) not null, Default 'Pickup',
Status varchar(10) not null Default 'New',
Total decimal (11,2) not null Default 0,
UserId int not null Foreign Key references Users(Id)
)
GO
CREATE TABLE Requestlines (
id int not null primary key identity(1,1),
RequestId int not null Foreign Key references Requests(Id),
ProductId int not null Foreign Key references Products(Id),
Quantity int not null Default 1
)
GO

--Insert data here

INSERT USER (Username, Password, FirstName, Lastname, IsReviewer, IsAdmin)
	Values('sa','sa','Systems', 'Admin',1,1),
	Values('rv','rv','Systems', 'Reviewer',1,0),
	Values('us1','us1','Systems', 'User',0,0),
	Values('us2','us2','Systems', 'User',0,0)

GO

	
INSERT USER (Username, Password, FirstName, Lastname, IsReviewer, IsAdmin)
	Values('sa','sa','Systems', 'Admin',1,1),
	Values('rv','rv','Systems', 'Reviewer',1,0),
	Values('us1','us1','Systems', 'User',0,0),
	Values('us2','us2','Systems', 'User',0,0),
GO

	
INSERT USER (Username, Password, FirstName, Lastname, IsReviewer, IsAdmin)
	Values('sa','sa','Systems', 'Admin',1,1),
	Values('rv','rv','Systems', 'Reviewer',1,0),
	Values('us1','us1','Systems', 'User',0,0),
	Values('us2','us2','Systems', 'User',0,0)

	END