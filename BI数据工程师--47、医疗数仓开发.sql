select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费];
select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType];
insert into [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_SignType_收费类型]
select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_SignType_收费类型];
select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item];
insert into [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_收费项目]
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
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_收费项目];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_收费项目] where AccountingId = 996;
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] where SortId = 996;
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] where ID in (3,35);
select Itemtype from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser];
select distinct Itemtype from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] where Itemtype = '业务收入';
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as a left join
[DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.ID = b.Profitid
where Itemtype = '业务收入';
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] where Itemtype = '核算收入';
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as a left join
[DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.ID = b.Profitid
where Itemtype = '核算收入';
--select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--select * from 
select a.*,c.* from 
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_收费项目] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID;
select a.*,c.* from 
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_收费项目] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID where c.Itemtype = '业务收入';
select a.*,c.* from 
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_收费项目] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID where c.Itemtype = '核算收入';
update a set a.ProfitItem=NULL from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a;
update a set a.ProfitItem=c.RepItem 
from
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_收费项目] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID;
/**
核算科目维度表
**/
--select a.AccountingId,c.RepItem from 
select a.AccountingId,a.ProfitItem from 
[DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item] as a
--[DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Item_收费项目] as a
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId=b.SortId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.Profitid = c.ID;

select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Dept];
insert into [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Dept_科室]
select [ParentId]
      ,[Department]
      ,[Code]
      ,[DepartmentSort]
      ,[DepartmentSortName]
      ,[IsDept]
      ,[IsDeptName]
from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Dept];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Dept_科室];
select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Employee];
insert into [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Employee_人员](names,DeptId)
select [names],[DeptId] from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Employee];
select * from [DESKTOP-NNRODTU].[YLDB_03_DW_Learn].[dbo].[DW_Dim_Employee_人员];

select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitItem];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_ProfitUser];

USE [YLDB_01_ODS_Learn]
GO
--[dbo].[ODS_Fact_Incomedtl_医疗收费]
select
[Id], [Date], [Sign], [PatientNo], [itemid], [AccountingId], [Deptid], [ExecDeptid], [Doctorid], [Amount], [Money]
from
[dbo].[ODS_Fact_Incomedtl_医疗收费]
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
--[dbo].[ODS_Dim_Accounting_收入核算科目]
select 
[AccountingID], [Accounting]
from
[dbo].[ODS_Dim_Accounting_收入核算科目]
GO

USE [YLDB_03_DW_Learn]
GO
--[dbo].[DW_Fact_Incomedtl_医疗收费]
select
[Id], [DW__DeptId], [DateId], [SignTypeId], [DW__ItemId], [EmployeeId], [PatientNo], [ExecDeptid], [Amount], [Money]
from
[dbo].[DW_Fact_Incomedtl_医疗收费]
--[dbo].[DW_Dim_Employee_人员]
select [EmployeeId], [names], [DeptId]
from
[dbo].[DW_Dim_Employee_人员]
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
from
[dbo].[DW_Dim_Dept_科室]
--[dbo].[DW_Dim_Item_收费项目]
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
[dbo].[DW_Dim_Item_收费项目]
--[dbo].[DW_Dim_SignType_收费类型]
select
[SignId], [SignName]
from
[dbo].[DW_Dim_SignType_收费类型]
--[dbo].[DW_Dim_Accounting_收入核算科目]
select
[AccountingID], [Accounting]
from
[dbo].[DW_Dim_Accounting_收入核算科目]
GO