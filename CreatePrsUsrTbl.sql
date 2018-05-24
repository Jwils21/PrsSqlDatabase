use master;
go
drop database if exists [prssql]
go
Create database [prssql];
go
use [prssql];
go
create table [User]
(
	Id int not null identity(1,1) primary key,
	Username nvarchar(30) not null,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12) not null,
	Email nvarchar(255) not null,
	IsReviewer Bit not null default 0,
	IsAdmin bit not null default 0,
	Active bit not null default 1
);
	go
create unique index uix_username on [user](username);
go

Insert into [User]
	(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin, Active)
Values
	('Jwils21',1,'Jonathan','Wilson','702-860-7954','jon.wilsond@gmail.com',1,1,1),
	('Ewils',1,'Erin','Wilson','859-559-9958','erin.lindmark@gmail.com',1,0,1),
	('Willyksu',1,'David','Wilson','702-326-1451','willyksu@aol.com',0,0,1)