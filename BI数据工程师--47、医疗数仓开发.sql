select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_ҽ���շ�];
select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType];
insert into [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_SignType_�շ�����]
select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_SignType_�շ�����];
select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item];
insert into [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_�շ���Ŀ]
select [Item]
      ,[ItemSortId]
      ,[ItemSort]
      ,[Code]
      ,[Price]
      ,[StarterRate]
      ,[ExecRate]
      ,[NurseRate]
      ,[OutStarterRate]
      ,[OutExecRate]
      ,[OutNurseRate]
      ,[AccountingId]
from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_�շ���Ŀ];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_�շ���Ŀ] where AccountingId = 996;
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] where SortId = 996;
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] where ID in (3,35);
select Itemtype from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser];
select distinct Itemtype from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] where Itemtype = 'ҵ������';
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as a left join
[DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.ID = b.Profitid
where Itemtype = 'ҵ������';
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] where Itemtype = '��������';
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as a left join
[DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.ID = b.Profitid
where Itemtype = '��������';
--select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--select * from 
select a.*,c.* from 
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_�շ���Ŀ] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID;
select a.*,c.* from 
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_�շ���Ŀ] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID where c.Itemtype = 'ҵ������';
select a.*,c.* from 
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_�շ���Ŀ] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID where c.Itemtype = '��������';
update a set a.ProfitItem=NULL from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a;
update a set a.ProfitItem=c.RepItem 
from
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_�շ���Ŀ] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID;
/**
�����Ŀά�ȱ�
**/
--select a.AccountingId,c.RepItem from 
select a.AccountingId,a.ProfitItem from 
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_�շ���Ŀ] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID;

select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Dept];
insert into [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Dept_����]
select [ParentId]
      ,[Department]
      ,[Code]
      ,[DepartmentSort]
      ,[DepartmentSortName]
      ,[IsDept]
      ,[IsDeptName]
from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Dept];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Dept_����];
select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Employee];
insert into [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Employee_��Ա](names,DeptId)
select [names],[DeptId] from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Employee];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Employee_��Ա];

select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser];

USE [YLDB_01_ODS_Learn]
GO
--[dbo].[ODS_Fact_Incomedtl_ҽ���շ�]
select
[Id], [Date], [Sign], [PatientNo], [itemid], [AccountingId], [Deptid], [ExecDeptid], [Doctorid], [Amount], [Money]
from
[dbo].[ODS_Fact_Incomedtl_ҽ���շ�]
--[dbo].[ODS_Dim_Employee]
select
[Id], [names], [DeptId]
from
[dbo].[ODS_Dim_Employee]
--[dbo].[ODS_Dim_Dept]
select
[Id], 
[ParentId], 
[Department], 
[Code], 
[DepartmentSort], 
[DepartmentSortName], 
[IsDept], 
[IsDeptName]
from
[dbo].[ODS_Dim_Dept]
----[dbo].[ODS_Dim_Item]
select
[id], [Item], [ItemSortId], [ItemSort], [Code], [Price], [StarterRate], [ExecRate], [NurseRate], [OutStarterRate], [OutExecRate], [OutNurseRate], [AccountingId], [ProfitItem]
from
[dbo].[ODS_Dim_Item]
--[dbo].[ODS_Dim_SignType]
select
[SignId], [SignName]
from
[dbo].[ODS_Dim_SignType]
--[dbo].[ODS_Dim_Accounting_��������Ŀ]
select 
[AccountingID], [Accounting]
from
[dbo].[ODS_Dim_Accounting_��������Ŀ]
GO

USE [YLDB_03_DW_Learn]
GO
--[dbo].[DW_Fact_Incomedtl_ҽ���շ�]
select
[Id], [DW__DeptId], [DateId], [SignTypeId], [DW__ItemId], [EmployeeId], [PatientNo], [ExecDeptid], [Amount], [Money]
from
[dbo].[DW_Fact_Incomedtl_ҽ���շ�]
--[dbo].[DW_Dim_Employee_��Ա]
select [EmployeeId], [names], [DeptId]
from
[dbo].[DW_Dim_Employee_��Ա]
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
from
[dbo].[DW_Dim_Dept_����]
--[dbo].[DW_Dim_Item_�շ���Ŀ]
select
[ItemId], 
[DW__AccountingID], 
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
[OutNurseRate], 
[AccountingId], 
[ProfitItem]
from
[dbo].[DW_Dim_Item_�շ���Ŀ]
--[dbo].[DW_Dim_SignType_�շ�����]
select
[SignId], [SignName]
from
[dbo].[DW_Dim_SignType_�շ�����]
--[dbo].[DW_Dim_Accounting_��������Ŀ]
select
[AccountingID], [Accounting]
from
[dbo].[DW_Dim_Accounting_��������Ŀ]
GO