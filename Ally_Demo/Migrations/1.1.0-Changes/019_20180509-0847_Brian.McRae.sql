-- <Migration ID="6de1dae3-0282-4df9-b7e2-77917fb184fe" />
GO


SET DATEFORMAT YMD;


GO
PRINT (N'Delete 1 row from [Person].[ContactType]');

DELETE [Person].[ContactType]
WHERE  [ContactTypeID] = 28;


GO
PRINT (N'Delete 1 row from [Person].[AddressType]');

DELETE [Person].[AddressType]
WHERE  [AddressTypeID] = 10;


GO