USE [YLDB_01_ODS_Learn]
GO
truncate table [dbo].[ODS_Dim_Material]
select * from [dbo].[ODS_Dim_Material]
select b.[Code], b.[Material],b.[CostItemId],c.CostCategory as CostItemName from [dbo].[ODS_Dim_Material] as b
left join [dbo].[ODS_Dim_CostType] as c
on b.CostItemId=c.id
select Code from [dbo].[ODS_Dim_Material]
select distinct Code from [dbo].[ODS_Dim_Material]
select * from [dbo].[ODS_Fact_Material_��������]
select MaterialCode from [dbo].[ODS_Fact_Material_��������]
select distinct MaterialCode from [dbo].[ODS_Fact_Material_��������]
select Code from [dbo].[ODS_Dim_Material] where Code in('011301000077','0314000029','010401000069')
select a.[VoucherNo], a.[MaterialCode], a.[Amount], a.[Money], a.[DeptId],b.id as MaterialId from [dbo].[ODS_Fact_Material_��������] as a
left join [dbo].[ODS_Dim_Material] as b
on a.MaterialCode=b.Code
truncate table [dbo].[ODS_Dim_Asset_�̶��ʲ�]
select * from [dbo].[ODS_Dim_Asset_�̶��ʲ�]
select * from [dbo].[ODS_Fact_Asset]
select Id from [dbo].[ODS_Fact_Asset]
select distinct Id from [dbo].[ODS_Fact_Asset]
insert into [dbo].[ODS_Dim_Asset_�̶��ʲ�]([AssetId],[Asset], [AssetCode], [CostItemId], [CostItemName])
select a.[Id] as AssetId,a.[Asset], a.[AssetCode], a.[CostItemId], b.CostCategory as CostItemName
from [ODS_Fact_Asset] as a left join [dbo].[ODS_Dim_CostType] as b
on a.CostItemId = b.id
GO
USE [YLDB_03_DW_Learn]
GO
truncate table [dbo].[DW_Dim_Material_���ʿ�Ŀ]
select * from [dbo].[DW_Dim_Material_���ʿ�Ŀ]
insert into [dbo].[DW_Dim_Material_���ʿ�Ŀ]
([Code], [Material], [CostItemId], [CostItemName])
select b.[Code], b.[Material],b.[CostItemId],c.CostCategory as CostItemName from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Material] as b
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_CostType] as c
on b.CostItemId=c.id
select * from [dbo].[DW_Dim_Material_���ʿ�Ŀ]
truncate table [dbo].[DW_Fact_Material_��������]
select * from [dbo].[DW_Fact_Material_��������]
insert into [dbo].[DW_Fact_Material_��������]( [VoucherNo],[MaterialCode],[Amount],[Money],[DeptId],[MaterialId])
select a.[VoucherNo], a.[MaterialCode], a.[Amount], a.[Money], a.[DeptId],b.id as MaterialId from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������] as a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Material] as b
on a.MaterialCode=b.Code
truncate table [dbo].[DW_Dim_Asset_�̶��ʲ�]
select * from [dbo].[DW_Dim_Asset_�̶��ʲ�]
insert into [dbo].[DW_Dim_Asset_�̶��ʲ�]
select  [AssetId],[Asset], [AssetCode], [CostItemId], [CostItemName] from 
[YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Asset_�̶��ʲ�]
truncate table [dbo].[DW_Fact_Asset_�̶��ʲ�]
select * from [dbo].[DW_Fact_Asset_�̶��ʲ�]
insert into [dbo].[DW_Fact_Asset_�̶��ʲ�]
([DeptId], [AssetId], [OriginalValue], [Life])
select a.[DeptId],a.[Id] as AssetId, a.[OriginalValue], a.[Life] from
[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset] as a
--��[dbo].[DW_Fact_Asset_�̶��ʲ�]��ʵ�������������
SELECT COUNT(0) FROM [dbo].[DW_Fact_Asset_�̶��ʲ�]
SELECT COUNT(0) FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
SELECT * FROM [dbo].[DW_Fact_Asset_�̶��ʲ�]
SELECT * FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
SELECT * FROM [YLDB_Source].[dbo].[ODS_Fact_Asset]
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�] ALTER COLUMN DateId VARCHAR(8)
select PurchaseDate from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
--20140228
SELECT MAX(CONVERT(VARCHAR(8),PurchaseDate,112)) FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
--19800201
SELECT MIN(CONVERT(VARCHAR(8),PurchaseDate,112)) FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
select distinct CONVERT(VARCHAR(8),PurchaseDate,112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
truncate table [dbo].[DW_Fact_Asset_�̶��ʲ�]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Asset_�̶��ʲ�]
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�] NOCHECK CONSTRAINT FK_Asset_Dept_����
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�] CHECK CONSTRAINT FK_Asset_Dept_����
INSERT INTO [dbo].[DW_Fact_Asset_�̶��ʲ�]
([Id], [DeptId], [AssetId], [DateId], [OriginalValue], [Life])
SELECT a.[Id], a.[DeptId], b.AssetId,a.[PurchaseDate],a.[OriginalValue], a.[Life] 
FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset] as a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Asset_�̶��ʲ�] as b
on a.Id = b.AssetId
UPDATE a set a.DateId = CONVERT(VARCHAR(8),PurchaseDate,112)
FROM [dbo].[DW_Fact_Asset_�̶��ʲ�] AS a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset] as b
on a.Id = b.Id
--20140228
SELECT MAX(DateId) FROM [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_�̶��ʲ�]
--19800201
SELECT MIN(DateId) FROM [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_�̶��ʲ�]
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�] ADD CONSTRAINT FK_Asset_Date_���� foreign key (DateId) references [dbo].[DW_Dim_Date_����](DateId)
INSERT INTO [dbo].[DW_Dim_Date_����]
(DateId)
select distinct CONVERT(VARCHAR(8),PurchaseDate,112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset]
where CONVERT(VARCHAR(8),PurchaseDate,112) not in(select DateId from [dbo].[DW_Dim_Date_����])
INSERT INTO [dbo].[DW_Dim_Date_����]
(DateId)
select distinct DateId from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_�̶��ʲ�]
where DateId not in(select DateId from [dbo].[DW_Dim_Date_����])
select DateId from [dbo].[DW_Dim_Date_����]
--��[dbo].[DW_Fact_Material_��������]��ʵ�������������
ALTER TABLE [dbo].[DW_Fact_Material_��������] ALTER COLUMN DateId VARCHAR(8)
select count(0) from [dbo].[DW_Fact_Material_��������]
select count(0) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������]
select * from [dbo].[DW_Fact_Material_��������]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������]
select Date from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������]
select CONVERT(VARCHAR(8),REPLACE(Date,'.',''),112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������]
--20140104
select MAX(CONVERT(VARCHAR(8),REPLACE(Date,'.',''),112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������]
--20120101
select MIN(CONVERT(VARCHAR(8),REPLACE(Date,'.',''),112)) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������]
select distinct CONVERT(VARCHAR(8),REPLACE(Date,'.',''),112) from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������]
truncate table [dbo].[DW_Fact_Material_��������]
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Material]
ALTER TABLE [dbo].[DW_Fact_Material_��������] NOCHECK CONSTRAINT FK_Material_Dept_����
ALTER TABLE [dbo].[DW_Fact_Material_��������] CHECK CONSTRAINT FK_Material_Dept_����
insert into [dbo].[DW_Fact_Material_��������]
([DateId], [MaterialId], [DeptId], [VoucherNo], [Money], [Amount])
SELECT CONVERT(VARCHAR(8),REPLACE(a.[Date],'.',''),112) as DateId,b.[id] as MaterialId,  a.[DeptId],a.[VoucherNo], a.[Money],a.[Amount]  
FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������] AS a
left join [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Material] as b
on a.MaterialCode=b.Code
ALTER TABLE [dbo].[DW_Fact_Material_��������] ADD CONSTRAINT FK_Material_Date_���� foreign key (DateId) references DW_Dim_Date_����(DateId)
--20140104
SELECT MAX(DateId) from [dbo].[DW_Fact_Material_��������]
--20120101
SELECT MIN(DateId) from [dbo].[DW_Fact_Material_��������]
SELECT DISTINCT DateId from [dbo].[DW_Fact_Material_��������]
INSERT INTO [dbo].[DW_Dim_Date_����]
(DateId)
SELECT DISTINCT DateId from [dbo].[DW_Fact_Material_��������]
where DateId not in (select [DateId] from [dbo].[DW_Dim_Date_����])
SELECT COUNT(0) FROM [YLDB_03_DW_Learn].[dbo].[DW_Dim_Date_����]
GO