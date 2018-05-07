-- <Migration ID="2a013132-289b-4361-bb40-f7aa31c0277a" />
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
PRINT N'Altering [Person].[ContactType]'
GO
IF COL_LENGTH(N'[Person].[ContactType]', N'Comments') IS NOT NULL
ALTER TABLE [Person].[ContactType] DROP COLUMN [Comments]
GO
PRINT N'Re-enabling DDL triggers'
GO
