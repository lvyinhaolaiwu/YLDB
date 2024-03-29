USE [YLDB_03_DW_Learn]
GO
/****** Object:  StoredProcedure [dbo].[sp_DW_Dim_Date_日期]    Script Date: 2021/12/1 18:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: 2021.12.01
-- Description:	生成日期维度表其他非主键字段的数据
-- =============================================
ALTER PROCEDURE [dbo].[sp_DW_Dim_Date_日期]
AS
BEGIN
     --[DateId], [Date], [Year], [HalfYearId], 
	 --[HalfYear], [QuarterId], [QuarterEN], [QuarterCN], 
	 --[MonthId], [MonthEN], [MonthAbstract], [MonthCN], 
	 --[MonthDay], [YearDay], [YearWeek], [One Third Of Month], 
	 --[WeekId_EN], [WeekId_CN], [Week_EN], [Week_CN], [WeekendWorkDay]
     DECLARE @dateid varchar(30)
	 DECLARE @sql_str varchar(500)
     DECLARE pro_cursor Cursor scroll for
         --select DateId from [dbo].[DW_Dim_Date_日期]
		 select DateId from [dbo].[DW_Dim_Date_日期] where DateId between '20210101' and '20211231'
	 OPEN pro_cursor
	 fetch from pro_cursor into @dateid
	 while(@@FETCH_STATUS=0)
	 BEGIN
	 /**
	      select * from [dbo].[DW_Dim_Date_日期]
		  select * from [tempdb].[dbo].[HalfYear]
		  select * from [tempdb].[dbo].[Quarter]
		  select * from [tempdb].[dbo].[Month]
		  select * from [tempdb].[dbo].[Week]
		  **/
		  -- [Date] select CONVERT(DATETIME,DateId,120) from [dbo].[DW_Dim_Date_日期] where DateId='19800201'
		  -- [Date] select CONVERT(DATETIME,DateId) from [dbo].[DW_Dim_Date_日期] where DateId='19800201'
	      -- [Date] select CAST(DateId AS DATETIME) from [dbo].[DW_Dim_Date_日期] where DateId='19800201'
		  -- [Date] select CONVERT(DATETIME,DateId,112) from [dbo].[DW_Dim_Date_日期] where DateId='19800201'
		  -- [Date] 
		  -- [Year] select LEFT(DateId,4) from [dbo].[DW_Dim_Date_日期] where DateId='19800201'
		  -- [HalfYearId] select b.HalfYearId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[HalfYear] as b on SUBSTRING(a.DateId,5,2) =  b.HalfYearId where DateId='19800201' 
	      -- [HalfYear]  select case when CONVERT(INT,SUBSTRING(DateId,5,2))>6 then '下半年' else '上半年' end from [dbo].[DW_Dim_Date_日期] where DateId='19800201'
	      -- [HalfYear]  select case when CONVERT(INT,SUBSTRING(DateId,5,2))>6 then '下半年' else '上半年' end from [dbo].[DW_Dim_Date_日期] where DateId='19930601'
		  -- [HalfYear]  select case when CONVERT(INT,SUBSTRING(DateId,5,2))>6 then '下半年' else '上半年' end from [dbo].[DW_Dim_Date_日期] where DateId='19930701'
		  -- [HalfYear]  select b.HalfYear from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[HalfYear] as b on SUBSTRING(a.DateId,5,2) =  b.HalfYearId where DateId='19800201' 
		  -- [HalfYear]  select b.HalfYear from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[HalfYear] as b on SUBSTRING(a.DateId,5,2) =  b.HalfYearId where DateId='19930701'
		  -- [HalfYear]  select b.HalfYear from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[HalfYear] as b on SUBSTRING(a.DateId,5,2) =  b.HalfYearId where DateId='19930601'
		  -- [QuarterId] select b.QuarterId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.DateId,5,2) =  b.QuarterId where DateId='19800201' 
		  -- [QuarterId] select b.QuarterId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.DateId,5,2) =  b.QuarterId where DateId='19930701'
		  -- [QuarterId] select b.QuarterId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.DateId,5,2) =  b.QuarterId where DateId='19930601'
		  -- [QuarterEN] select b.QuarterEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.DateId,5,2) =  b.QuarterId where DateId='19800201' 
		  -- [QuarterEN] select b.QuarterEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.DateId,5,2) =  b.QuarterId where DateId='19930701'
		  -- [QuarterEN] select b.QuarterEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.DateId,5,2) =  b.QuarterId where DateId='19930601'
		  -- [QuarterCN] select b.QuarterCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.DateId,5,2) =  b.QuarterId where DateId='19800201' 
		  -- [QuarterCN] select b.QuarterCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.DateId,5,2) =  b.QuarterId where DateId='19930701'
		  -- [QuarterCN] select b.QuarterCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.DateId,5,2) =  b.QuarterId where DateId='19930601'
	      -- [MonthId]   select b.MonthId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.DateId,5,2) = b.MonthId where a.DateId = '19800201'
		  -- [MonthId]   select b.MonthId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.DateId,5,2) = b.MonthId where a.DateId = '19930601'
		  -- [MonthId]   select b.MonthId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.DateId,5,2) = b.MonthId where a.DateId = '19930701'
		  -- [MonthEN]   select b.MonthEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.DateId,5,2) = b.MonthId where a.DateId = '19800201'
		  -- [MonthEN]   select b.MonthEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.DateId,5,2) = b.MonthId where a.DateId = '19930701'
		  -- [MonthEN]   select b.MonthEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.DateId,5,2) = b.MonthId where a.DateId = '19930601'
		  -- [MonthAbstract]
		  -- [MonthCN]   select b.MonthCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.DateId,5,2) = b.MonthId where a.DateId = '19800201'
		  -- [MonthCN]   select b.MonthCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.DateId,5,2) = b.MonthId where a.DateId = '19930601'
		  -- [MonthCN]   select b.MonthId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on convert(int,SUBSTRING(a.DateId,5,2)) = b.MonthId where a.DateId = '19930701'
		  -- [MonthDay]  select SUBSTRING(DateId,7,2) from  [dbo].[DW_Dim_Date_日期] where DateId = '19800201'
		  -- [MonthDay]  select RIGHT(DateId,2) from  [dbo].[DW_Dim_Date_日期] where DateId = '19800201'
		  -- [MonthDay]  select SUBSTRING(DateId,7,2) from  [dbo].[DW_Dim_Date_日期] where DateId = '19930601'
		  -- [MonthDay]  select RIGHT(DateId,2) from  [dbo].[DW_Dim_Date_日期] where DateId = '19930601'
		  -- [MonthDay]  select SUBSTRING(DateId,7,2) from  [dbo].[DW_Dim_Date_日期] where DateId = '19930701'
		  -- [MonthDay]  select RIGHT(DateId,2) from  [dbo].[DW_Dim_Date_日期] where DateId = '19930701'
		  -- [YearDay]   select datediff(day,0,DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '19800201'
		  -- [YearDay]   select datediff(day,0,DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '19930601'
		  -- [YearDay]   select datediff(day,0,DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '19930701'
		  -- [YearDay]   select datediff(day,'19930101',DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '19930701'
		  -- [YearDay]   select datediff(day,'19930101',DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '19930601'
		  -- [YearDay]   select datediff(day,'19800101',DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '19800201'
		  -- [YearWeek]  select datediff(week,'19800101',DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '19800201'
		  -- [YearWeek]  select datediff(week,'20040101',DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '20040112'
		  -- [YearWeek]  select datediff(week,'20120101',DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '20120107'
		  -- [YearWeek]  select datediff(week,'20070101',DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '20070108'
		  --[One Third Of Month] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[first/middle/last ten days of a month] as b on RIGHT(a.DateId,2) = b.Id where a.DateId = '19930701'
		  --[One Third Of Month] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[first/middle/last ten days of a month] as b on RIGHT(a.DateId,2) = b.Id where a.DateId = '19930601'
		  --[One Third Of Month] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[first/middle/last ten days of a month] as b on RIGHT(a.DateId,2) = b.Id where a.DateId = '19800201'
		  --[One Third Of Month] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[first/middle/last ten days of a month] as b on RIGHT(a.DateId,2) = b.Id where a.DateId = '20070108'
		  --[One Third Of Month] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[first/middle/last ten days of a month] as b on RIGHT(a.DateId,2) = b.Id where a.DateId = '20130209'

		  --[WeekId_EN] select datepart(dw,getdate())
		  --[WeekId_EN] select datepart(dw,'20130201')
		  --[WeekId_EN] select b.WeekId_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '20130209'
		  --[WeekId_EN] select b.WeekId_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '20070108'
		  --[WeekId_EN] select b.WeekId_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '19930701'
		  --[WeekId_EN] select b.WeekId_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '19930601'
		  --[WeekId_EN] select b.WeekId_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '19800201'
		  --[WeekId_CN] select b.WeekId_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '19800201'
		  --[WeekId_CN] select b.WeekId_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '19930701'
		  --[WeekId_CN] select b.WeekId_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '19930601'
		  --[WeekId_CN] select b.WeekId_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '20070108'
		  --[WeekId_CN] select b.WeekId_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '20130209'
		  --[Week_CN]   select b.Week_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '19800201'
		  --[Week_CN]   select b.Week_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '19930701'
		  --[Week_CN]   select b.Week_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '19930601'
		  --[Week_CN]   select b.Week_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '20070108'
		  --[Week_CN]   select b.Week_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '20130209'
		  --[Week_EN]   select b.Week_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '20130209'
		  --[Week_EN]   select b.Week_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '20070108'
		  --[Week_EN]   select b.Week_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '19930601'
		  --[Week_EN]   select b.Week_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '19930701'
		  --[Week_EN]   select b.Week_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '19800201'
		  --[WeekendWorkDay] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[WeekendWorkDay] as b on datepart(dw,a.DateId) = b.Id where a.DateId = '19800201'
		  --[WeekendWorkDay] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[WeekendWorkDay] as b on datepart(dw,a.DateId) = b.Id where a.DateId = '19930701'
		  --[WeekendWorkDay] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[WeekendWorkDay] as b on datepart(dw,a.DateId) = b.Id where a.DateId = '19930601'
		  --[WeekendWorkDay] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[WeekendWorkDay] as b on datepart(dw,a.DateId) = b.Id where a.DateId = '20070108'
		  --[WeekendWorkDay] select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[WeekendWorkDay] as b on datepart(dw,a.DateId) = b.Id where a.DateId = '20130209'
		  --set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Date] = '+CONVERT(DATETIME,@dateid)+' where DateId = '+@dateid
		  --set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Date] = '+CAST(@dateid AS DATETIME)+' where DateId = '+@dateid
		  --set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Date] = '+CONVERT(DATETIME,@dateid,112)+' where DateId = '+@dateid
		  --set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Date] = '+CONVERT(DATETIME,@dateid,120)+' where DateId = '+@dateid
		  --set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Date] = '+CONVERT(DATETIME,LEFT(@dateid,2)+'-'+SUBSTRING(@dateid,5,2)+'-'+RIGHT(@dateid,2))+' where DateId = '+@dateid
		  --set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Date] = '+CAST(@dateid AS DATE)+' where DateId = '+@dateid
		  --exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Year] = '+LEFT(@dateid,4)+' where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [HalfYearId] = (select b.HalfYearId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[HalfYear] as b on CONVERT(INT,SUBSTRING(a.DateId,5,2)) =  b.HalfYearId where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  --set @sql_str='update [dbo].[DW_Dim_Date_日期] set [HalfYear] = (select case when CONVERT(INT,SUBSTRING('+@dateid+',5,2))>6 then ''下半年'' else ''上半年'' end from [dbo].[DW_Dim_Date_日期] where DateId = '+@dateid+')'  
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [HalfYear] =  (select b.HalfYear from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[HalfYear] as b on CONVERT(INT,SUBSTRING(a.DateId,5,2)) =  b.HalfYearId where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [QuarterId] = (select b.QuarterId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on CONVERT(INT,SUBSTRING(a.DateId,5,2)) =  b.QuarterId where a.DateId='+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [QuarterEN] = (select b.QuarterEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on CONVERT(INT,SUBSTRING(a.DateId,5,2)) =  b.QuarterId where a.DateId='+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [QuarterCN] = (select b.QuarterCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on CONVERT(INT,SUBSTRING(a.DateId,5,2)) =  b.QuarterId where a.DateId='+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [MonthId] = (select b.MonthId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on CONVERT(INT,SUBSTRING(a.DateId,5,2)) = b.MonthId where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [MonthEN] = (select b.MonthEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on CONVERT(INT,SUBSTRING(a.DateId,5,2)) = b.MonthId where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [MonthCN] = (select b.MonthCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on CONVERT(INT,SUBSTRING(a.DateId,5,2)) = b.MonthId where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  --[MonthDay]
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [MonthDay] = '+RIGHT(@dateid,2)+' WHERE DateId = '+@dateid
		  exec(@sql_str)
		  --[YearDay]
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [YearDay]  =  (select datediff(day,LEFT(DateId,4)+''0101'',DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  --[YearWeek]
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [YearWeek] =  (select datediff(week,LEFT(DateId,4)+''0101'',DateId)+1 from [dbo].[DW_Dim_Date_日期] where DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
          --[One Third Of Month]
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [One Third Of Month] = (select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[first/middle/last ten days of a month] as b on RIGHT(a.DateId,2) = b.Id where a.DateId = '+@dateid+') where a.DateId = '+@dateid
		  exec(@sql_str)
		  --[WeekId_EN]
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [WeekId_EN] = (select b.WeekId_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  --[WeekId_CN]
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [WeekId_CN] = (select b.WeekId_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  --[Week_CN]
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Week_CN] = (select b.Week_CN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_CN where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  --[Week_EN]
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Week_EN] = (select b.Week_EN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Week] as b on datepart(dw,a.DateId) = b.WeekId_EN where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  --[WeekendWorkDay]
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [WeekendWorkDay] = (select b.Name from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[WeekendWorkDay] as b on datepart(dw,a.DateId) = b.Id where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  /**
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  **/
		  fetch from pro_cursor into @dateid
	 END
	 DEALLOCATE pro_cursor
	 CLOSE pro_cursor
END
