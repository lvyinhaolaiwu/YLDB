USE [YLDB_Source]
GO
select distinct AccountingId from
[dbo].[ODS_Dim_Drug]
select distinct DrugSortId from
[dbo].[ODS_Dim_Drug]
select * from
[dbo].[ODS_Dim_Drug] where DrugSortId=23
select distinct ItemSortId from
[dbo].[ODS_Dim_DrugSort]
select distinct CostItemId from
[dbo].[ODS_Dim_DrugSort]
select * from
[dbo].[ODS_Dim_DrugSort] where Id = 23
select * from
[dbo].[ODS_Dim_Drug] as a left join [dbo].[ODS_Dim_DrugSort] as b
on a.DrugSortId = b.Id
left join [dbo].[ODS_Dim_CostType] as c
on b.CostItemId = c.Id
select *
from
[dbo].[ODS_Dim_CostType] where Id = 42
select *
from
[dbo].[ODS_Dim_CostType] where Id = 118
select *
from
[dbo].[ODS_Dim_Item] where Id = 9
select *
from
[dbo].[ODS_Dim_Item] where Id in (7,8,9,97,237,323)
select distinct AccountingId from
[dbo].[ODS_Dim_Drug]
select * from
[dbo].[ODS_Dim_Drug] where AccountingId =1002
select * from
[dbo].[ODS_Dim_Drug] where AccountingId =1005
select * from
[dbo].[ODS_Dim_Drug] where AccountingId in (1002,1005)
select * from [dbo].[ODS_Dim_ProfitItem] where SortId = 1002
select * from [dbo].[ODS_Dim_ProfitItem] where SortId = 1005
select * from [dbo].[ODS_Dim_ProfitUser] where Id in (11,43)
select * from [dbo].[ODS_Dim_ProfitUser] where Id in (11,43,32,64)
GO
USE [YLDB_01_ODS_Learn]
GO
select distinct AccountingId from
[dbo].[ODS_Dim_Drug]
select * from
[dbo].[ODS_Dim_Drug]
select * from
[dbo].[ODS_Dim_DrugSort] where ItemSortId in(7,97,237,323)
select * from
[dbo].[ODS_Dim_DrugSort] where ItemSortName IS NULL
select * from 
[dbo].[ODS_Dim_Item] where ItemSortId in (7,97,237,323)
select * from
[dbo].[ODS_Dim_CostType]
truncate table [dbo].[ODS_Dim_CostType]
truncate table [dbo].[ODS_Dim_DrugSort]
UPDATE a set a.ProfitItem=c.RepItem from [dbo].[ODS_Dim_Drug] as a
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId = b.SortId
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.Id
select * from [dbo].[ODS_Dim_Drug] as a
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId = b.SortId
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.Id where a.AccountingId=1005
select * from [dbo].[ODS_Dim_Drug] as a
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId = b.SortId
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.Id where a.AccountingId=1002
update [dbo].[ODS_Dim_DrugSort] set ItemSortId = NULL
update [dbo].[ODS_Dim_DrugSort] set CostItemId = NULL
truncate table [dbo].[ODS_Dim_Item]
truncate table [dbo].[ODS_Dim_DrugSort]
select * from [dbo].[ODS_Dim_DrugSort] AS a
left join [dbo].[ODS_Dim_Item] as b
on a.ItemSortId = b.id
left join [dbo].[ODS_Dim_CostType] as c
on a.CostItemId = c.id
select a.*,b.ItemSort,c.CostCategory from [dbo].[ODS_Dim_DrugSort] AS a
left join [dbo].[ODS_Dim_Item] as b
on a.ItemSortId = b.ItemSortId
left join [dbo].[ODS_Dim_CostType] as c
on a.CostItemId = c.id
update a set a.ItemSortName=b.ItemSort from [dbo].[ODS_Dim_DrugSort] AS a
left join [dbo].[ODS_Dim_Item] as b
on a.ItemSortId = b.ItemSortId
left join [dbo].[ODS_Dim_CostType] as c
on a.CostItemId = c.id
update a set a.CostItemName=c.CostCategory from [dbo].[ODS_Dim_DrugSort] AS a
left join [dbo].[ODS_Dim_Item] as b
on a.ItemSortId = b.ItemSortId
left join [dbo].[ODS_Dim_CostType] as c
on a.CostItemId = c.id
update a set a.ItemSortName = b.ItemSort , a.CostItemName=c.CostCategory from [dbo].[ODS_Dim_DrugSort] AS a
left join [dbo].[ODS_Dim_Item] as b
on a.ItemSortId = b.ItemSortId
left join [dbo].[ODS_Dim_CostType] as c
on a.CostItemId = c.id
select a.PatientNo,a.ExecDeptid,a.Amount,a.Money,b.Id as DeptId,c.Id as EmployeeId,d.SignId as SignTypeId,e.id as ItemId from [dbo].[ODS_Fact_Incomedtl_ҽ���շ�] as a
left join [dbo].[ODS_Dim_Dept] as b on a.Deptid =b.Id
left join [dbo].[ODS_Dim_Employee] as c on a.Doctorid=c.Id
left join [dbo].[ODS_Dim_SignType] as d on a.Sign = d.SignId
left join [dbo].[ODS_Dim_Item] as e on a.itemid = e.id
select a.PatientNo,a.ExecDeptid,a.Amount,a.Money,a.Deptid as DeptId,a.Doctorid as EmployeeId,a.Sign as SignTypeId,a.itemid as ItemId 
from [dbo].[ODS_Fact_Incomedtl_ҽ���շ�] as a
select distinct a.DrugCode from [dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�] as a
select distinct b.DrugCode from [dbo].[ODS_Dim_Drug] as b
select b.DrugCode from [dbo].[ODS_Dim_Drug] as b
select distinct a.DrugCode from [dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�] as a
select a.DeptCode as DeptId,a.Amount,a.Money,b.Id as DrugId from [dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�] as a
left join [dbo].[ODS_Dim_Drug] as b on a.DrugCode = b.DrugCode
select * from [dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]
GO
USE [YLDB_03_DW_Learn]
GO
select * from [dbo].[DW_Dim_Drug_ҩƷ] as a
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId = b.SortId
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.Id
select * from [dbo].[DW_Dim_DrugSort_ҩƷ����]
truncate table [dbo].[DW_Dim_Item_�շ���Ŀ]
--��[dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]��ʵ�������������
select Date from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]
select CONVERT(VARCHAR(8),REPLACE(Date,'.',''),112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]
select REPLACE(Date,'.','') from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]
--20120131
select MAX(REPLACE(Date,'.','')) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]
--20120104
select MIN(REPLACE(Date,'.','')) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]
SELECT COUNT(0) FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]
SELECT COUNT(0) FROM [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
SELECT b.* FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�] as b
SELECT a.* FROM [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
select * from [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a 
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�] as b
on  a.Id = b.Id
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] NOCHECK CONSTRAINT FK_DrugCost_DateId_����
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] CHECK CONSTRAINT FK_DrugCost_DateId_����
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] DROP CONSTRAINT FK_DrugCost_DateId_����
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] ALTER COLUMN DateId nchar(10)
UPDATE a set a.DateId = NULL FROM [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
UPDATE a set a.DateId = REPLACE(b.Date,'.','')
from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a 
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�] as b
on  a.Id = b.Id
--20120131
select MAX(DateId) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
--20120104
select MIN(DateId) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
ALTER TABLE [dbo].[DW_Dim_Date_����] ALTER COLUMN DateId varchar(8)
ALTER TABLE [dbo].[DW_Dim_Date_����] ALTER COLUMN DateId varchar(8) NOT NULL
ALTER TABLE [dbo].[DW_Dim_Date_����] ALTER COLUMN DateId varchar(8) NULL
EXECUTE SP_RENAME '[dbo].[DW_Dim_Date_����].DateId','DateKey'
ALTER TABLE [dbo].[DW_Dim_Date_����] ALTER COLUMN DateKey varchar(8)
EXECUTE SP_RENAME '[dbo].[DW_Dim_Date_����].DateKey','DateId'
ALTER TABLE [dbo].[DW_Dim_Date_����] DROP CONSTRAINT PK_DW_DIM_DATE_����
ALTER TABLE [dbo].[DW_Dim_Date_����] ADD CONSTRAINT PK_DW_DIM_DATE_���� PRIMARY KEY(DateId)
ALTER TABLE [dbo].[DW_Fact_Material_��������] NOCHECK CONSTRAINT FK_Material_Date_����
ALTER TABLE [dbo].[DW_Fact_Material_��������] CHECK CONSTRAINT FK_Material_Date_����
ALTER TABLE [dbo].[DW_Fact_Material_��������] DROP CONSTRAINT FK_Material_Date_����
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�] NOCHECK CONSTRAINT FK_Asset_Date_����
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�] CHECK CONSTRAINT FK_Asset_Date_����
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�] DROP CONSTRAINT FK_Asset_Date_����
ALTER TABLE [dbo].[DW_Fact_Fees_��Ʒ���] NOCHECK CONSTRAINT FK_Fees_Date_����
ALTER TABLE [dbo].[DW_Fact_Fees_��Ʒ���] CHECK CONSTRAINT FK_Fees_Date_����
ALTER TABLE [dbo].[DW_Fact_Fees_��Ʒ���] DROP CONSTRAINT FK_Fees_Date_����
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] NOCHECK CONSTRAINT FK_Salary_Date_����
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] CHECK CONSTRAINT FK_Salary_Date_����
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] DROP CONSTRAINT FK_Salary_Date_����
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] NOCHECK CONSTRAINT FK_DrugCost_DateId_����
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] CHECK CONSTRAINT FK_DrugCost_DateId_����
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] NOCHECK CONSTRAINT FK_Incomedtl_DateId_����
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] CHECK CONSTRAINT FK_Incomedtl_DateId_����
INSERT INTO [dbo].[DW_Dim_Date_����]
(DateId)
SELECT DISTINCT DateId from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] ADD CONSTRAINT FK_DrugCost_DateId_���� foreign key(DateId) references [dbo].[DW_Dim_Date_����](DateId)
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] ALTER COLUMN DateId VARCHAR(8)
SELECT * FROM [dbo].[DW_Dim_Date_����]
GO