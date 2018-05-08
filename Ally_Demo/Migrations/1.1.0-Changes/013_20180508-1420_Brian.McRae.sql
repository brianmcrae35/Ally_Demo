-- <Migration ID="d33a7332-e77e-40f3-babc-643a868b3d29" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Dropping [dbo].[SP_GetContactType]'
GO
IF OBJECT_ID(N'[dbo].[SP_GetContactType]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[SP_GetContactType]
GO
PRINT N'Altering [Person].[AddressType]'
GO
IF COL_LENGTH(N'[Person].[AddressType]', N'Comments') IS NULL
ALTER TABLE [Person].[AddressType] ADD[Comments] [varchar] (100) NULL
GO
PRINT N'Altering [Person].[ContactType]'
GO
IF COL_LENGTH(N'[Person].[ContactType]', N'Comments') IS NULL
ALTER TABLE [Person].[ContactType] ADD[Comments] [varchar] (100) NULL
GO
PRINT N'Re-enabling DDL triggers'
GO
