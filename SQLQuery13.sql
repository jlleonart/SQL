CREATE TABLE Adjustments (
	Id int primary key identity(1,1),
	Firstname varchar(30) not null,
	Lastname varchar(30) not null,
	GpaDelta decimal(5,2) not null default 0,
	Completed bit not null default 0
	)