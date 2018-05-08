-- <Migration ID="4e3c2317-decf-4189-9172-3cddb3db6a4d" />
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
PRINT N'Dropping [dbo].[uspGetContactType]'
GO
IF OBJECT_ID(N'[dbo].[uspGetContactType]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[uspGetContactType]
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
