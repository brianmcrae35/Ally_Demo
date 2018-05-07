-- <Migration ID="86cfdcfb-8ade-41b5-af0b-e66a0fa182ee" />
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
