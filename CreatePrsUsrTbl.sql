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