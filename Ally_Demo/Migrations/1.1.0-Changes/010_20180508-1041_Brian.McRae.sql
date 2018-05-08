-- <Migration ID="90aea3b1-0b87-453c-9be0-6d147269c7dd" />
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
