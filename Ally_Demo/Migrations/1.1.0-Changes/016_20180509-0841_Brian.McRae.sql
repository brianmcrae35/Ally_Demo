-- <Migration ID="349664d8-db4f-444b-adee-9aa93df98382" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Altering [Person].[AddressType]'
GO
ALTER TABLE [Person].[AddressType] ADD
[Comments] [varchar] (100) NULL
GO
PRINT N'Altering [Person].[ContactType]'
GO
ALTER TABLE [Person].[ContactType] ADD
[Comments] [varchar] (100) NULL
GO
PRINT N'Re-enabling DDL triggers'
GO
