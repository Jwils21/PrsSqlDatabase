Create Table PurchaseRequest
(
	Id int not null primary key identity (1,1),
	UserId int not null foreign key references [User](Id),
	Description Nvarchar(100) not null,
	Justification Nvarchar(255) not null,
	DeliveryMode Nvarchar(25) nost null,
	Status Nvarchar(10) not null Default 'New',
	Total Decimal(10,2) not null Default 0,
	Active bit not null default 1,
	ReasonForRejection Nvarchar(100)
);

Insert into PurchaseRequest
	(UserId,Description,Justification,DeliveryMode, status, Total, Active)
Values
	(1,'Reds Memorabilia', 'My client is a huge reds fan and will increase sales', 'USPS', 'New', 25.87, 1)