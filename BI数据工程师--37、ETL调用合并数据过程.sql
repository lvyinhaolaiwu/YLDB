USE [YLDB_01_ODS_Learn]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[sp_ODS_Fact_Fees_会计费用]

SELECT	'Return Value' = @return_value

GO
exec [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[sp_ODS_Fact_Fees_会计费用]
exec [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[sp_ODS_Fact_Incomedtl_医疗收费]
EXEC [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[sp_ODS_Fact_Material_领用物资]
EXEC [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[sp_ODS_Fact_Salary_人员薪资]
EXEC [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[sp_ODS_Fact_Salary_固定资产]

