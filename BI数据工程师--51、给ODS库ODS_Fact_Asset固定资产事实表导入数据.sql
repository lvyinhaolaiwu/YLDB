USE [YLDB_01_ODS_Learn]
GO
INSERT INTO [dbo].[ODS_Fact_Asset]
           ([Id],[AssetCode]
           ,[Asset]
           ,[CostItemId]
           ,[DeptId]
           ,[PurchaseDate]
           ,[OriginalValue]
           ,[Life])
select [Id], [AssetCode], [Asset], [CostItemId], [DeptId], [PurchaseDate], [OriginalValue], [Life]
from [YLDB_Source].[dbo].[ODS_Fact_Asset]
GO


