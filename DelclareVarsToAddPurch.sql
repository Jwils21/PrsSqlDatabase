insert into [User]
	(Username,Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin,Active)
values
	('Gpdoud','1','Greg','Doud','513-654-9876','gpdoud@skynet.net', 1,1,1)

go

Declare @Usrid int
select @Usrid = id from [user] where Username = 'Gpdoud'

Insert into PurchaseRequest
	(UserId,Description,Justification,DeliveryMode,Status,Total,Active,ReasonForRejection)
values	
	(@Usrid,


select * from [User]
select * from PurchaseRequest
