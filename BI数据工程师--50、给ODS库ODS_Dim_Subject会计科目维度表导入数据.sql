USE [YLDB_01_ODS_Learn]
GO
INSERT INTO [dbo].[ODS_Dim_Subject]
           ([SubjectCode]
           ,[Subject]
           ,[CostItemId]
           ,[ExpenseId]
           ,[AuxiliaryType])
select [SubjectCode], [Subject], [CostItemId], [ExpenseId], [AuxiliaryType]
from
[YLDB_Source].[dbo].[ODS_Dim_Subject]
GO


