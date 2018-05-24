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

Create unique index uix_VndrName on [Vendor](Name);s
go

insert into Vendor
	(Code,Name,Addresss,City,State,Zip,Phone,Email,IsPreApproved,Active)
Values
	('AMZN', 'Amazon', '123 Amazon St.','Seattle','WA','87965','555-555-5555', 'Orders@amazon.com',1,1),
	('OMX', 'Office Max', '5678 Office Max Way','Atlanta','GA','42130','543-210-9876', 'Orders@OfficeMax.com',1,1),
	('COST', 'Costco', '9865 Costco Parkway','Las Vegas','NV','89765','789-456-1230', 'Orders@Costco.com',1,1),
	('JOES', 'Joes Office Supply', '3214 Martin Luther King Drive','Cincinnati','OH','45987','529-647-9874','JoesSupply@JoesOfficeSupply.com',0,1)
