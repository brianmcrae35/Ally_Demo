CREATE TABLE [dbo].[TestAddress]
(
[AddressLine1] [nvarchar] (50) NULL,
[City] [nvarchar] (50) NULL,
[State] [nvarchar] (50) NULL,
[ID] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[TestAddress] ADD CONSTRAINT [pk_TestAddress] PRIMARY KEY CLUSTERED  ([ID])
GO
