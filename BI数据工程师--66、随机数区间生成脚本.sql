--0.0747956351274587
--0.674435316341246
select rand()--0~1之间的单精度浮点随机数
select round(-0.3*0.674,0.7,0)
--0.4
--0.7
--0.5
select round(0.7*rand(),1.4,0)
--1.3
--1.1
--0.9
--0.7
--1.4
select round(1.4-0.7*rand(),1.4)--0.7~1.4
DECLARE @NUM int
set @NUM =1
while(@NUM<=332)
BEGIN
     INSERT INTO [tempdb].[dbo].[TempNum]([num])
	 select round(1.4-0.7*rand(),1.4)
	 SET @NUM = @NUM+1
END
SELECT * FROM [tempdb].[dbo].[TempNum]
TRUNCATE TABLE [tempdb].[dbo].[TempNum]
ALTER TABLE [tempdb].[dbo].[TempNum] ALTER COLUMN [num] float
SELECT * FROM sys.objects
where name =  'Quarter'
DECLARE @NUM int
set @NUM =1
while(@NUM<=332)
BEGIN
     INSERT INTO [YLDB_03_DW_Learn].[dbo].[TempNum]([num])
	 select round(1.4-0.7*rand(),1.4)
	 SET @NUM = @NUM+1
END
DECLARE @NUM int
set @NUM =333
while(@NUM<=864)
BEGIN
     INSERT INTO [YLDB_03_DW_Learn].[dbo].[TempNum]([num])
	 select round(1.4-0.7*rand(),1.4)
	 SET @NUM = @NUM+1
END
SELECT * FROM [YLDB_03_DW_Learn].[dbo].[TempNum]
TRUNCATE TABLE [YLDB_03_DW_Learn].[dbo].[TempNum]
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempNum] ALTER COLUMN [num] float
--156+176=332
--432+432=864
select num from [YLDB_03_DW_Learn].[dbo].[TempNum] where num between 0.7 and 1.05
select num from [YLDB_03_DW_Learn].[dbo].[TempNum] where num between 1.05 and 1.4
--统计2021年每个月的科室医疗收入金额
select SUM([Money]) as 金额,[DeptId] as 科室,SUBSTRING([DateId],5,2) as 月份 into [YLDB_03_DW_Learn].[dbo].[TempTarget] from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费]  WHERE left([DateId],4)='2021'GROUP BY [DeptId],SUBSTRING([DateId],5,2)
select SUM([Money]) as 金额,[DeptId] as 科室,SUBSTRING([DateId],5,2) as 月份 into [YLDB_03_DW_Learn].[dbo].[TempTarget] from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费_new]  WHERE left([DateId],4)='2021' GROUP BY [DeptId],SUBSTRING([DateId],5,2)
select * from [YLDB_03_DW_Learn].[dbo].[TempTarget]
select SUM([Money]) as 金额,[DeptId] as 科室,SUBSTRING([DateId],5,2) as 月份  from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费_new]  WHERE left([DateId],4)='2021' GROUP BY [DeptId],SUBSTRING([DateId],5,2)
select SUM([Money]) as 金额,[DeptId] as 科室,SUBSTRING([DateId],5,2) as 月份  from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费]  WHERE left([DateId],4)='2021'GROUP BY [DeptId],SUBSTRING([DateId],5,2)
select dateadd(month,1,getdate())-DAY(GETDATE())
select dateadd(month,1,'20211106')-DAY('20211106')
select dateadd(year,-1,dateadd(month,1,getdate())-DAY(GETDATE()))
select getdate()-DAY(GETDATE())+1
select dateadd(year,-1,getdate()-DAY(GETDATE())+1)
select '2021'-1
select '20211201'-'10'
select '20211210'-10+1
select dateadd(year,-1,'20211210')
SELECT CONVERT(INT,'20211210'-10+1)
select SUM([Money]) as 金额,[DeptId] as 科室,SUBSTRING([DateId],5,2) as 月份 into [YLDB_03_dW_Learn].[dbo].[TempTarget_1]  from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费]  WHERE left([DateId],4)='2020'GROUP BY [DeptId],SUBSTRING([DateId],5,2)
select SUM(a.[money])/SUM(b.[Money])
from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费] as a
left join [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费] as b
on a.DeptId = b.DeptId and SUBSTRING(a.[DateId],5,2) = SUBSTRING(b.[DateId],5,2) 
where left(a.[DateId],4)='2021' and left(b.[DateId],4)='2020'
group by a.[DeptId],SUBSTRING(a.[DateId],5,2)
select SUM([Money]) as 金额,[DeptId] as 科室,SUBSTRING([DateId],5,2) as 月份,
SUM([Money])/
(
select SUM(a.[Money]) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费] as a 
WHERE 
--a.[DateId] between CONVERT(VARCHAR(8),dateadd(year,-1,getdate()-DAY(GETDATE())+1),112) and CONVERT(VARCHAR(8),dateadd(year,-1,dateadd(month,1,getdate())-DAY(GETDATE())),112)
--a.[DateId] between dateadd(year,-1,getdate()-DAY(GETDATE())+1) and dateadd(year,-1,dateadd(month,1,getdate())-DAY(GETDATE()))
left(a.[DateId],4)=left([DateId],4)-1 and SUBSTRING(a.[DateId],5,2)=SUBSTRING([DateId],5,2)
--a.[DateId] between dateadd(year,-1,dateadd(day,1-CONVERT(INT,RIGHT([DateId],2)),[DateId])) and dateadd(year,-1,dateadd(month,1,[DateId])-CONVERT(INT,RIGHT([DateId],2)))
AND
a.[DeptId] = [DeptId]
)-1 as 医疗收入同比
from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_医疗收费]  
WHERE left([DateId],4)='2021'GROUP BY [DeptId],SUBSTRING([DateId],5,2)
select a.金额 as Money,a.科室 as DeptId,a.月份 as 月份,a.金额/b.金额-1 as 科室月度医疗收入同比 into [YLDB_03_DW_Learn].[dbo].[TempTarget_2] from 
[YLDB_03_DW_Learn].[dbo].[TempTarget] as a--864条
LEFT JOIN
[YLDB_03_DW_Learn].[dbo].[TempTarget_1] as b--939条
ON a.科室 = b.科室 and a.月份 = b.月份
select * from [YLDB_03_DW_Learn].[dbo].[TempTarget_2] where 科室月度医疗收入同比 IS NOT NULL--826条
select * from 
[YLDB_03_DW_Learn].[dbo].[TempTarget] as a--864条
LEFT JOIN
[YLDB_03_DW_Learn].[dbo].[TempTarget_1] as b--939条
ON a.科室 = b.科室 and a.月份 = b.月份
select * into [YLDB_03_DW_Learn].[dbo].[TempTarget_2_bak] from [YLDB_03_DW_Learn].[dbo].[TempTarget_2]
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ALTER COLUMN [Money] numeric(18,2)
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ALTER COLUMN [科室月度医疗收入同比]  numeric(18,2)
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2_bak] ALTER COLUMN [Money] numeric(18,2)
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2_bak] ALTER COLUMN [科室月度医疗收入同比]  numeric(18,2)
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ALTER COLUMN [Money] numeric(38,2)
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ALTER COLUMN [科室月度医疗收入同比]  numeric(38,6)
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2_bak] ALTER COLUMN [Money] numeric(38,2)
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2_bak] ALTER COLUMN [科室月度医疗收入同比]  numeric(38,6)
delete from [YLDB_03_DW_Learn].[dbo].[TempTarget_2] where 科室月度医疗收入同比 IS NULL
select * from [YLDB_03_DW_Learn].[dbo].[TempTarget_2_bak]
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ADD [营收目标] numeric(18,2)
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ADD [Id] int
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] DROP COLUMN [Id] 
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ADD [Id] int IDENTITY(1,1)
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempNum] ADD [Id] int
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempNum] DROP COLUMN [Id] 
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempNum] ADD [Id] int identity(1,1)
DECLARE @i int
DECLARE @id int
DECLARE pro_cursor Cursor scroll for
    select  from [YLDB_03_DW_Learn].[dbo].[TempNum]
