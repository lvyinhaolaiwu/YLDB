--4.���ȡ�ͬ��
--5.��ֵ�ֲ�
USE [YLDB_03_DW_Learn]
GO
select * from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
--���� lag()����ƶ�
select a.*,lag(a.Money) over (partition by a.SignTypeId order by a.DateId ) as ����ƶ� from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
select a.*,lag(a.Money,1.0) over (partition by a.SignTypeId order by a.DateId ) as ����ƶ� from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
--���㻷��
select a.*,lag(a.[Money],1.0) over (partition by a.SignTypeId order by a.DateId) /a.[Money]-1 from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
WHERE a.[Money] IS NOT NULL AND a.[Money] !=0
order by a.DateId 
--���� lead()��ǰ�ƶ�
select a.*,lead(a.Money) over (partition by a.SignTypeId order by a.DateId ) as ��ǰ�ƶ�,lag(a.Money) over (partition by a.SignTypeId order by a.DateId ) as ����ƶ� from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
select a.*,lead(a.Money,1.0) over (partition by a.SignTypeId order by a.DateId ) as ��ǰ�ƶ�,lag(a.Money,1.0) over (partition by a.SignTypeId order by a.DateId ) as ����ƶ� from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
--���㻷��
select a.*,CASE  WHEN lead(a.[Money],1.0) over (partition by a.SignTypeId order by a.DateId ) IS NULL OR  lead(a.[Money],1.0) over (partition by a.SignTypeId order by a.DateId)=0 THEN NULL ELSE a.[Money]/lead(a.[Money],1.0) over (partition by a.SignTypeId order by a.DateId )-1 END from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
--ͬ�� lead()��ǰ�ƶ� lag()����ƶ�
select a.*,lead(a.Money,12.0) over (partition by a.SignTypeId order by a.DateId ) as ��ǰ�ƶ�,lag(a.Money,12.0) over (partition by a.SignTypeId order by a.DateId ) as ����ƶ� from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
--����ͬ��
select a.*,lag(a.[Money],12.0) over (partition by a.SignTypeId order by a.DateId )/a.[Money]-1 as ͬ�� from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
where a.[Money] IS NOT NULL AND a.[Money]!=0
order by a.DateId
--����ͬ��
select a.*,case when lead(a.[Money],12.0) over (partition by a.SignTypeId order by a.DateId ) IS NULL or lead(a.[Money],12.0) over (partition by a.SignTypeId order by a.DateId )=0 THEN  NULL ELSE a.[Money]/lead(a.[Money],12.0) over (partition by a.SignTypeId order by a.DateId )-1 END as ͬ�� from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
--5.��ֵ�ֲ�
select a.*,PERCENT_RANK() over (partition by a.SignTypeId order by a.DateId) as pctRank
,CUME_DIST() over (partition by a.SignTypeId order by a.DateId) as pctRank1
from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
select a.*,PERCENT_RANK() over (partition by a.SignTypeId order by a.[Money]) as pctRank
,CUME_DIST() over (partition by a.SignTypeId order by a.[Money]) as pctRank1
from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
order by a.DateId
--33871786.00
select MAX(a.[Money]) from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
---129570205.00
select MIN(a.[Money]) from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
--offset
GO