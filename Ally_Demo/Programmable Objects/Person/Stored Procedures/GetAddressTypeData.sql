IF OBJECT_ID('[Person].[GetAddressTypeData]') IS NOT NULL
	DROP PROCEDURE [Person].[GetAddressTypeData];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [Person].[GetAddressTypeData] /* Violate ST003 no BEGIN...END in procedure */
AS
/*BEGIN*/
SELECT * FROM Person.AddressType /* Violate BP005 - Asterisk in SELECT list */
/*END*/
GO
