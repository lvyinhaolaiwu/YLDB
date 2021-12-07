select * from [dbo].[DW_Dim_Dept_科室]
USE [YLDB_03_DW_Learn]
GO
ALTER TABLE [dbo].[TempTarget_2] ADD [收入达成率] numeric(18,2)
select * from [dbo].[TempTarget_2]
UPDATE [dbo].[TempTarget_2] SET [收入达成率]=[Money]/[营收目标]
GO