-- <Migration ID="1183bad6-ecb0-4f6d-8ffe-81e87cee2b68" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Altering [Person].[ContactType]'
GO
ALTER TABLE [Person].[ContactType] ADD
[Comments] [varchar] (100) NULL
GO
PRINT N'Re-enabling DDL triggers'
GO
