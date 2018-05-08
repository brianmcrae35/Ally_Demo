-- <Migration ID="079afa92-0771-4545-80b9-7d63b98a4d59" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Dropping foreign keys from [dbo].[TestData]'
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_TestData_TestAddress]', 'F') AND parent_object_id = OBJECT_ID(N'[dbo].[TestData]', 'U'))
ALTER TABLE [dbo].[TestData] DROP CONSTRAINT [fk_TestData_TestAddress]
GO
PRINT N'Dropping constraints from [dbo].[TestAddress]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pk_TestAddress]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[TestAddress]', 'U'))
ALTER TABLE [dbo].[TestAddress] DROP CONSTRAINT [pk_TestAddress]
GO
PRINT N'Dropping [dbo].[TestAddress]'
GO
IF OBJECT_ID(N'[dbo].[TestAddress]', 'U') IS NOT NULL
DROP TABLE [dbo].[TestAddress]
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
PRINT N'Altering [dbo].[TestData]'
GO
IF COL_LENGTH(N'[dbo].[TestData]', N'AddressLine1') IS NULL
ALTER TABLE [dbo].[TestData] ADD[AddressLine1] [nvarchar] (50) NULL
IF COL_LENGTH(N'[dbo].[TestData]', N'City') IS NULL
ALTER TABLE [dbo].[TestData] ADD[City] [nvarchar] (50) NULL
IF COL_LENGTH(N'[dbo].[TestData]', N'State') IS NULL
ALTER TABLE [dbo].[TestData] ADD[State] [nvarchar] (50) NULL
GO
PRINT N'Re-enabling DDL triggers'
GO
