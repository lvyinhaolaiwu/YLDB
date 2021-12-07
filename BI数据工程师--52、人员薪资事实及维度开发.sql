USE [YLDB_01_ODS_Learn]
GO
select * from [dbo].[ODS_Fact_Salary_人员薪资]
select CostcategoryId from [dbo].[ODS_Fact_Salary_人员薪资]
select distinct CostcategoryId from [dbo].[ODS_Fact_Salary_人员薪资]
select SalaryItem from [dbo].[ODS_Fact_Salary_人员薪资]
select distinct SalaryItem from [dbo].[ODS_Fact_Salary_人员薪资]
select [Money] from [dbo].[ODS_Fact_Salary_人员薪资]
select distinct [Money] from [dbo].[ODS_Fact_Salary_人员薪资]
select * from [dbo].[ODS_Dim_CostType] where id in(10,15,107,109)
select * from [dbo].[ODS_Dim_CostType] where id = 10
select * from [dbo].[ODS_Dim_CostType] where Code in(1100,1300,1400,1500)
select id from [dbo].[ODS_Fact_Salary_人员薪资]
select distinct id from [dbo].[ODS_Fact_Salary_人员薪资]
TRUNCATE table [dbo].[ODS_Dim_Salary_薪资科目]
SELECT * from [dbo].[ODS_Dim_Salary_薪资科目]
insert into [dbo].[ODS_Dim_Salary_薪资科目]([CostcategoryId], [CostcategoryName], [SalaryItem])
select b.id as CostcategoryId,b.CostCategory as CostcategoryName,b.Code as SalaryItem
from [dbo].[ODS_Fact_Salary_人员薪资] as a
left join [dbo].[ODS_Dim_CostType] as b
on a.CostCategoryId = b.id
select a.[id],a.[DeptId],a.[Money], a.[EmpId]
from [dbo].[ODS_Fact_Salary_人员薪资] as a
GO
USE [YLDB_03_DW_Learn]
GO
TRUNCATE table [dbo].[DW_Dim_Salary_薪资科目]
SELECT * from [dbo].[DW_Dim_Salary_薪资科目]
insert into [dbo].[DW_Dim_Salary_薪资科目]([CostcategoryId], [CostcategoryName], [SalaryItem])
select [CostcategoryId], [CostcategoryName], [SalaryItem]
from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Salary_薪资科目]
truncate table [dbo].[DW_Fact_Salary_人员薪资]
SELECT * from [dbo].[DW_Fact_Salary_人员薪资]
insert into [dbo].[DW_Fact_Salary_人员薪资]
([DeptId], [EmpId], [Money], [SalaryId])
select  a.[DeptId], a.[EmpId],a.[Money],a.[id]
from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资] as a
--给[dbo].[DW_Fact_Salary_人员薪资]事实表插入日期维度数据
ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资] ALTER COLUMN DateId VARCHAR(8)
select count(0) from [dbo].[DW_Fact_Salary_人员薪资]
select count(0) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资]
select * from [dbo].[DW_Fact_Salary_人员薪资]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资]
truncate table [dbo].[DW_Fact_Salary_人员薪资]
SELECT Period from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资]
SELECT DISTINCT Period from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资]
--201312
SELECT MAX (Period) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资]
--201201
SELECT min (Period) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Salary_薪资科目]
ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资] NOCHECK CONSTRAINT FK_Salary_Dept_科室
ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资] CHECK CONSTRAINT FK_Salary_Dept_科室
ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资] NOCHECK CONSTRAINT FK_Salary_Employee_人员
ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资] CHECK CONSTRAINT FK_Salary_Employee_人员
INSERT INTO [dbo].[DW_Fact_Salary_人员薪资]
([DeptId], [EmpId], [Money], [SalaryId], [DateId])
SELECT a.[DeptId], a.[EmpId], a.[Money],b.SalaryId,a.[Period] from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资] AS a
LEFT JOIN [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Salary_薪资科目] AS b
on a.id=b.SalaryId
INSERT INTO [dbo].[DW_Dim_Date_日期]
(DateId)
SELECT DISTINCT DateId from [dbo].[DW_Fact_Salary_人员薪资]
where DateId not in (select DateId from [dbo].[DW_Dim_Date_日期])
--201312
SELECT MAX (DateId) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_人员薪资]
--201201
SELECT min (DateId) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_人员薪资]
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_人员薪资] ADD CONSTRAINT FK_Salary_Date_日期 foreign key (DateId) references [dbo].[DW_Dim_Date_日期](DateId)
GO