OPEN pro_cursor
FETCH FROM pro_cursor into @id
SET @i=1
--while(@i<=864)
--while(@@FETCH_STATUS=0)
BEGIN
update  [YLDB_03_DW_Learn].[dbo].[TempNum]  set [Id] = @i
FETCH FROM pro_cursor into @id
END
update a SET a.[营收目标] = a.[Money]*b.[num]
from [YLDB_03_DW_Learn].[dbo].[TempTarget_2] as a--826条
left join [YLDB_03_DW_Learn].[dbo].[TempNum] as b--864条
on a.[Id] = b.[Id]
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ADD CONSTRAINT PK_TEMPTARGET_2 primary key ([Id])
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2_bak] ADD [Id] int identity(1,1) primary key
select * from [YLDB_03_DW_Learn].[dbo].[TempTarget_2] where [DeptId] IS NOT NULL
delete from [YLDB_03_DW_Learn].[dbo].[TempTarget_2] where [DeptId]--238条
in
(
select [DeptId] from [YLDB_03_DW_Learn].[dbo].[TempTarget_2] where [DeptId]
not in (select [DeptId] from [YLDB_03_DW_Learn].[dbo].[DW_Dim_Dept_科室])
)
--588行
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ADD CONSTRAINT FK_TempTarget_2_Dept_科室 foreign key ([DeptId]) references [YLDB_03_DW_Learn].[dbo].[DW_Dim_Dept_科室]([DeptId])
select SUM([Money]) from [YLDB_03_DW_Learn].[dbo].[TempTarget_2] where DeptId = 8 group by DeptId
select SUM([Money]) from [YLDB_03_DW_Learn].[dbo].[TempTarget_2] where DeptId = 10 group by DeptId
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ALTER COLUMN [月份] VARCHAR(6) 
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ALTER COLUMN [月份] VARCHAR(8) 

UPDATE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] SET [月份] = '2021'+[月份]
ALTER TABLE [YLDB_03_DW_Learn].[dbo].[TempTarget_2] ADD CONSTRAINT FK_TempTarget_2_Date_日期 foreign key ([月份]) references [YLDB_03_DW_Learn].[dbo].[DW_Dim_Date_日期]([DateId])
