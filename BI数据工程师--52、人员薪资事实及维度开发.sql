USE [YLDB_01_ODS_Learn]
GO
select * from [dbo].[ODS_Fact_Salary_��Աн��]
select CostcategoryId from [dbo].[ODS_Fact_Salary_��Աн��]
select distinct CostcategoryId from [dbo].[ODS_Fact_Salary_��Աн��]
select SalaryItem from [dbo].[ODS_Fact_Salary_��Աн��]
select distinct SalaryItem from [dbo].[ODS_Fact_Salary_��Աн��]
select [Money] from [dbo].[ODS_Fact_Salary_��Աн��]
select distinct [Money] from [dbo].[ODS_Fact_Salary_��Աн��]
select * from [dbo].[ODS_Dim_CostType] where id in(10,15,107,109)
select * from [dbo].[ODS_Dim_CostType] where id = 10
select * from [dbo].[ODS_Dim_CostType] where Code in(1100,1300,1400,1500)
select id from [dbo].[ODS_Fact_Salary_��Աн��]
select distinct id from [dbo].[ODS_Fact_Salary_��Աн��]
TRUNCATE table [dbo].[ODS_Dim_Salary_н�ʿ�Ŀ]
SELECT * from [dbo].[ODS_Dim_Salary_н�ʿ�Ŀ]
insert into [dbo].[ODS_Dim_Salary_н�ʿ�Ŀ]([CostcategoryId], [CostcategoryName], [SalaryItem])
select b.id as CostcategoryId,b.CostCategory as CostcategoryName,b.Code as SalaryItem
from [dbo].[ODS_Fact_Salary_��Աн��] as a
left join [dbo].[ODS_Dim_CostType] as b
on a.CostCategoryId = b.id
select a.[id],a.[DeptId],a.[Money], a.[EmpId]
from [dbo].[ODS_Fact_Salary_��Աн��] as a
GO
USE [YLDB_03_DW_Learn]
GO
TRUNCATE table [dbo].[DW_Dim_Salary_н�ʿ�Ŀ]
SELECT * from [dbo].[DW_Dim_Salary_н�ʿ�Ŀ]
insert into [dbo].[DW_Dim_Salary_н�ʿ�Ŀ]([CostcategoryId], [CostcategoryName], [SalaryItem])
select [CostcategoryId], [CostcategoryName], [SalaryItem]
from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Salary_н�ʿ�Ŀ]
truncate table [dbo].[DW_Fact_Salary_��Աн��]
SELECT * from [dbo].[DW_Fact_Salary_��Աн��]
insert into [dbo].[DW_Fact_Salary_��Աн��]
([DeptId], [EmpId], [Money], [SalaryId])
select  a.[DeptId], a.[EmpId],a.[Money],a.[id]
from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_��Աн��] as a
--��[dbo].[DW_Fact_Salary_��Աн��]��ʵ���������ά������
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] ALTER COLUMN DateId VARCHAR(8)
select count(0) from [dbo].[DW_Fact_Salary_��Աн��]
select count(0) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_��Աн��]
select * from [dbo].[DW_Fact_Salary_��Աн��]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_��Աн��]
truncate table [dbo].[DW_Fact_Salary_��Աн��]
SELECT Period from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_��Աн��]
SELECT DISTINCT Period from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_��Աн��]
--201312
SELECT MAX (Period) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_��Աн��]
--201201
SELECT min (Period) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_��Աн��]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Salary_н�ʿ�Ŀ]
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] NOCHECK CONSTRAINT FK_Salary_Dept_����
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] CHECK CONSTRAINT FK_Salary_Dept_����
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] NOCHECK CONSTRAINT FK_Salary_Employee_��Ա
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] CHECK CONSTRAINT FK_Salary_Employee_��Ա
INSERT INTO [dbo].[DW_Fact_Salary_��Աн��]
([DeptId], [EmpId], [Money], [SalaryId], [DateId])
SELECT a.[DeptId], a.[EmpId], a.[Money],b.SalaryId,a.[Period] from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_��Աн��] AS a
LEFT JOIN [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Salary_н�ʿ�Ŀ] AS b
on a.id=b.SalaryId
INSERT INTO [dbo].[DW_Dim_Date_����]
(DateId)
SELECT DISTINCT DateId from [dbo].[DW_Fact_Salary_��Աн��]
where DateId not in (select DateId from [dbo].[DW_Dim_Date_����])
--201312
SELECT MAX (DateId) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_��Աн��]
--201201
SELECT min (DateId) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_��Աн��]
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_��Աн��] ADD CONSTRAINT FK_Salary_Date_���� foreign key (DateId) references [dbo].[DW_Dim_Date_����](DateId)
GO