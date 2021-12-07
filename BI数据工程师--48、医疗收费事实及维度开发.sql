USE [YLDB_03_DW_Learn]
GO
--[dbo].[DW_Fact_Incomedtl_ҽ���շ�]
select 
[Id], 
[DW__DeptId], 
[DateId], 
[SignTypeId], 
[DW__ItemId], 
[EmployeeId], 
[PatientNo], 
[ExecDeptid], 
[Amount], 
[Money]
from [dbo].[DW_Fact_Incomedtl_ҽ���շ�]

--[dbo].[DW_Dim_Dept_����]
select 
[DeptId], 
[ParentId], 
[Department], 
[Code], 
[DepartmentSort], 
[DepartmentSortName], 
[IsDept], 
[IsDeptName]
from [dbo].[DW_Dim_Dept_����]
--[dbo].[DW_Dim_Employee_��Ա]
select
[EmployeeId], 
[names], 
[DeptId]
from
[dbo].[DW_Dim_Employee_��Ա]
--[dbo].[DW_Dim_SignType_�շ�����]
select
[SignId], [SignName]
from
[dbo].[DW_Dim_SignType_�շ�����]
--[dbo].[DW_Dim_Item_�շ���Ŀ]
select 
[ItemId], 
[Item], 
[ItemSortId], 
[ItemSortName], 
[Code], 
[Price], 
[StarterRate], 
[ExecRate], 
[NurseRate], 
[OutStarterRate], 
[OutExecRate], 
[OutNurseRate], [AccountingId], [ProfitItem]
from
[dbo].[DW_Dim_Item_�շ���Ŀ]
--[dbo].[DW_Dim_Accounting_��������Ŀ]
select 
[AccountingID], [Accounting]
from
[dbo].[DW_Dim_Accounting_��������Ŀ]
--[dbo].[DW_Dim_Date_����]
select 
[DateId], [Date], [Year], [HalfYearId], [HalfYear], [QuarterId], [QuarterEN], [QuarterCN], [MonthId], [MonthEN], [MonthAbstract], [MonthCN], [MonthDay], [YearDay], [YearWeek], [One Third Of Month], [WeekId_EN], [WeekId_CN], [Week_EN], [Week_CN], [WeekendWorkDay]
from
[dbo].[DW_Dim_Date_����]
--��[dbo].[DW_Fact_Incomedtl_ҽ���շ�]��ʵ���������ά������
SELECT COUNT(0) FROM [dbo].[DW_Fact_Incomedtl_ҽ���շ�]
SELECT COUNT(0) FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�]
SELECT * FROM [dbo].[DW_Fact_Incomedtl_ҽ���շ�]
SELECT * FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�]
select Date from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�]
select distinct Date from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�]
select distinct CONVERT(VARCHAR(8),Date,112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�]
--20140111
select max(CONVERT(varchar(8),Date,112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�]
--20120101
select min(CONVERT(varchar(8),Date,112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�]
ALTER table [dbo].[DW_Fact_Incomedtl_ҽ���շ�]  NOCHECK CONSTRAINT FK_Incomedtl_DateId_����
alter table [dbo].[DW_Fact_Incomedtl_ҽ���շ�] alter COLUMN DateId varchar(8)
SELECT DateId from [dbo].[DW_Fact_Incomedtl_ҽ���շ�]
TRUNCATE TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType]
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] NOCHECK CONSTRAINT FK_Incomedtl_DeptId_����
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] CHECK CONSTRAINT FK_Incomedtl_DeptId_����
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] NOCHECK CONSTRAINT FK_Incomedtl_EmployeeId_��Ա
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] CHECK CONSTRAINT FK_Incomedtl_EmployeeId_��Ա
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] NOCHECK CONSTRAINT FK_Incomedtl_SignId_�շ�����
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] CHECK CONSTRAINT FK_Incomedtl_SignId_�շ�����
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] NOCHECK CONSTRAINT FK_Incomedtl_ItemId_�շ���Ŀ
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] CHECK CONSTRAINT FK_Incomedtl_ItemId_�շ���Ŀ
insert into [dbo].[DW_Fact_Incomedtl_ҽ���շ�] 
([DeptId], [DateId], [SignTypeId], [ItemId], [EmployeeId], [PatientNo], [ExecDeptid], [Amount], [Money])
select a.Deptid as DeptId,CONVERT(VARCHAR(8),Date,112) as DateId,b.SignId as SignTypeId,a.itemid as ItemId,a.Doctorid as EmployeeId,a.PatientNo,a.ExecDeptid,a.Amount,a.Money
from
[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�] as a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType] as b
on a.Sign = b.SignId
INSERT INTO [dbo].[DW_Dim_Date_����]
(DateId)
SELECT DISTINCT DateId from [dbo].[DW_Fact_Incomedtl_ҽ���շ�]
where DateId not in (select DateId from [dbo].[DW_Dim_Date_����])
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] ADD CONSTRAINT FK_Incomedtl_Date_���� foreign key (DateId) references [dbo].[DW_Dim_Date_����](DateId)
EXEC SP_RENAME '[DW_Fact_Incomedtl_ҽ���շ�].FK_Incomedtl_Date_����','FK_Incomedtl_DateId_����'
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] DROP CONSTRAINT FK_Incomedtl_Date_����
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] ADD CONSTRAINT FK_Incomedtl_DateId_���� foreign key (DateId) references [dbo].[DW_Dim_Date_����](DateId)
select count(0) from [dbo].[DW_Dim_Date_����]
update [dbo].[DW_Fact_Incomedtl_ҽ���շ�] set DateId = NULL
GO