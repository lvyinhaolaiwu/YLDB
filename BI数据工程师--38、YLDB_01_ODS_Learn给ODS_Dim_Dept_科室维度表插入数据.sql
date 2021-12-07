USE [YLDB_Source]
GO

INSERT INTO [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Dept]
           ([ParentId]
           ,[Department]
           ,[Code]
           ,[DepartmentSort]
           ,[DepartmentSortName]
           ,[IsDept]
           ,[IsDeptName])
		   select [ParentId]
           ,[Department]
           ,[Code]
           ,[DepartmentSort]
           ,[DepartmentSortName]
           ,[IsDept]
           ,[IsDeptName] from [dbo].[ODS_Dim_Dept]
GO


