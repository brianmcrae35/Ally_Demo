-- <Migration ID="412227f3-145e-4baa-b6da-fbf1d77b1271" />
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
