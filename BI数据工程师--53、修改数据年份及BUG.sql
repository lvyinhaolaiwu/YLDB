select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本]
select distinct DeptCode from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本]
select distinct DeptCode from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本]with(nolock)

--修改数据年份 --2012  2020   --2013  2021
--执行统计医疗BI项目DW库所有事实表数据总量存储过程sp_DW_Fact_ALL_Statistics
EXEC [YLDB_03_DW_Learn].[dbo].[sp_DW_Fact_ALL_Statistics]
select * from [tempdb].[dbo].[Statistics]
select sum([value]) as 数据总量 from [tempdb].[dbo].[Statistics]
select 1569+1
select 1569+'01'
select 1569+'12'
select '1569'+1
select '1569'+121
select '1569'+'01'
select count(0)+'01' from [dbo].[DW_Fact_DrugCost_药品成本]
--统计医疗BI项目DW库所有事实表的数据总量
USE [YLDB_03_DW_Learn]
GO
select name from
sysobjects where type='U' and name like 'DW_Fact_%'
select 'select count(0) from [dbo].['+name+']with(nolock)'
from sysobjects where type='U' and name like 'DW_Fact_%'
select count(0) from [dbo].[DW_Fact_Asset_固定资产]
select count(0) from [dbo].[DW_Fact_DrugCost_药品成本]
select count(0) from [dbo].[DW_Fact_Fees_会计费用]
select count(0) from [dbo].[DW_Fact_Incomedtl_医疗收费]
select count(0) from [dbo].[DW_Fact_Material_领用物资]
select count(0) from [dbo].[DW_Fact_Salary_人员薪资]
select count(0) from [dbo].[DW_Fact_Asset_固定资产]with(nolock)
select count(0) from [dbo].[DW_Fact_DrugCost_药品成本]with(nolock)
select count(0) from [dbo].[DW_Fact_Fees_会计费用]with(nolock)
select count(0) from [dbo].[DW_Fact_Incomedtl_医疗收费]with(nolock)
select count(0) from [dbo].[DW_Fact_Material_领用物资]with(nolock)
select count(0) from [dbo].[DW_Fact_Salary_人员薪资]with(nolock)
select 'select DateId,count(0) from [dbo].['+name+']with(nolock) group by DateId'
from sysobjects where type='U' and name like 'DW_Fact_%'
select DateId,count(0) from [dbo].[DW_Fact_Asset_固定资产]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_DrugCost_药品成本]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_Fees_会计费用]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_Incomedtl_医疗收费]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_Material_领用物资]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_Salary_人员薪资]with(nolock) group by DateId
select 'select DateId as 日期,count(0) as 数据量 from [dbo].['+name+']with(nolock) group by DateId'
from sysobjects where type='U' and name like 'DW_Fact_%'
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Asset_固定资产]with(nolock) group by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_DrugCost_药品成本]with(nolock) group by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Fees_会计费用]with(nolock) group by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Incomedtl_医疗收费]with(nolock) group by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Material_领用物资]with(nolock) group by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Salary_人员薪资]with(nolock) group by DateId
select 'select DateId as 日期,count(0) as 数据量 from [dbo].['+name+']with(nolock) group by DateId order by DateId'
from sysobjects where type='U' and name like 'DW_Fact_%'
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Asset_固定资产]with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_DrugCost_药品成本]with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Fees_会计费用]with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Incomedtl_医疗收费]with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Material_领用物资]with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Salary_人员薪资]with(nolock) group by DateId order by DateId
select * into [DW_Fact_Salary_人员薪资_bak] from [dbo].[DW_Fact_Salary_人员薪资] with(nolock)
select * from [dbo].[DW_Fact_Salary_人员薪资_bak] with(nolock)
select * into [dbo].[DW_Fact_Material_领用物资_bak] from [dbo].[DW_Fact_Material_领用物资]with(nolock)
select * from [dbo].[DW_Fact_Material_领用物资_bak] with(nolock)
select * into [dbo].[DW_Fact_Incomedtl_医疗收费_bak] from [dbo].[DW_Fact_Incomedtl_医疗收费] with(nolock)
select count(0) from [dbo].[DW_Fact_Incomedtl_医疗收费_bak] with(nolock)
select * from [dbo].[DW_Fact_Incomedtl_医疗收费_bak]with(nolock)
select * into [dbo].[DW_Fact_Fees_会计费用_bak] from [dbo].[DW_Fact_Fees_会计费用]with(nolock)
select * from [dbo].[DW_Fact_Fees_会计费用_bak] with(nolock)
select * into [dbo].[DW_Fact_DrugCost_药品成本_bak] from [dbo].[DW_Fact_DrugCost_药品成本]with(nolock)
select * from [dbo].[DW_Fact_DrugCost_药品成本_bak] with(nolock)
select * into  [dbo].[DW_Fact_Asset_固定资产_bak] from [dbo].[DW_Fact_Asset_固定资产]with(nolock)
select * from [dbo].[DW_Fact_Asset_固定资产_bak] with(nolock)
--54679195
--109358390
--54679195
--执行修改医疗BI项目DW库所有事实表数据年份存储过程sp_DW_Fact_ALL_AlterDataDate
EXEC [dbo].[sp_DW_Fact_ALL_AlterDataDate]
ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资] NOCHECK CONSTRAINT FK_Salary_Date_日期
ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资] CHECK CONSTRAINT FK_Salary_Date_日期
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Asset_固定资产_bak] with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_DrugCost_药品成本_bak] with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Fees_会计费用_bak]with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Incomedtl_医疗收费_bak]with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Material_领用物资_bak]with(nolock) group by DateId order by DateId
select DateId as 日期,count(0) as 数据量 from [dbo].[DW_Fact_Salary_人员薪资_bak]with(nolock) group by DateId order by DateId
GO
select name from
sys.objects where type='U' and name like 'DW_Fact_%'
select 'select count(0) from [YLDB_03_DW_Learn].[dbo].['+name+']with(nolock)'
from
sys.objects where type='U' and name like 'DW_Fact_%'
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_固定资产]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_药品成本]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Fees_会计费用]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Material_领用物资]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_人员薪资]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_固定资产]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_药品成本]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Fees_会计费用]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Material_领用物资]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_人员薪资]with(nolock)
--执行修改医疗BI项目DW库所有事实表数据年份存储过程sp_DW_Fact_ALL_AlterDataDate
EXEC [YLDB_03_DW_Learn].[dbo].[sp_DW_Fact_ALL_AlterDataDate]