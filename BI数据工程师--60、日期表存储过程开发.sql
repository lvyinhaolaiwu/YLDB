USE [YLDB_03_DW_Learn]
GO
EXEC [dbo].[sp_DW_Dim_Date_����_1]
EXEC [dbo].[sp_DW_Dim_Date_����]
EXEC [dbo].[sp_DW_Dim_Date_����] '19800201'
EXEC [dbo].[sp_DW_Dim_Date_����] '19930701'
EXEC [dbo].[sp_DW_Dim_Date_����] '19930601'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210101' and DateId<='20210131'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210301' and DateId<='20210331'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210501' and DateId<='20210531'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210701' and DateId<='20210731'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210801' and DateId<='20210831'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20211001' and DateId<='20211031'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20211201' and DateId<='20211231'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210201' and DateId<='20210228'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210401' and DateId<='20210430'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210601' and DateId<='20210630'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210901' and DateId<='20210930'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20211101' and DateId<='20211130'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210101' and DateId<='20211231'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200101' and DateId<='20200131'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200301' and DateId<='20200331'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200501' and DateId<='20200531'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200701' and DateId<='20200731'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200801' and DateId<='20200831'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20201001' and DateId<='20201031'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20201201' and DateId<='20201231'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200201' and DateId<='20200229'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200401' and DateId<='20200430'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200601' and DateId<='20200630'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200901' and DateId<='20200930'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20201101' and DateId<='20201130'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20200101' and DateId<='20201231'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20190101' and DateId<='20191231'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20180101' and DateId<='20181231'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20170101' and DateId<='20171231'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20160101' and DateId<='20161231'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20150101' and DateId<='20151231'
select * from [dbo].[DW_Dim_Date_����]with(nolock) where DateId like '2019%'
select * from [dbo].[DW_Dim_Date_����]with(nolock) where DateId like '2018%'
select * from [dbo].[DW_Dim_Date_����]with(nolock) where DateId like '2017%'
select * from [dbo].[DW_Dim_Date_����]with(nolock) where DateId like '2016%'
select * from [dbo].[DW_Dim_Date_����]with(nolock) where DateId like '2015%'
select * from [dbo].[DW_Dim_Date_����]with(nolock) where DateId like '2014%'
select * from [dbo].[DW_Dim_Date_����]with(nolock) where DateId like '2013%'
select * from [dbo].[DW_Dim_Date_����]with(nolock) where DateId like '2012%'

delete  from [dbo].[DW_Dim_Date_����] where DateId like '2015%'
delete  from [dbo].[DW_Dim_Date_����] where DateId like '2016%'
delete  from [dbo].[DW_Dim_Date_����] where DateId like '2017%'
delete  from [dbo].[DW_Dim_Date_����] where DateId like '2018%'
delete  from [dbo].[DW_Dim_Date_����] where DateId like '2019%'
delete  from [dbo].[DW_Dim_Date_����] where DateId >= '20190101' and DateId <= '20191231'
delete  from [dbo].[DW_Dim_Date_����] where DateId >= '20180101' and DateId <= '20181231'
delete  from [dbo].[DW_Dim_Date_����] where DateId >= '20170101' and DateId <= '20171231'
delete  from [dbo].[DW_Dim_Date_����] where DateId >= '20160101' and DateId <= '20161231'
delete  from [dbo].[DW_Dim_Date_����] where DateId >= '20150101' and DateId <= '20151231'
delete  from [dbo].[DW_Dim_Date_����] where DateId in(select DateId from [dbo].[DW_Dim_Date_����]with(nolock) where DateId like '2019%')
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�] NOCHECK CONSTRAINT FK_Asset_Date_����
ALTER TABLE [dbo].[DW_Fact_Asset_�̶��ʲ�] CHECK CONSTRAINT FK_Asset_Date_����
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] NOCHECK CONSTRAINT FK_DrugCost_DateId_����
ALTER TABLE [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] CHECK CONSTRAINT FK_DrugCost_DateId_����
ALTER TABLE [dbo].[DW_Fact_Fees_��Ʒ���] NOCHECK CONSTRAINT FK_Fees_Date_����
ALTER TABLE [dbo].[DW_Fact_Fees_��Ʒ���] CHECK CONSTRAINT FK_Fees_Date_����
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] NOCHECK CONSTRAINT FK_Incomedtl_DateId_����
ALTER TABLE [dbo].[DW_Fact_Incomedtl_ҽ���շ�] CHECK CONSTRAINT FK_Incomedtl_DateId_����
ALTER TABLE [dbo].[DW_Fact_Material_��������] NOCHECK CONSTRAINT FK_Material_Date_����
ALTER TABLE [dbo].[DW_Fact_Material_��������] CHECK CONSTRAINT FK_Material_Date_����
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] NOCHECK CONSTRAINT FK_Salary_Date_����
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] CHECK CONSTRAINT FK_Salary_Date_����
  SELECT request_session_id AS spid
    ,OBJECT_NAME(resource_associated_entity_id) AS tableName
    FROM sys.dm_tran_locks where resource_type='OBJECT'
