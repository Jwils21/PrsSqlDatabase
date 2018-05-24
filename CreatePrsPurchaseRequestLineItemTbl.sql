Create Table PurchaseRequestLineitem
(
	Id int not null primary key identity(1,1),
	PurchaseRequestId int not null foreign key references [PurchaseRequest](Id),
	ProductId int not null foreign key references [Product](Id),
	Quantity int not null default 1,
	Active bit Not null default 1
);

Insert into PurchaseRequestLineitem
	(PurchaseRequestId,ProductId,Quantity,Active)
Values
	(1,4,1,1)