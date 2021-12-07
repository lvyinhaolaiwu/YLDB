USE [YLDB_01_ODS_Learn]
GO
INSERT INTO [dbo].[ODS_Dim_Drug]([Id], [DrugSortId], [DrugCode], [drug], [AccountingId], [CostPrice])
select 
[Id], [DrugSortId], [DrugCode], [drug], [AccountingId], [CostPrice]
from 
[YLDB_Source].[dbo].[ODS_Dim_Drug]
GO


