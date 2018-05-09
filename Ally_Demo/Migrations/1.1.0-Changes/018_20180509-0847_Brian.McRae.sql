-- <Migration ID="d4fde378-4031-4776-8e38-c2336ce3ae44" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Dropping [Person].[GetContactTypeData]'
GO
IF OBJECT_ID(N'[Person].[GetContactTypeData]', 'P') IS NOT NULL
DROP PROCEDURE [Person].[GetContactTypeData]
GO
PRINT N'Dropping [Person].[GetAddressTypeData]'
GO
IF OBJECT_ID(N'[Person].[GetAddressTypeData]', 'P') IS NOT NULL
DROP PROCEDURE [Person].[GetAddressTypeData]
GO
PRINT N'Altering [Person].[AddressType]'
GO
IF COL_LENGTH(N'[Person].[AddressType]', N'Comments') IS NOT NULL
ALTER TABLE [Person].[AddressType] DROP COLUMN [Comments]
GO
PRINT N'Altering [Person].[ContactType]'
GO
IF COL_LENGTH(N'[Person].[ContactType]', N'Comments') IS NOT NULL
ALTER TABLE [Person].[ContactType] DROP COLUMN [Comments]
GO
PRINT N'Re-enabling DDL triggers'
GO
