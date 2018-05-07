-- <Migration ID="1876ad66-da00-4c44-874d-e577beced424" />
GO

DECLARE @associate bit
SELECT @associate = CASE SERVERPROPERTY('EngineEdition') WHEN 5 THEN 1 ELSE 0 END
IF @associate = 0 EXEC sp_executesql N'SELECT @count = COUNT(*) FROM master.dbo.syslogins WHERE loginname = N''dlmDashboard''', N'@count bit OUT', @associate OUT
IF @associate = 1
BEGIN
    PRINT N'Creating user [dlmDashboard] and mapping to the login [dlmDashboard]'
    IF DATABASE_PRINCIPAL_ID(N'dlmDashboard') IS NULL
CREATE USER [dlmDashboard] FOR LOGIN [dlmDashboard]
END
ELSE
BEGIN
    PRINT N'Creating user [dlmDashboard] without login'
    IF DATABASE_PRINCIPAL_ID(N'dlmDashboard') IS NULL
CREATE USER [dlmDashboard] WITHOUT LOGIN
END
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
