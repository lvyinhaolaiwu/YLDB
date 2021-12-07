USE [YLDB_Source]
GO

INSERT INTO [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item]
           ([id]
           ,[Item]
           ,[ItemSortId]
           ,[ItemSort]
           ,[Code]
           ,[Price]
           ,[StarterRate]
           ,[ExecRate]
           ,[NurseRate]
           ,[OutStarterRate]
           ,[OutExecRate]
           ,[OutNurseRate]
           ,[AccountingId])
		   select * from [dbo].[ODS_Dim_Item]
GO


