USE [YLDB_01_ODS_Learn]
GO
INSERT INTO [dbo].[ODS_Dim_DrugSort]([Id],[ParentId], [DrugSort], [ItemSortId], [CostItemId])
select [Id],[ParentId], [DrugSort], [ItemSortId], [CostItemId]
from
[YLDB_Source].[dbo].[ODS_Dim_DrugSort]
GO


