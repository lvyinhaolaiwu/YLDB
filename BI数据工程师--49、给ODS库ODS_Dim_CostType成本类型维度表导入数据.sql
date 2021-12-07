USE [YLDB_01_ODS_Learn]
GO
INSERT INTO [dbo].[ODS_Dim_CostType]
           ([id],[ParentId]
           ,[CostCategory]
           ,[Code])
select [id],[ParentId]
           ,[CostCategory]
           ,[Code]
from
[YLDB_Source].[dbo].[ODS_Dim_CostType]
GO


