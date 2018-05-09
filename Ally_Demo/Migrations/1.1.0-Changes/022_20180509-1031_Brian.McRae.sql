-- <Migration ID="13bb3b4b-bbf6-47bc-98f2-4540fdf96ef3" />
GO


SET DATEFORMAT YMD;


GO
PRINT (N'Add 1 row to [Person].[AddressType]');

SET IDENTITY_INSERT [Person].[AddressType] ON;

INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate], [Comments])
VALUES                             (11, N'Regional Office', 'c5ec7984-ac76-4857-8a97-17c0a988564e', '2018-05-09 10:25:46.497', NULL);

SET IDENTITY_INSERT [Person].[AddressType] OFF;


GO
PRINT (N'Add 1 row to [Person].[ContactType]');

SET IDENTITY_INSERT [Person].[ContactType] ON;

INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate], [Comments])
VALUES                             (29, N'Regional Office', '2018-05-09 10:25:46.533', NULL);

SET IDENTITY_INSERT [Person].[ContactType] OFF;


GO