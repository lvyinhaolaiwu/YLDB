select * from [YLDB_Source].[dbo].[ODS_Dim_Subject]
USE [YLDB_01_ODS_Learn]
GO
select * from [dbo].[ODS_Dim_Subject]
select a.*,b.CostCategory
from [dbo].[ODS_Dim_Subject] as a 
left join [dbo].[ODS_Dim_CostType] as b
on a.CostItemId = b.id
select SubjectCode from [dbo].[ODS_Dim_Subject]
select distinct SubjectCode from [dbo].[ODS_Dim_Subject]
select SubjectCode from [dbo].[ODS_Fact_Fees_会计费用]
select distinct SubjectCode from [dbo].[ODS_Fact_Fees_会计费用]
select SubjectCode from [dbo].[ODS_Dim_Subject] where SubjectCode in ('5001061203','50010615','5301039906')
select * from [dbo].[ODS_Fact_Fees_会计费用]
select a.Id,a.Period,a.VoucherNo,a.Abstract,a.Debit,a.DeptId,b.Id as SubjectId from [dbo].[ODS_Fact_Fees_会计费用] as a
left join [dbo].[ODS_Dim_Subject] as b on a.SubjectCode = b.SubjectCode
select a.Period,a.VoucherNo,a.Abstract,a.Debit,a.DeptId,b.Id as SubjectId from [dbo].[ODS_Fact_Fees_会计费用] as a
left join [dbo].[ODS_Dim_Subject] as b on a.SubjectCode = b.SubjectCode
GO
USE [YLDB_03_DW_Learn]
GO
select * from [dbo].[DW_Dim_Subject_会计科目]
select * from [dbo].[DW_Fact_Fees_会计费用]
truncate table [dbo].[DW_Dim_Subject_会计科目]
INSERT INTO [dbo].[DW_Dim_Subject_会计科目]
([SubjectId], [SubjectCode], [Subject], [CostItemId], [CostItemName])
select a.[Id] as SubjectId,a.[SubjectCode], a.[Subject] ,a.[CostItemId],b.CostCategory as CostItemName
from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Subject] as a 
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_CostType] as b
on a.CostItemId = b.id
INSERT INTO [dbo].[DW_Dim_Subject_会计科目]
([SubjectCode], [Subject], [CostItemId], [CostItemName])
select a.[SubjectCode], a.[Subject] ,a.[CostItemId],b.CostCategory as CostItemName
from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Subject] as a 
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_CostType] as b
on a.CostItemId = b.id
truncate table [dbo].[DW_Fact_Fees_会计费用]
insert INTO  [dbo].[DW_Fact_Fees_会计费用]
( [FeesId],[Period],[VoucherNo],  [Abstract],  [Debit],[DeptId], [SubjectId])
select a.Id as FeeId,a.[Period],a.[VoucherNo],a.[Abstract],a.[Debit],a.[DeptId],b.[Id] as SubjectId from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用] as a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Subject] as b on a.SubjectCode = b.SubjectCode
insert INTO  [dbo].[DW_Fact_Fees_会计费用]
( [Period],[VoucherNo],  [Abstract],  [Debit],[DeptId], [SubjectId])
select a.[Period],a.[VoucherNo],a.[Abstract],a.[Debit],a.[DeptId],b.[Id] as SubjectId from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用] as a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Subject] as b on a.SubjectCode = b.SubjectCode
--给[dbo].[DW_Fact_Fees_会计费用]事实表插入日期维度数据
select count(0) from [dbo].[DW_Fact_Fees_会计费用]
select count(0) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用]
select * from [dbo].[DW_Fact_Fees_会计费用]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用]
truncate table [dbo].[DW_Fact_Fees_会计费用]
ALTER TABLE [dbo].[DW_Fact_Fees_会计费用] ALTER COLUMN DateId varchar(8)
select Date from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用]
select distinct Date from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用]
select distinct CONVERT(VARCHAR(8),replace(Date,'.',''),112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用]
--20131130
select MAX(CONVERT(VARCHAR(8),replace(Date,'.',''),112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用]
--20120107
select MIN(CONVERT(VARCHAR(8),replace(Date,'.',''),112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Subject]
select count(0) from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Subject]
ALTER TABLE [dbo].[DW_Fact_Fees_会计费用] NOCHECK CONSTRAINT FK_Fees_Subject_会计科目
ALTER TABLE [dbo].[DW_Fact_Fees_会计费用] CHECK CONSTRAINT FK_Fees_Subject_会计科目
ALTER TABLE [dbo].[DW_Fact_Fees_会计费用] NOCHECK CONSTRAINT FK_Fees_Dept_科室
ALTER TABLE [dbo].[DW_Fact_Fees_会计费用] CHECK CONSTRAINT FK_Fees_Dept_科室
INSERT INTO [dbo].[DW_Fact_Fees_会计费用]
( [VoucherNo], [DateId], [Abstract], [DeptId], [Debit], [Period], [SubjectId])
select a.VoucherNo,CONVERT(VARCHAR(8),REPLACE(a.Date,'.',''),112) as DateId,a.Abstract,a.DeptId,a.Debit,a.Period,b.Id as SubjectId
from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用] as a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Subject] as b
on a.SubjectCode=b.SubjectCode
ALTER TABLE [dbo].[DW_Fact_Fees_会计费用] ADD CONSTRAINT FK_Fees_Date_日期 foreign key (DateId) references [dbo].[DW_Dim_Date_日期](DateId)
GO
