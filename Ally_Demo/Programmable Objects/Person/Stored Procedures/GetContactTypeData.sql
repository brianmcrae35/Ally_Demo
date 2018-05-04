IF OBJECT_ID('[Person].[GetContactTypeData]') IS NOT NULL
	DROP PROCEDURE [Person].[GetContactTypeData];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [Person].[GetContactTypeData]
AS
SELECT * FROM Person.ContactType
GO
