select * from Vendor



declare @vendorid int

select @vendorid = id from Vendor where code = 'AMZN'

Insert into Product
(VendorId,PartNumber,Name,Price,Unit,PhotoPath,Active)
values
(@vendorid, '654795', 'Echo', 99.99,'Each',Null,1)

select * from Vendor
Select * from Product