USE [YLDB_01_ODS_Learn]
GO
truncate table [dbo].[ODS_Dim_Material]
select * from [dbo].[ODS_Dim_Material]
select b.[Code], b.[Material],b.[CostItemId],c.CostCategory as CostItemName from [dbo].[ODS_Dim_Material] as b
left join [dbo].[ODS_Dim_CostType] as c
on b.CostItemId=c.id
select Code from [dbo].[ODS_Dim_Material]
select distinct Code from [dbo].[ODS_Dim_Material]
select * from [dbo].[ODS_Fact_Material_领用物资]
select MaterialCode from [dbo].[ODS_Fact_Material_领用物资]
select distinct MaterialCode from [dbo].[ODS_Fact_Material_领用物资]
select Code from [dbo].[ODS_Dim_Material] where Code in('011301000077','0314000029','010401000069')
select a.[VoucherNo], a.[MaterialCode], a.[Amount], a.[Money], a.[DeptId],b.id as MaterialId from [dbo].[ODS_Fact_Material_领用物资] as a
left join [dbo].[ODS_Dim_Material] as b
on a.MaterialCode=b.Code
truncate table [dbo].[ODS_Dim_Asset_固定资产]
select * from [dbo].[ODS_Dim_Asset_固定资产]
select * from [dbo].[ODS_Fact_Asset]
select Id from [dbo].[ODS_Fact_Asset]
select distinct Id from [dbo].[ODS_Fact_Asset]
insert into [dbo].[ODS_Dim_Asset_固定资产]([AssetId],[Asset], [AssetCode], [CostItemId], [CostItemName])
select a.[Id] as AssetId,a.[Asset], a.[AssetCode], a.[CostItemId], b.CostCategory as CostItemName
from [ODS_Fact_Asset] as a left join [dbo].[ODS_Dim_CostType] as b
on a.CostItemId = b.id
GO
USE [YLDB_03_DW_Learn]
GO
truncate table [dbo].[DW_Dim_Material_物资科目]
select * from [dbo].[DW_Dim_Material_物资科目]
insert into [dbo].[DW_Dim_Material_物资科目]
([Code], [Material], [CostItemId], [CostItemName])
select b.[Code], b.[Material],b.[CostItemId],c.CostCategory as CostItemName from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Material] as b
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_CostType] as c
on b.CostItemId=c.id
select * from [dbo].[DW_Dim_Material_物资科目]
truncate table [dbo].[DW_Fact_Material_领用物资]
select * from [dbo].[DW_Fact_Material_领用物资]
insert into [dbo].[DW_Fact_Material_领用物资]( [VoucherNo],[MaterialCode],[Amount],[Money],[DeptId],[MaterialId])
select a.[VoucherNo], a.[MaterialCode], a.[Amount], a.[Money], a.[DeptId],b.id as MaterialId from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资] as a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Material] as b
on a.MaterialCode=b.Code
truncate table [dbo].[DW_Dim_Asset_固定资产]
select * from [dbo].[DW_Dim_Asset_固定资产]
insert into [dbo].[DW_Dim_Asset_固定资产]
select  [AssetId],[Asset], [AssetCode], [CostItemId], [CostItemName] from 
[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Asset_固定资产]
truncate table [dbo].[DW_Fact_Asset_固定资产]
select * from [dbo].[DW_Fact_Asset_固定资产]
insert into [dbo].[DW_Fact_Asset_固定资产]
([DeptId], [AssetId], [OriginalValue], [Life])
select a.[DeptId],a.[Id] as AssetId, a.[OriginalValue], a.[Life] from
[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset] as a
--给[dbo].[DW_Fact_Asset_固定资产]事实表插入日期数据
SELECT COUNT(0) FROM [dbo].[DW_Fact_Asset_固定资产]
SELECT COUNT(0) FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
SELECT * FROM [dbo].[DW_Fact_Asset_固定资产]
SELECT * FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
SELECT * FROM [YLDB_Source].[dbo].[ODS_Fact_Asset]
ALTER TABLE [dbo].[DW_Fact_Asset_固定资产] ALTER COLUMN DateId VARCHAR(8)
select PurchaseDate from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
--20140228
SELECT MAX(CONVERT(VARCHAR(8),PurchaseDate,112)) FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
--19800201
SELECT MIN(CONVERT(VARCHAR(8),PurchaseDate,112)) FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
select distinct CONVERT(VARCHAR(8),PurchaseDate,112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
truncate table [dbo].[DW_Fact_Asset_固定资产]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Asset_固定资产]
ALTER TABLE [dbo].[DW_Fact_Asset_固定资产] NOCHECK CONSTRAINT FK_Asset_Dept_科室
ALTER TABLE [dbo].[DW_Fact_Asset_固定资产] CHECK CONSTRAINT FK_Asset_Dept_科室
INSERT INTO [dbo].[DW_Fact_Asset_固定资产]
([Id], [DeptId], [AssetId], [DateId], [OriginalValue], [Life])
SELECT a.[Id], a.[DeptId], b.AssetId,a.[PurchaseDate],a.[OriginalValue], a.[Life] 
FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset] as a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Asset_固定资产] as b
on a.Id = b.AssetId
UPDATE a set a.DateId = CONVERT(VARCHAR(8),PurchaseDate,112)
FROM [dbo].[DW_Fact_Asset_固定资产] AS a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset] as b
on a.Id = b.Id
--20140228
SELECT MAX(DateId) FROM [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_固定资产]
--19800201
SELECT MIN(DateId) FROM [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_固定资产]
ALTER TABLE [dbo].[DW_Fact_Asset_固定资产] ADD CONSTRAINT FK_Asset_Date_日期 foreign key (DateId) references [dbo].[DW_Dim_Date_日期](DateId)
INSERT INTO [dbo].[DW_Dim_Date_日期]
(DateId)
select distinct CONVERT(VARCHAR(8),PurchaseDate,112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
where CONVERT(VARCHAR(8),PurchaseDate,112) not in(select DateId from [dbo].[DW_Dim_Date_日期])
INSERT INTO [dbo].[DW_Dim_Date_日期]
(DateId)
select distinct DateId from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_固定资产]
where DateId not in(select DateId from [dbo].[DW_Dim_Date_日期])
select DateId from [dbo].[DW_Dim_Date_日期]
--给[dbo].[DW_Fact_Material_领用物资]事实表插入日期数据
ALTER TABLE [dbo].[DW_Fact_Material_领用物资] ALTER COLUMN DateId VARCHAR(8)
select count(0) from [dbo].[DW_Fact_Material_领用物资]
select count(0) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]
select * from [dbo].[DW_Fact_Material_领用物资]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]
select Date from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]
select CONVERT(VARCHAR(8),REPLACE(Date,'.',''),112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]
--20140104
select MAX(CONVERT(VARCHAR(8),REPLACE(Date,'.',''),112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]
--20120101
select MIN(CONVERT(VARCHAR(8),REPLACE(Date,'.',''),112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]
select distinct CONVERT(VARCHAR(8),REPLACE(Date,'.',''),112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]
truncate table [dbo].[DW_Fact_Material_领用物资]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Material]
ALTER TABLE [dbo].[DW_Fact_Material_领用物资] NOCHECK CONSTRAINT FK_Material_Dept_科室
ALTER TABLE [dbo].[DW_Fact_Material_领用物资] CHECK CONSTRAINT FK_Material_Dept_科室
insert into [dbo].[DW_Fact_Material_领用物资]
([DateId], [MaterialId], [DeptId], [VoucherNo], [Money], [Amount])
SELECT CONVERT(VARCHAR(8),REPLACE(a.[Date],'.',''),112) as DateId,b.[id] as MaterialId,  a.[DeptId],a.[VoucherNo], a.[Money],a.[Amount]  
FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资] AS a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Material] as b
on a.MaterialCode=b.Code
ALTER TABLE [dbo].[DW_Fact_Material_领用物资] ADD CONSTRAINT FK_Material_Date_日期 foreign key (DateId) references DW_Dim_Date_日期(DateId)
--20140104
SELECT MAX(DateId) from [dbo].[DW_Fact_Material_领用物资]
--20120101
SELECT MIN(DateId) from [dbo].[DW_Fact_Material_领用物资]
SELECT DISTINCT DateId from [dbo].[DW_Fact_Material_领用物资]
INSERT INTO [dbo].[DW_Dim_Date_日期]
(DateId)
SELECT DISTINCT DateId from [dbo].[DW_Fact_Material_领用物资]
where DateId not in (select [DateId] from [dbo].[DW_Dim_Date_日期])
SELECT COUNT(0) FROM [YLDB_03_DW_Learn].[dbo].[DW_Dim_Date_日期]
GO