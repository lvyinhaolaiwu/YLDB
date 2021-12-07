USE [YLDB_01_ODS_Learn]
GO
INSERT INTO [dbo].[ODS_Dim_Material]
           ([Code],[Material]
           ,[MaterialSortId]
           ,[MaterialSort]
           ,[CostItemId])
     select [Code], [Material], [MaterialSortId], [MaterialSort], [CostItemId]
	 from [YLDB_Source].[dbo].[ODS_Dim_Material]
GO


