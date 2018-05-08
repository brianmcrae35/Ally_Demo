-- <Migration ID="d4663d80-0843-430d-89af-52d27227bb0a" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Dropping [dbo].[GetContactType]'
GO
IF OBJECT_ID(N'[dbo].[GetContactType]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[GetContactType]
GO
PRINT N'Re-enabling DDL triggers'
GO
