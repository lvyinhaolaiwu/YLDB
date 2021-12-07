USE [YLDB_Source]
GO

INSERT INTO [YLDB_01_ODS_learn].[dbo].[ODS_Dim_Employee]
           ([names]
           ,[DeptId])
		select [names]
           ,[DeptId] from [dbo].[ODS_Dim_Employee]
GO


