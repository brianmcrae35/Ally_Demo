CREATE TABLE [dbo].[TestData]
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
CREATE NONCLUSTERED INDEX [idx_LastName] ON [dbo].[TestData] ([LastName])
GO
