-- <Migration ID="65642ce2-05b1-46d2-9591-71c08a3a191f" />
GO

PRINT N'Disabling DDL triggers'
GO
DISABLE TRIGGER ALL ON DATABASE
GO
PRINT N'Creating [dbo].[TestData]'
GO
CREATE TABLE [dbo].[TestData]
(
[FirstName] [nvarchar] (50) NULL,
[LastName] [nvarchar] (50) NULL,
[PhoneNumber] [nvarchar] (50) NULL,
[AddressLine1] [nvarchar] (200) NULL,
[City] [nvarchar] (50) NULL,
[State] [nvarchar] (50) NULL,
[FullName] [varchar] (50) NULL
)
GO
PRINT N'Re-enabling DDL triggers'
GO
