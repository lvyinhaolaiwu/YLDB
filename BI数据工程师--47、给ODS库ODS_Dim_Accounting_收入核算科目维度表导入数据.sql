USE [YLDB_01_ODS_Learn]
GO
select 
distinct a.AccountingId,c.RepItem
--a.AccountingId,c.ItemType
from
[YLDB_Source].[dbo].[ODS_Dim_Item] as a
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId = b.SortId
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.ProfitId = c.Id
where c.ItemType='��������'
insert into [dbo].[ODS_Dim_Accounting_��������Ŀ]
select 
distinct a.AccountingId,c.RepItem
--a.AccountingId,c.ItemType
from
[YLDB_Source].[dbo].[ODS_Dim_Item] as a
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId = b.SortId
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.ProfitId = c.Id
where c.ItemType='��������'
select * from [dbo].[ODS_Dim_Accounting_��������Ŀ]
select * from [dbo].[ODS_Dim_Item]
select * from [YLDB_Source].[dbo].[ODS_Dim_Item]
truncate table [dbo].[ODS_Dim_Item]
insert into [dbo].[ODS_Dim_Item]([id], [Item], [ItemSortId], [ItemSort], [Code], [Price], [StarterRate], [ExecRate], [NurseRate], [OutStarterRate], [OutExecRate], [OutNurseRate],[AccountingId])
select [id], [Item], [ItemSortId], [ItemSort], [Code], [Price], [StarterRate], [ExecRate], [NurseRate], [OutStarterRate], [OutExecRate], [OutNurseRate],[AccountingId]
from
[YLDB_Source].[dbo].[ODS_Dim_Item]
select 
distinct a.AccountingId,c.RepItem
--a.AccountingId,c.ItemType
from
[YLDB_Source].[dbo].[ODS_Dim_Item] as a
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitItem] as b
on a.AccountingId = b.SortId
left join [YLDB_Source].[dbo].[ODS_Dim_ProfitUser] as c
on b.ProfitId = c.Id
where c.ItemType='ҵ������'
GO