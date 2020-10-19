-- Get list of columns for a table (4-part naming)

EXEC sp_columns_ex 
	  @table_server = 'YODA'
	, @table_name = 'Command'
	, @table_schema = 'dbo'
	, @table_catalog = 'ACI' ;

--SELECT * FROM sys.servers;