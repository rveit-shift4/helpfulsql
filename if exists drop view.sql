IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = N'view_InstitutionContact'AND TABLE_SCHEMA = 'dbo')
BEGIN
    DROP VIEW [dbo].[view_InstitutionContact] 
END
GO