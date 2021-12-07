USE [YLDB_03_DW_Learn]
GO
select * from [dbo].[DW_Fact_Incomedtl_医疗收费_bak]with(nolock) 
select CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE([DateId],'2012','2020')) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE([DateId],'2013','2021')) ELSE [DateId] END
from [dbo].[DW_Fact_Incomedtl_医疗收费_bak]with(nolock)
select REPLACE('20122012','2012','2020')
select REPLACE('20132013','2013','2021')
select * from [dbo].[DW_Fact_Incomedtl_医疗收费_bak] as a with(nolock)
left join [dbo].[DW_Fact_Incomedtl_医疗收费_new] as b with(nolock)
on a.Id = b.Id order by a.Id asc
SELECT * into [dbo].[DW_Fact_Incomedtl_医疗收费_new] from [dbo].[DW_Fact_Incomedtl_医疗收费_bak]with(nolock)
TRUNCATE TABLE [dbo].[DW_Fact_Incomedtl_医疗收费_new]
DROP TABLE [dbo].[DW_Fact_Incomedtl_医疗收费_new]
INSERT INTO [dbo].[DW_Fact_Incomedtl_医疗收费_new]
select [DeptId], CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END, [SignTypeId], [ItemId], [EmployeeId], [PatientNo], [ExecDeptid], [Amount], [Money]
FROM [dbo].[DW_Fact_Incomedtl_医疗收费_bak]with(nolock)
SELECT [Id] as Id,[DeptId] AS DeptId, CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [SignTypeId] as SignTypeId, [ItemId] as ItemId, [EmployeeId] as EmployeeId, [PatientNo] as PatientNo, [ExecDeptid] as ExecDeptid, [Amount] as Amount, [Money] as Money into [dbo].[DW_Fact_Incomedtl_医疗收费_new] from [dbo].[DW_Fact_Incomedtl_医疗收费_bak]with(nolock)
SELECT * FROM [dbo].[DW_Fact_Incomedtl_医疗收费_new]with(nolock) order by Id asc
select 
SELECT COUNT(*) FROM [dbo].[DW_Fact_Incomedtl_医疗收费_new]with(nolock)
select * from [dbo].[DW_Fact_Fees_会计费用_bak]with(nolock)
drop table [dbo].[DW_Fact_Fees_会计费用_new]
SELECT [FeesId] as FeesId, [VoucherNo] as VoucherNo,  CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [Abstract] as Abstract, [DeptId] as DeptId, [Debit] as Debit, [Period] as Period, [SubjectId] as SubjectId into [dbo].[DW_Fact_Fees_会计费用_new] FROM [dbo].[DW_Fact_Fees_会计费用_bak]with(nolock)
select * from  [dbo].[DW_Fact_Fees_会计费用_new] as a with(nolock)
left join [dbo].[DW_Fact_Fees_会计费用_bak] as b with(nolock)
on a.FeesId = b.FeesId order by a.FeesId asc 
SELECT COUNT(*) FROM [dbo].[DW_Fact_Fees_会计费用_new]with(nolock)
SELECT * FROM [dbo].[DW_Fact_Fees_会计费用_new]with(nolock) order by FeesId asc
select * from [dbo].[DW_Fact_DrugCost_药品成本_bak]with(nolock)
DROP TABLE [dbo].[DW_Fact_DrugCost_药品成本_new]
select [Id] as Id, CASE WHEN LEFT([DateId],4)='2012' THEN convert(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [DeptId] as DeptId, [DrugId] as DrugId, [Amount] as Amount, [Money] as Money into [dbo].[DW_Fact_DrugCost_药品成本_new] from [dbo].[DW_Fact_DrugCost_药品成本_bak]with(nolock)
select * from [dbo].[DW_Fact_DrugCost_药品成本_new]with(nolock) order by Id asc
select * from [dbo].[DW_Fact_DrugCost_药品成本_new] as a with(nolock) 
left join [dbo].[DW_Fact_DrugCost_药品成本_bak] as b with(nolock)
on a.Id = b.Id order by a.Id asc
select * from [dbo].[DW_Fact_Asset_固定资产_bak]with(nolock)
DROP TABLE [dbo].[DW_Fact_Asset_固定资产_new]
select [Id] as Id, [DeptId] as DeptId, [AssetId] as AssetId, CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [OriginalValue] as OriginalValue, [Life] as Life into [dbo].[DW_Fact_Asset_固定资产_new] from [dbo].[DW_Fact_Asset_固定资产_bak]with(nolock)
select * from [dbo].[DW_Fact_Asset_固定资产_new]with(nolock) order by Id asc
select * from [dbo].[DW_Fact_Asset_固定资产_new] as a with(nolock) 
left join [dbo].[DW_Fact_Asset_固定资产_bak] as b with(nolock)
on a.Id = b.Id order by a.Id asc
select * from [dbo].[DW_Fact_Material_领用物资_bak]with(nolock) order by id asc
DROP TABLE [dbo].[DW_Fact_Material_领用物资_new]
select [id] as id, CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [MaterialId] as MaterialId, [DeptId] as DeptId, [VoucherNo] as VoucherNo, [Money] as Money, [Amount] as Amount into [dbo].[DW_Fact_Material_领用物资_new] from [dbo].[DW_Fact_Material_领用物资_bak]with(nolock)
select * from [dbo].[DW_Fact_Material_领用物资_new]with(nolock) order by id asc 
select * from [dbo].[DW_Fact_Material_领用物资_new] as a with(nolock) 
left join  [dbo].[DW_Fact_Material_领用物资_bak] as b with(nolock)
on a.id = b.id order by a.id asc
select * from [dbo].[DW_Fact_Salary_人员薪资_bak]with(nolock) order by id asc
DROP TABLE [dbo].[DW_Fact_Salary_人员薪资_new]
select [id] as id, [DeptId] as DeptId, [EmpId] as EmpId, [Money] as Money, [SalaryId] as SalaryId, CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],2)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],2)) ELSE [DateId] END as DateId into [dbo].[DW_Fact_Salary_人员薪资_new] from [dbo].[DW_Fact_Salary_人员薪资_bak]with(nolock)
select * from [dbo].[DW_Fact_Salary_人员薪资_new]with(nolock) order by id asc
select * from [dbo].[DW_Fact_Salary_人员薪资_new] as a with(nolock)
left join [dbo].[DW_Fact_Salary_人员薪资_bak] as b with(nolock)
on a.id = b.id order by a.id asc
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费_new] ALTER COLUMN [DateId] varchar(8)
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费_new] ADD CONSTRAINT FK_Incomedtl_new_DateId_日期 foreign key ([DateId]) references [dbo].[DW_Dim_Date_日期]([DateId])
ALTER TABLE [dbo].[DW_Fact_Fees_会计费用_new] ADD CONSTRAINT FK_Fees_new_Date_日期 foreign key ([DateId]) references [dbo].[DW_Dim_Date_日期]([DateId])
ALTER TABLE [dbo].[DW_Fact_DrugCost_药品成本_new] ADD CONSTRAINT FK_DrugCost_new_DateId_日期 foreign key ([DateId]) references [dbo].[DW_Dim_Date_日期]([DateId])
ALTER TABLE [dbo].[DW_Fact_Asset_固定资产_new] ADD CONSTRAINT FK_Asset_new_Date_日期 foreign key ([DateId]) references [dbo].[DW_Dim_Date_日期]([DateId])
ALTER TABLE [dbo].[DW_Fact_Material_领用物资_new] ADD CONSTRAINT FK_Material_new_Date_日期 foreign key ([DateId]) references [dbo].[DW_Dim_Date_日期]([DateId])
INSERT INTO [dbo].[DW_Dim_Date_日期]([DateId])
SELECT distinct [DateId] from [dbo].[DW_Fact_Salary_人员薪资_new]
ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资_new] ADD CONSTRAINT FK_Salary_new_Date_日期 foreign key ([DateId]) references [dbo].[DW_Dim_Date_日期]([DateId])

ALTER DATABASE [YLDB_03_DW_Learn] SET RECOVERY SIMPLE
USE [YLDB_03_DW_Learn]
GO
select * from sys.database_files
DBCC SHRINKFILE('YLDB_03_DW_Learn_log',1)
--DBCC SHRINKFILE(YLDB_03_DW_Learn_log,1)
--DBCC SHRINKFILE('YLDB_03_DW_Learn_log.ldf',1)
DBCC SHRINKFILE(2,1)
GO
DBCC SHRINKFILE(YLDB_03_DW_Learn_log,1)
ALTER DATABASE [YLDB_03_DW_Learn] SET RECOVERY FULL
ALTER DATABASE [SSISDB] SET RECOVERY SIMPLE
USE [SSISDB]
GO
select * from sys.database_files
DBCC SHRINKFILE('SSISDB_log.ldf',1)
DBCC SHRINKFILE(2,1)
GO
ALTER DATABASE [SSISDB] SET RECOVERY FULL
GO