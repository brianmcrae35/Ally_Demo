-- <Migration ID="fb40c409-495b-46f4-be04-f2c610958614" />
GO


SET DATEFORMAT YMD;


GO
PRINT (N'Add 1 row to [Person].[AddressType]');

SET IDENTITY_INSERT [Person].[AddressType] ON;

INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate], [Comments])
VALUES                             (10, N'Regional Office', 'be4cfa0f-284a-44c4-b1a4-7bf3658e8f78', '2018-05-09 08:39:29.517', NULL);

SET IDENTITY_INSERT [Person].[AddressType] OFF;


GO
PRINT (N'Add 1 row to [Person].[ContactType]');

SET IDENTITY_INSERT [Person].[ContactType] ON;

INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate], [Comments])
VALUES                             (28, N'Regional Office', '2018-05-09 08:39:29.537', NULL);

SET IDENTITY_INSERT [Person].[ContactType] OFF;


GO