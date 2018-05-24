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

I