select * from [dbo].[DW_Dim_Date_����]
select getdate()
select CAST('19800201' AS DATETIME)
select CONVERT(DATETIME,'19800201')
select CONVERT(DATETIME,'1980-02-01')
select CAST('19800201' AS DATE)
select CONVERT(DATE,'19800201')
select CAST('19800201' AS TIMESTAMP)
select CAST('19800201' AS TIME)
update [dbo].[DW_Dim_Date_����] set DateId = rtrim(DateId)
update [dbo].[DW_Dim_Date_����] set DateId = ltrim(DateId)
update [dbo].[DW_Dim_Date_����] set DateId = replace(DateId,' ','')
update [dbo].[DW_Dim_Date_����] set [MonthCN] = 
(select b.MonthCN from [dbo].[DW_Dim_Date_����] as a left join [tempdb].[dbo].[Month] as b on CONVERT(INT,SUBSTRING(a.DateId,5,2)) = b.MonthId where a.DateId = '19930701' )
where DateId = '19930701'
select * from [dbo].[DW_Dim_Date_����] where DateId='19930701'
select * from [dbo].[DW_Dim_Date_����] where DateId='19800201'
select * from [dbo].[DW_Dim_Date_����] where DateId='19930601'
select * from [dbo].[DW_Dim_Date_����] where DateId like '%31'
select * from [dbo].[DW_Dim_Date_����] where DateId like '%12'
select * from [dbo].[DW_Dim_Date_����] where DateId like '%30'
select * from [dbo].[DW_Dim_Date_����] where DateId like '%28'
select * from [dbo].[DW_Dim_Date_����] where DateId like '%29'
select * from [dbo].[DW_Dim_Date_����] where DateId like '%09'
select * from [dbo].[DW_Dim_Date_����] where DateId like '%08'
select * from [dbo].[DW_Dim_Date_����] where DateId like '%07'
select * from [dbo].[DW_Dim_Date_����] where DateId='20130209'
select * from [dbo].[DW_Dim_Date_����] where DateId='20121231  '
select * from [dbo].[DW_Dim_Date_����] where DateId='20130101'
select * from [dbo].[DW_Dim_Date_����] where DateId='20130209  '
select * from [dbo].[DW_Dim_Date_����] where DateId='20130209   '
select * from [dbo].[DW_Dim_Date_����] where DateId='  20130209'
select * from [dbo].[DW_Dim_Date_����] where DateId='20070108'
select * from [dbo].[DW_Dim_Date_����] where LEN(DateId) <8
select * from [dbo].[DW_Dim_Date_����] where LEN(DateId) >8
SELECT * FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Asset] where LEN(CONVERT(VARCHAR(8),PurchaseDate,112))<8
SELECT * FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�] where LEN(Date)<8
SELECT * FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_��Ʒ���] where LEN(Date)<8
SELECT * FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_��������] where LEN(Date)<8
SELECT DISTINCT Period FROM [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_��Աн��] where LEN(Period)<8
select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_ҽ���շ�] where LEN(CONVERT(VARCHAR(8),Date,112))<8
GO