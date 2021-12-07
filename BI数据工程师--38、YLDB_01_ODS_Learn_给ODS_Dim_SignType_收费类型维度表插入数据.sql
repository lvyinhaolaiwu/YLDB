USE [YLDB_Source]
GO

INSERT INTO [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType]
           ([SignId]
           ,[SignName])
     select * from [dbo].[ODS_Dim_SignType]
GO


