-- TEMPLATE- Execute usp_TableReference_INSERT_AndMap (Step 3)
USE ACI
GO

/*
RHONDA'S NOTES:
==========================================================================
For each command, each element, you need to map it to a database table
Last field in the stored procedure parameters is the RecordID
Use this query to locate what the RecordID values are:

SELECT *
FROM [ACI].[dbo].[Spec_with_Map] 
WHERE Command IN ('UpdateInstitutionRepCode','AddInstitutionRepCode')
	AND elementName IN ('repId','repDescription')
ORDER BY CommandID, RecordID;

This will not work until Step 2 is complete...

Example Execution:
EXEC [dbo].[usp_TableReference_INSERT_AndMap] '[db].[dbo].[DBTable], '[DBField_aka_sourcecolumn]', '[Parameter_aka_SourceColumn]' , 'RecordID_value';

Parameters for the stored proc
	@DBTable nvarchar(250),
	@DBField nvarchar(100),
	@DBParameter nvarchar(50),
	@RecordID int,
	@SeqNum char(2) = ''

==========================================================================
*/


-- ****BE SURE TO UPDATE THESE***
--==========================================================================

-- UPDATECOMMAND: elementName = repId (RecordID = ?)
EXEC [dbo].[usp_TableReference_INSERT_AndMap] '[ubc].[dbo].[tblSalesRep]', '[SalesRepId]', '[SalesRepId]' , '?';
GO
-- UPDATECOMMAND: elementName = repDescription (RecordID = ?)
EXEC [dbo].[usp_TableReference_INSERT_AndMap] '[ubc].[dbo].[tblSalesRep]', '(RTRIM([Salesrep FirstName]) + '' '' + RTRIM([Salesrep LastName]))', '[SalesRepId]' , '?';
GO
-- ADDCOMMAND: elementName = repID (RecordID - ?)
EXEC [dbo].[usp_TableReference_INSERT_AndMap] '[ubc].[dbo].[tblSalesRep]', '[SalesRepId]', '[SalesRepId]' , '?';
GO
-- ADDCOMMAND: elementName = repID (RecordID - ?)
EXEC [dbo].[usp_TableReference_INSERT_AndMap] '[ubc].[dbo].[tblSalesRep]', '(RTRIM([Salesrep FirstName]) + '' '' + RTRIM([Salesrep LastName]))', '[SalesRepId]' , '?';
GO


