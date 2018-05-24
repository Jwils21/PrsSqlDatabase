use [prssql];
go

Create table [Product]
(
	Id int not null primary key identity(1,1),
	VendorId int not null Foreign Key references Vendor(Id),
	PartNumber nvarchar(50) not null,
	Name  nvarchar(150) not null,
	Price decimal(10,2) not null Default 10,
	Unit nvarchar(25) not null Default 'Each',
	PhotoPath nvarchar(255),
	Active bit not null default 1
);
go

Create unique index Uix_PartNumber on [Product](PartNumber)
go

Insert into [Product]
	(VendorId,PartNumber,Price,name,Unit,Active)
Values	
	(1,'645372',13.99,'Bic Pens', 20, 1),
	(2,'122345',159.99,'Tempurpedic Chair', 1, 1),
	(3,'333652',501,'Hickory Desk', 1, 1),
	(4,'2',24.99,'Cincinnati Reds Autographed Baseball Bat', 1, 1)
	