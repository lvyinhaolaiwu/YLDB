--4.环比、同比
--5.数值分布
USE [YLDB_03_DW_Learn]
GO
select * from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
--环比 lag()向后移动
select a.*,lag(a.Money) over (partition by a.SignTypeId order by a.DateId ) as 向后移动 from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
select a.*,lag(a.Money,1.0) over (partition by a.SignTypeId order by a.DateId ) as 向后移动 from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
--计算环比
select a.*,lag(a.[Money],1.0) over (partition by a.SignTypeId order by a.DateId) /a.[Money]-1 from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
WHERE a.[Money] IS NOT NULL AND a.[Money] !=0
order by a.DateId 
--环比 lead()向前移动
select a.*,lead(a.Money) over (partition by a.SignTypeId order by a.DateId ) as 向前移动,lag(a.Money) over (partition by a.SignTypeId order by a.DateId ) as 向后移动 from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
select a.*,lead(a.Money,1.0) over (partition by a.SignTypeId order by a.DateId ) as 向前移动,lag(a.Money,1.0) over (partition by a.SignTypeId order by a.DateId ) as 向后移动 from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
--计算环比
select a.*,CASE  WHEN lead(a.[Money],1.0) over (partition by a.SignTypeId order by a.DateId ) IS NULL OR  lead(a.[Money],1.0) over (partition by a.SignTypeId order by a.DateId)=0 THEN NULL ELSE a.[Money]/lead(a.[Money],1.0) over (partition by a.SignTypeId order by a.DateId )-1 END from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
--同比 lead()向前移动 lag()向后移动
select a.*,lead(a.Money,12.0) over (partition by a.SignTypeId order by a.DateId ) as 向前移动,lag(a.Money,12.0) over (partition by a.SignTypeId order by a.DateId ) as 向后移动 from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
--计算同比
select a.*,lag(a.[Money],12.0) over (partition by a.SignTypeId order by a.DateId )/a.[Money]-1 as 同比 from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
where a.[Money] IS NOT NULL AND a.[Money]!=0
order by a.DateId
--计算同比
select a.*,case when lead(a.[Money],12.0) over (partition by a.SignTypeId order by a.DateId ) IS NULL or lead(a.[Money],12.0) over (partition by a.SignTypeId order by a.DateId )=0 THEN  NULL ELSE a.[Money]/lead(a.[Money],12.0) over (partition by a.SignTypeId order by a.DateId )-1 END as 同比 from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
--5.数值分布
select a.*,PERCENT_RANK() over (partition by a.SignTypeId order by a.DateId) as pctRank
,CUME_DIST() over (partition by a.SignTypeId order by a.DateId) as pctRank1
from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
select a.*,PERCENT_RANK() over (partition by a.SignTypeId order by a.[Money]) as pctRank
,CUME_DIST() over (partition by a.SignTypeId order by a.[Money]) as pctRank1
from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
order by a.DateId
--33871786.00
select MAX(a.[Money]) from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
---129570205.00
select MIN(a.[Money]) from [dbo].[DW_Fact_Incomedtl_医疗收费] as a
--offset
GO