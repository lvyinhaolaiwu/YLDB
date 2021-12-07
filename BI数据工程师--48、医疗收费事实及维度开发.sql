USE [YLDB_03_DW_Learn]
GO
--[dbo].[DW_Fact_Incomedtl_医疗收费]
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
from [dbo].[DW_Fact_Incomedtl_医疗收费]

--[dbo].[DW_Dim_Dept_科室]
select 
[DeptId], 
[ParentId], 
[Department], 
[Code], 
[DepartmentSort], 
[DepartmentSortName], 
[IsDept], 
[IsDeptName]
from [dbo].[DW_Dim_Dept_科室]
--[dbo].[DW_Dim_Employee_人员]
select
[EmployeeId], 
[names], 
[DeptId]
from
[dbo].[DW_Dim_Employee_人员]
--[dbo].[DW_Dim_SignType_收费类型]
select
[SignId], [SignName]
from
[dbo].[DW_Dim_SignType_收费类型]
--[dbo].[DW_Dim_Item_收费项目]
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
[dbo].[DW_Dim_Item_收费项目]
--[dbo].[DW_Dim_Accounting_收入核算科目]
select 
[AccountingID], [Accounting]
from
[dbo].[DW_Dim_Accounting_收入核算科目]
--[dbo].[DW_Dim_Date_日期]
select 
[DateId], [Date], [Year], [HalfYearId], [HalfYear], [QuarterId], [QuarterEN], [QuarterCN], [MonthId], [MonthEN], [MonthAbstract], [MonthCN], [MonthDay], [YearDay], [YearWeek], [One Third Of Month], [WeekId_EN], [WeekId_CN], [Week_EN], [Week_CN], [WeekendWorkDay]
from
[dbo].[DW_Dim_Date_日期]
--给[dbo].[DW_Fact_Incomedtl_医疗收费]事实表插入日期维度数据
SELECT COUNT(0) FROM [dbo].[DW_Fact_Incomedtl_医疗收费]
SELECT COUNT(0) FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]
SELECT * FROM [dbo].[DW_Fact_Incomedtl_医疗收费]
SELECT * FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]
select Date from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]
select distinct Date from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]
select distinct CONVERT(VARCHAR(8),Date,112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]
--20140111
select max(CONVERT(varchar(8),Date,112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]
--20120101
select min(CONVERT(varchar(8),Date,112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]
ALTER table [dbo].[DW_Fact_Incomedtl_医疗收费]  NOCHECK CONSTRAINT FK_Incomedtl_DateId_日期
alter table [dbo].[DW_Fact_Incomedtl_医疗收费] alter COLUMN DateId varchar(8)
SELECT DateId from [dbo].[DW_Fact_Incomedtl_医疗收费]
TRUNCATE TABLE [dbo].[DW_Fact_Incomedtl_医疗收费]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType]
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] NOCHECK CONSTRAINT FK_Incomedtl_DeptId_科室
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] CHECK CONSTRAINT FK_Incomedtl_DeptId_科室
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] NOCHECK CONSTRAINT FK_Incomedtl_EmployeeId_人员
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] CHECK CONSTRAINT FK_Incomedtl_EmployeeId_人员
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] NOCHECK CONSTRAINT FK_Incomedtl_SignId_收费类型
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] CHECK CONSTRAINT FK_Incomedtl_SignId_收费类型
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] NOCHECK CONSTRAINT FK_Incomedtl_ItemId_收费项目
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] CHECK CONSTRAINT FK_Incomedtl_ItemId_收费项目
insert into [dbo].[DW_Fact_Incomedtl_医疗收费] 
([DeptId], [DateId], [SignTypeId], [ItemId], [EmployeeId], [PatientNo], [ExecDeptid], [Amount], [Money])
select a.Deptid as DeptId,CONVERT(VARCHAR(8),Date,112) as DateId,b.SignId as SignTypeId,a.itemid as ItemId,a.Doctorid as EmployeeId,a.PatientNo,a.ExecDeptid,a.Amount,a.Money
from
[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费] as a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType] as b
on a.Sign = b.SignId
INSERT INTO [dbo].[DW_Dim_Date_日期]
(DateId)
SELECT DISTINCT DateId from [dbo].[DW_Fact_Incomedtl_医疗收费]
where DateId not in (select DateId from [dbo].[DW_Dim_Date_日期])
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] ADD CONSTRAINT FK_Incomedtl_Date_日期 foreign key (DateId) references [dbo].[DW_Dim_Date_日期](DateId)
EXEC SP_RENAME '[DW_Fact_Incomedtl_医疗收费].FK_Incomedtl_Date_日期','FK_Incomedtl_DateId_日期'
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] DROP CONSTRAINT FK_Incomedtl_Date_日期
ALTER TABLE [dbo].[DW_Fact_Incomedtl_医疗收费] ADD CONSTRAINT FK_Incomedtl_DateId_日期 foreign key (DateId) references [dbo].[DW_Dim_Date_日期](DateId)
select count(0) from [dbo].[DW_Dim_Date_日期]
update [dbo].[DW_Fact_Incomedtl_医疗收费] set DateId = NULL
GO