-- <Migration ID="18878024-58ac-4696-9a3c-71d5a4bb53bd" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Dropping [dbo].[uspGetContactType]'
GO
IF OBJECT_ID(N'[dbo].[uspGetContactType]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[uspGetContactType]
GO
PRINT N'Re-enabling DDL triggers'
GO
