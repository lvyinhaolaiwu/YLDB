--����ά���ϵ�ͬ����Ӧ��
select a.*,lag(a.[Money],1.0) over (partition by a.SignTypeId order by a.DateId) /a.[Money]-1 from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] as a
WHERE a.[Money] IS NOT NULL AND a.[Money] !=0
order by a.DateId

USE [YLDB_03_DW_Learn]
GO
select * from [dbo].[DW_Dim_Date_����]

--1������Ӧ�ã�between and ��   and/>=  �Ĳ���
--��ѯ����ά�ȱ���20210101 20120201 20210201
select * from [dbo].[DW_Dim_Date_����] where DateId between '20120201' and '20210101'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20120201' and DateId<='20210101'
select * from [dbo].[DW_Dim_Date_����] where DateId >'20120201' and DateId<'20210101'
select * from [dbo].[DW_Dim_Date_����] where DateId >'20120201' and DateId<='20210101'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20120201' and DateId<'20210101'
select * from [dbo].[DW_Dim_Date_����] where DateId between '20210101' and '20210201'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210101' and DateId<='20210201'
select * from [dbo].[DW_Dim_Date_����] where DateId >'20210101' and DateId<'20210201'
select * from [dbo].[DW_Dim_Date_����] where DateId >'20210101' and DateId<='20210201'
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210101' and DateId<'20210201'
--3������ά���ϵ�ͬ���ȿ���
--��ѯ2021 ��ֵ  ��ѯ202101��ͬ��ֵ
select max(DateId) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
select min(DateId) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
select * from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where DateId = '20120131'
select * from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where DateId = '20110131'
select * from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where DateId = '20120130'
select sum([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where DateId >= '20120104' and DateId <= '20120131'
select sum([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where DateId between '20120104' and '20120131'
select sum([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a 
left join [dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
where b.[Year]=2012
and b.[MonthId]=1
--���µ�ҩƷ���� ͬ���µ�ҩƷ����
SELECT convert(INT,left(DateId,4)) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
SELECT DateId from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where RIGHT(DateId,2)<=DAY(GETDATE())
SELECT month(GETDATE()-337)
SELECT month(GETDATE()-327)
SELECT DateId from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where convert(INT,SUBSTRING(DateId,5,2)) = month(GETDATE()-327)
SELECT DateId from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where SUBSTRING(DateId,5,2) = month(GETDATE()-327)
SELECT MAX(DateId) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where SUBSTRING(DateId,5,2) = month(GETDATE()-327)
SELECT MIN(DateId) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where SUBSTRING(DateId,5,2) = month(GETDATE()-327)
select SUM([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where convert(INT,SUBSTRING(DateId,5,2)) = month(GETDATE())
select SUM([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where SUBSTRING(DateId,5,2) = month(GETDATE())
select SUM([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where convert(INT,SUBSTRING(DateId,5,2)) = month(GETDATE()-327)
select SUM([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where SUBSTRING(DateId,5,2) = month(GETDATE()-327)
select SUM([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where convert(INT,left(DateId,4)) = year(GETDATE()) AND convert(INT,SUBSTRING(DateId,5,2)) = month(GETDATE())
AND CONVERT(INT,RIGHT(DateId,2))<=DAY(GETDATE())
select SUM([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where left(DateId,4) = year(GETDATE()) AND SUBSTRING(DateId,5,2) = month(GETDATE())
AND RIGHT(DateId,2)<=DAY(GETDATE())
select SUM([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where convert(INT,left(DateId,4)) = YEAR(GETDATE())-9 AND convert(INT,SUBSTRING(DateId,5,2)) = MONTH(GETDATE()-327)
AND CONVERT(INT,RIGHT(DateId,2))<=DAY(GETDATE())
select SUM([Money]) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where left(DateId,4) = year(GETDATE())-9 AND SUBSTRING(DateId,5,2) = MONTH(GETDATE()-327)
AND RIGHT(DateId,2)<=DAY(GETDATE())
--���µ�ҩƷ����
SELECT SUM([Money])
FROM [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
left join 
[dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
where b.[ThisMonth]=1
SELECT SUM([Money])
FROM [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
left join 
[dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
where SUBSTRING(b.DateId,5,2)=MONTH(GETDATE()) 
SELECT SUM([Money]) AS ����ҩƷ����
FROM [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
left join 
[dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
where SUBSTRING(b.DateId,5,2)=MONTH(GETDATE()-327) 
--ͬ���µ�ҩƷ����
SELECT SUM([Money])
FROM [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
left join 
[dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
where [LastMonth]=1
SELECT SUM([Money])
FROM [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
left join 
[dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
where LEFT(b.DateId,4)=YEAR(GETDATE()) AND SUBSTRING(b.DateId,5,2)=MONTH(GETDATE()) AND RIGHT(b.DateId,2)<=DAY(GETDATE())
SELECT SUM([Money]) AS ͬ����ҩƷ����
FROM [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
left join 
[dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
where LEFT(b.DateId,4) = YEAR(GETDATE())-9  AND SUBSTRING(b.DateId,5,2)=MONTH(GETDATE()-327) AND RIGHT(b.DateId,2)<=DAY(GETDATE())
--���¡�ͬ���µ�ҩƷ����
SELECT SUM(CASE WHEN b.[ThisMonth]=1 then [Money] end),SUM(CASE WHEN b.[LastMonth]=1 then [Money] end)
FROM [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
left join
[dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
SELECT SUM(CASE WHEN SUBSTRING(b.DateId,5,2)=MONTH(GETDATE()) then [Money] end),SUM(CASE WHEN  LEFT(b.DateId,4)=YEAR(GETDATE()) AND SUBSTRING(b.DateId,5,2)=MONTH(GETDATE()) AND RIGHT(b.DateId,2)<=DAY(GETDATE()) then [Money] end)
FROM [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
left join
[dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
SELECT SUM(CASE WHEN SUBSTRING(b.DateId,5,2)=MONTH(GETDATE()-327) then [Money] end) AS ����ҩƷ����,SUM(CASE WHEN  LEFT(b.DateId,4) =  YEAR(GETDATE())-9 AND SUBSTRING(b.DateId,5,2)=MONTH(GETDATE()-327) AND RIGHT(b.DateId,2)<=DAY(GETDATE()) then [Money] end) AS ͬ����ҩƷ����
FROM [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] as a
left join
[dbo].[DW_Dim_Date_����] as b
on a.DateId = b.DateId
--��֤�����Ƿ���ȷ
--����ҩƷ����
select SUM([Money]) AS ����ҩƷ���� from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where DateId between '20120101' and '20120131'
--ͬ����ҩƷ����
select SUM([Money]) AS ͬ����ҩƷ���� from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where DateId between '20120101' and '20120104'
select SUM([Money]) AS ͬ����ҩƷ���� from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where DateId between '20110101' and '20110104'
select SUM([Money]) AS ͬ����ҩƷ���� from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�] where DateId between '20110101' and '20110131'
select from 
(
values
)
--���� [Today]
update [dbo].[DW_Dim_Date_����] set [Today] =0
--SELECT CONVERT(VARCHAR(8),GETDATE(),112)
update [dbo].[DW_Dim_Date_����] set [Today] = 1 where DateId = CONVERT(VARCHAR(8),GETDATE(),112)
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210101' and DateId<='20211231'
--ǰ15��
update [dbo].[DW_Dim_Date_����] set [LastFifteenDays] =0
--SELECT CONVERT(VARCHAR(8),GETDATE()-15,112)
--SELECT CONVERT(VARCHAR(8),GETDATE()-14,112)
update [dbo].[DW_Dim_Date_����] set [LastFifteenDays] = 1 where DateId between CONVERT(VARCHAR(8),GETDATE()-15,112)and CONVERT(VARCHAR(8),GETDATE(),112)
update [dbo].[DW_Dim_Date_����] set [LastFifteenDays] =0 where DateId = '20211118'
update [dbo].[DW_Dim_Date_����] set [LastFifteenDays] = 1 where DateId between CONVERT(VARCHAR(8),GETDATE()-14,112)and CONVERT(VARCHAR(8),GETDATE(),112)
select * from [dbo].[DW_Dim_Date_����] where DateId >='20211114' and DateId<='20211203'
--����
update [dbo].[DW_Dim_Date_����] set [ThisMonth] =0
update [dbo].[DW_Dim_Date_����] set [ThisMonth] =1 where DateId >= '20211201' and DateId <= '20211231'
update [dbo].[DW_Dim_Date_����] set [ThisMonth] =1 where DateId between '20211201' and  '20211231'
select year(GETDATE())
select MONTH(GETDATE())
update [dbo].[DW_Dim_Date_����] set [ThisMonth] =1 where left(DateId,4) = year(GETDATE()) AND SUBSTRING(DateId,5,2) = month(GETDATE()) 
update [dbo].[DW_Dim_Date_����] set [ThisMonth] =1 where  LEFT(DateId,4) = YEAR(GETDATE())and SUBSTRING(DateId,5,2) = month(GETDATE()) 

--����
update [dbo].[DW_Dim_Date_����] set [ThisYear] =0
update [dbo].[DW_Dim_Date_����] set [ThisYear] =1 where DateId >= '20210101' and DateId <= '20211231'
update [dbo].[DW_Dim_Date_����] set [ThisYear] =1 where DateId between '20210101' and '20211231'
update [dbo].[DW_Dim_Date_����] set [ThisYear] =1 where LEFT(DateId,4)= YEAR(GETDATE())
select * from [dbo].[DW_Dim_Date_����] where DateId >='20210101' and DateId<='20211231'
select * from [dbo].[DW_Dim_Date_����] where DateId between '20210101' and '20211231'
--ͬ����
update [dbo].[DW_Dim_Date_����] set [LastYear] =0
SELECT YEAR(GETDATE())-1
update [dbo].[DW_Dim_Date_����] set [LastYear] = 1 where LEFT(DateId,4) = year(GETDATE())-1
SELECT * FROM [dbo].[DW_Dim_Date_����] where LEFT(DateId,4)='2020'
select datediff(day,0,getdate())--1900.01.01����2021.12.04
select datediff(day,getdate(),getdate())
select CONVERT(VARCHAR(8),YEAR(getdate()),112)+'0101'
SELECT GETDATE()-1
SELECT GETDATE()-337
SELECT YEAR(GETDATE())-1
select DAY(GETDATE())
select MONTH(GETDATE()-337)
select datepart(yyyy,GETDATE())
select datepart(dd,GETDATE())
select datepart(d,GETDATE())
select datediff(day,CONVERT(VARCHAR(8),YEAR(getdate()),112)+'0101',getdate())
select dateadd(day,0,datediff(day,0,getdate())-datediff(day,CONVERT(VARCHAR(8),YEAR(getdate()),112)+'0101',getdate()))--1900.01.01����2021.12.04
--SELECT CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+CONVERT(VARCHAR(8),MONTH(GETDATE()),112)+CONVERT(VARCHAR(8),DATEPART(d,GETDATE()),112)
--SELECT CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+CONVERT(VARCHAR(8),MONTH(GETDATE()),112)+CONVERT(VARCHAR(8),DATEPART(dd,GETDATE()),112)
--SELECT CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+CONVERT(VARCHAR(8),MONTH(GETDATE()),112)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
SELECT CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
SELECT CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE()-337,112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
select CONVERT(VARCHAR(8),dateadd(day,0,datediff(day,0,CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2))-datediff(day,CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+'0101',CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2))),112)--1900.01.01����2020.12.04
SELECT YEAR(GETDATE())-1
SELECT CONVERT(VARCHAR(8),convert(varchar(8),year(GETDATE())-1,112)+'0101',112)
SELECT * from [dbo].[DW_Dim_Date_����]
select datediff(day,'20200101','20201204')
select datediff(day,'20200101','20200104')
--ȥ���һ��
select CONVERT(VARCHAR(8),YEAR(GETDATE())-1,112)+'0101'
select CONVERT(VARCHAR(8),YEAR(GETDATE())-1)+'0101'
--ȥ�����һ��
select CONVERT(VARCHAR(8),YEAR(GETDATE())-1,112)+'1231'
select CONVERT(VARCHAR(8),YEAR(GETDATE())-1)+'1231'
--�����һ��
select dateadd(month,-month(GETDATE())+1,GETDATE())-DAY(GETDATE())+1
--�������һ��
select DATEADD(year,1,dateadd(month,-month(GETDATE())+1,GETDATE())-DAY(GETDATE())+1)-1
--ȥ���һ��
select DATEADD(YEAR,-1,dateadd(month,-month(GETDATE())+1,GETDATE())-DAY(GETDATE())+1)
--ȥ�����һ��
select dateadd(month,-month(GETDATE())+1,GETDATE())-DAY(GETDATE())
update [dbo].[DW_Dim_Date_����] set [LastYear] = 1 where DateId between CONVERT(VARCHAR(8),CONVERT(VARCHAR(8),year(GETDATE())-1,112)+'0101',112) and CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
--ȥ�����
select dateadd(year,-1,getdate())
update [dbo].[DW_Dim_Date_����] set [LastYear] = 1 where DateId between CONVERT(VARCHAR(8),DATEADD(YEAR,-1,dateadd(month,-month(GETDATE())+1,GETDATE())-DAY(GETDATE())+1),112) and CONVERT(VARCHAR(8),dateadd(year,-1,getdate()),112)
--ͬ����
update [dbo].[DW_Dim_Date_����] set [LastMonth] =0
SELECT CONVERT(VARCHAR(8),year(GETDATE())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+'01'
SELECT CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
--update [dbo].[DW_Dim_Date_����] set [LastYear] = 1 where DateId between CONVERT(VARCHAR(8),year(GETDATE())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+'01' and CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
select CONVERT(VARCHAR(8),year(GETDATE()),112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+'01'
select CONVERT(VARCHAR(8),YEAR(getdate()),112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
update [dbo].[DW_Dim_Date_����] set [LastYear] = 1 where DateId between CONVERT(VARCHAR(8),year(GETDATE()),112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+'01' and CONVERT(VARCHAR(8),YEAR(getdate()),112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
select CONVERT(VARCHAR(8),year(GETDATE())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+'01'
select CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
update [dbo].[DW_Dim_Date_����] set [LastYear] = 1 where DateId between CONVERT(VARCHAR(8),year(GETDATE())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+'01' and CONVERT(VARCHAR(8),YEAR(getdate())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2)
--�������һ��
select dateadd(month,1,getdate())-DAY(GETDATE())
select dateadd(month,1,'20210706')-DAY('20210706')
select dateadd(month,1,'20210906')-DAY('20210906')
select dateadd(month,1,'20210206')-DAY('20210206')
--���µ�һ��
select GETDATE()-DAY(GETDATE())+1
--ȥ�걾�����һ��
select dateadd(month,1,CONVERT(VARCHAR(8),YEAR(GETDATE())-1)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2))-DAY(CONVERT(VARCHAR(8),YEAR(GETDATE())-1)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2))
--ȥ�걾�µ�һ��
select CONVERT(VARCHAR(8),year(GETDATE())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+'01' 
update [dbo].[DW_Dim_Date_����] set [LastYear] = 1 where DateId between CONVERT(VARCHAR(8),year(GETDATE())-1,112)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+'01' and dateadd(month,1,CONVERT(VARCHAR(8),YEAR(GETDATE())-1)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2))-DAY(CONVERT(VARCHAR(8),YEAR(GETDATE())-1)+SUBSTRING(CONVERT(VARCHAR(8),GETDATE(),112),5,2)+RIGHT(CONVERT(VARCHAR(8),GETDATE(),112),2))
--ȥ�걾�����һ��
select dateadd(month,1,dateadd(year,-1,getdate()))-DAY(dateadd(year,-1,getdate()))
--ȥ�걾�µ�һ��
select dateadd(year,-1,getdate())-DAY(dateadd(year,-1,getdate()))+1
update [dbo].[DW_Dim_Date_����] set [LastYear] = 1 where DateId between CONVERT(VARCHAR(8),dateadd(year,-1,getdate())-DAY(dateadd(year,-1,getdate()))+1,112) and CONVERT(VARCHAR(8),dateadd(month,1,dateadd(year,-1,getdate()))-DAY(dateadd(year,-1,getdate())),112)
GO