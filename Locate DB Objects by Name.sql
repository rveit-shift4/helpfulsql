USE ubc
GO


-- ****************************************************************
-- **most helpful*
-- Find a table and display it's columns with details
SELECT schema_name(tab.schema_id) as schema_name,
    tab.name as table_name, 
    col.column_id,
    col.name as column_name, 
    t.name as data_type,    
    col.max_length,
    col.precision
FROM sys.tables as tab
    INNER JOIN sys.columns as col
        on tab.object_id = col.object_id
    LEFT JOIN sys.types as t
    on col.user_type_id = t.user_type_id
WHERE 
	--tab.name LIKE '%fee%'
	col.name LIKE '%rebate%'
ORDER BY schema_name, table_name, column_id;





--SELECT name AS [Name], 
--       SCHEMA_NAME(schema_id) AS schema_name, 
--       type_desc, 
--       create_date, 
--       modify_date
--FROM sys.objects
--WHERE type = 'u'
--	AND name LIKE '%structure%'

---- example using DMV
--SELECT *
--FROM information_schema.Tables
--WHERE [Table_Name] LIKE '%structure%'


---- view the columns, data types, length & nullability
--SELECT c.column_id, c.name, system_type_name = t.name, c.max_length, c.is_nullable
--  FROM sys.columns AS c
--  INNER JOIN sys.types AS t
--  ON c.system_type_id = t.system_type_id
--  WHERE c.[object_id] = OBJECT_ID(N'dbo.TempBonusStructure')
--  ORDER BY c.column_id;
 

