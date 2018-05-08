-- <Migration ID="e4ce6785-ce40-4dc3-bebf-0323f523393b" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Creating index [idx_LastName] on [dbo].[TestData]'
GO
CREATE NONCLUSTERED INDEX [idx_LastName] ON [dbo].[TestData] ([LastName])
GO
PRINT N'Re-enabling DDL triggers'
GO
