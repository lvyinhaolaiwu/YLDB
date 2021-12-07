USE [YLDB_01_ODS_Learn]
GO
INSERT INTO [dbo].[ODS_Dim_Item]
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
select *
from [YLDB_Source].[dbo].[ODS_Dim_Item]
GO


