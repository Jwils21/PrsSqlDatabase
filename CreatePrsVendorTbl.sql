Use [prssql]
go

create table Vendor
(
	id int not null primary key identity(1,1),
	Code Nvarchar(30) not null,
	Name Nvarchar(255) not null,
	Addresss Nvarchar(255) not null,
	City Nvarchar(255) not null,
	State Nvarchar(2) not null,
	Zip Nvarchar(5) not null,
	Phone Nvarchar(12) not null,
	Email Nvarchar(255) not null,
	IsPreApproved bit not null default 1,
	Active bit not null default 1
);

go

Create unique index uix_VndrName on [Vendor](Name);
go