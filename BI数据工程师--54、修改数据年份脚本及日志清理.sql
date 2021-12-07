USE [YLDB_03_DW_Learn]
GO
select * from [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak]with(nolock) 
select CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE([DateId],'2012','2020')) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE([DateId],'2013','2021')) ELSE [DateId] END
from [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak]with(nolock)
select REPLACE('20122012','2012','2020')
select REPLACE('20132013','2013','2021')
select * from [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak] as a with(nolock)
left join [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new] as b with(nolock)
on a.Id = b.Id order by a.Id asc
SELECT * into [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new] from [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak]with(nolock)
TRUNCATE TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new]
DROP TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new]
INSERT INTO [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new]
select [DeptId], CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END, [SignTypeId], [ItemId], [EmployeeId], [PatientNo], [ExecDeptid], [Amount], [Money]
FROM [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak]with(nolock)
SELECT [Id] as Id,[DeptId] AS DeptId, CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [SignTypeId] as SignTypeId, [ItemId] as ItemId, [EmployeeId] as EmployeeId, [PatientNo] as PatientNo, [ExecDeptid] as ExecDeptid, [Amount] as Amount, [Money] as Money into [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new] from [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak]with(nolock)
SELECT * FROM [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new]with(nolock) order by Id asc
select 
SELECT COUNT(*) FROM [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new]with(nolock)
select * from [dbo].[DW_Fact_Fees_��Ʒ���_bak]with(nolock)
drop table [dbo].[DW_Fact_Fees_��Ʒ���_new]
SELECT [FeesId] as FeesId, [VoucherNo] as VoucherNo,  CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [Abstract] as Abstract, [DeptId] as DeptId, [Debit] as Debit, [Period] as Period, [SubjectId] as SubjectId into [dbo].[DW_Fact_Fees_��Ʒ���_new] FROM [dbo].[DW_Fact_Fees_��Ʒ���_bak]with(nolock)
select * from  [dbo].[DW_Fact_Fees_��Ʒ���_new] as a with(nolock)
left join [dbo].[DW_Fact_Fees_��Ʒ���_bak] as b with(nolock)
on a.FeesId = b.FeesId order by a.FeesId asc 
SELECT COUNT(*) FROM [dbo].[DW_Fact_Fees_��Ʒ���_new]with(nolock)
SELECT * FROM [dbo].[DW_Fact_Fees_��Ʒ���_new]with(nolock) order by FeesId asc
select * from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_bak]with(nolock)
DROP TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_new]
select [Id] as Id, CASE WHEN LEFT([DateId],4)='2012' THEN convert(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [DeptId] as DeptId, [DrugId] as DrugId, [Amount] as Amount, [Money] as Money into [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_new] from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_bak]with(nolock)
select * from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_new]with(nolock) order by Id asc
select * from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_new] as a with(nolock) 
left join [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_bak] as b with(nolock)
on a.Id = b.Id order by a.Id asc
select * from [dbo].[DW_Fact_Asset_�̶��ʲ�_bak]with(nolock)
DROP TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�_new]
select [Id] as Id, [DeptId] as DeptId, [AssetId] as AssetId, CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [OriginalValue] as OriginalValue, [Life] as Life into [dbo].[DW_Fact_Asset_�̶��ʲ�_new] from [dbo].[DW_Fact_Asset_�̶��ʲ�_bak]with(nolock)
select * from [dbo].[DW_Fact_Asset_�̶��ʲ�_new]with(nolock) order by Id asc
select * from [dbo].[DW_Fact_Asset_�̶��ʲ�_new] as a with(nolock) 
left join [dbo].[DW_Fact_Asset_�̶��ʲ�_bak] as b with(nolock)
on a.Id = b.Id order by a.Id asc
select * from [dbo].[DW_Fact_Material_��������_bak]with(nolock) order by id asc
DROP TABLE [dbo].[DW_Fact_Material_��������_new]
select [id] as id, CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],4)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],4)) ELSE [DateId] END as DateId, [MaterialId] as MaterialId, [DeptId] as DeptId, [VoucherNo] as VoucherNo, [Money] as Money, [Amount] as Amount into [dbo].[DW_Fact_Material_��������_new] from [dbo].[DW_Fact_Material_��������_bak]with(nolock)
select * from [dbo].[DW_Fact_Material_��������_new]with(nolock) order by id asc 
select * from [dbo].[DW_Fact_Material_��������_new] as a with(nolock) 
left join  [dbo].[DW_Fact_Material_��������_bak] as b with(nolock)
on a.id = b.id order by a.id asc
select * from [dbo].[DW_Fact_Salary_��Աн��_bak]with(nolock) order by id asc
DROP TABLE [dbo].[DW_Fact_Salary_��Աн��_new]
select [id] as id, [DeptId] as DeptId, [EmpId] as EmpId, [Money] as Money, [SalaryId] as SalaryId, CASE WHEN LEFT([DateId],4)='2012' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2012','2020')+RIGHT([DateId],2)) WHEN LEFT([DateId],4)='2013' THEN CONVERT(VARCHAR(8),REPLACE(LEFT([DateId],4),'2013','2021')+RIGHT([DateId],2)) ELSE [DateId] END as DateId into [dbo].[DW_Fact_Salary_��Աн��_new] from [dbo].[DW_Fact_Salary_��Աн��_bak]with(nolock)
select * from [dbo].[DW_Fact_Salary_��Աн��_new]with(nolock) order by id asc
select * from [dbo].[DW_Fact_Salary_��Աн��_new] as a with(nolock)
left join [dbo].[DW_Fact_Salary_��Աн��_bak] as b with(nolock)
on a.id = b.id order by a.id asc
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new] ALTER COLUMN [DateId] varchar(8)
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�_new] ADD CONSTRAINT FK_Incomedtl_new_DateId_���� foreign key ([DateId]) references [dbo].[DW_Dim_Date_����]([DateId])
ALTER TABLE [dbo].[DW_Fact_Fees_��Ʒ���_new] ADD CONSTRAINT FK_Fees_new_Date_���� foreign key ([DateId]) references [dbo].[DW_Dim_Date_����]([DateId])
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_new] ADD CONSTRAINT FK_DrugCost_new_DateId_���� foreign key ([DateId]) references [dbo].[DW_Dim_Date_����]([DateId])
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�_new] ADD CONSTRAINT FK_Asset_new_Date_���� foreign key ([DateId]) references [dbo].[DW_Dim_Date_����]([DateId])
ALTER TABLE [dbo].[DW_Fact_Material_��������_new] ADD CONSTRAINT FK_Material_new_Date_���� foreign key ([DateId]) references [dbo].[DW_Dim_Date_����]([DateId])
INSERT INTO [dbo].[DW_Dim_Date_����]([DateId])
SELECT distinct [DateId] from [dbo].[DW_Fact_Salary_��Աн��_new]
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��_new] ADD CONSTRAINT FK_Salary_new_Date_���� foreign key ([DateId]) references [dbo].[DW_Dim_Date_����]([DateId])

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