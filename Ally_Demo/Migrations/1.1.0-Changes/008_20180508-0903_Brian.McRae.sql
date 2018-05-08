-- <Migration ID="7cec2ca5-3a15-47a2-9b6d-99a57f2b349a" />
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
PRINT N'Rebuilding [dbo].[TestData]'
GO
CREATE TABLE [dbo].[RG_Recovery_1_TestData]
(
[FirstName] [nvarchar] (50) NULL,
[LastName] [nvarchar] (50) NULL,
[PhoneNumber] [nvarchar] (50) NULL,
[AddressLine1] [nvarchar] (50) NULL,
[City] [nvarchar] (50) NULL,
[State] [nvarchar] (50) NULL,
[FullName] [nvarchar] (50) NULL,
[ID] [int] NOT NULL
)
GO
INSERT INTO [dbo].[RG_Recovery_1_TestData]([FirstName], [LastName], [PhoneNumber], [AddressLine1], [City], [State], [FullName]) SELECT [FirstName], [LastName], [PhoneNumber], [AddressLine1], [City], [State], [FullName] FROM [dbo].[TestData]
GO
DROP TABLE [dbo].[TestData]
GO
IF (OBJECT_ID(N'[dbo].[RG_Recovery_1_TestData]', 'U') IS NOT NULL) AND (OBJECT_ID(N'[dbo].[TestData]', 'U') IS NULL)
EXEC sp_rename N'[dbo].[RG_Recovery_1_TestData]', N'TestData', N'OBJECT'
GO
PRINT N'Re-enabling DDL triggers'
GO
