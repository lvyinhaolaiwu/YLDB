USE [YLDB_03_DW_Learn]
GO
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: 2021.12.01
-- Description:	生成日期维度表其他非主键字段的数据
-- =============================================
CREATE PROCEDURE sp_DW_Dim_Date_日期
AS
BEGIN
     --[DateId], [Date], [Year], [HalfYearId], 
	 --[HalfYear], [QuarterId], [QuarterEN], [QuarterCN], 
	 --[MonthId], [MonthEN], [MonthAbstract], [MonthCN], 
	 --[MonthDay], [YearDay], [YearWeek], [One Third Of Month], 
	 --[WeekId_EN], [WeekId_CN], [Week_EN], [Week_CN], [WeekendWorkDay]
     DECLARE @dateid varchar(15)
	 DECLARE @sql_str varchar(200)
     DECLARE pro_cursor Cursor scroll for
         select DateId from [dbo].[DW_Dim_Date_日期]
	 OPEN pro_cursor
	 fetch from pro_cursor into @dateid
	 while(@@FETCH_STATUS=0)
	 begin
	      /**select * from [dbo].[DW_Dim_Date_日期]
		  select * from [tempdb].[dbo].[HalfYear]
		  select * from [tempdb].[dbo].[Quarter]
		  select * from [tempdb].[dbo].[Month]
		  **/
		  -- [Date] select CONVERT(DATETIME,DateId,120) from [dbo].[DW_Dim_Date_日期] where DateId='19800201'
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
		  -- [MonthCN]   select b.MonthCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.DateId,5,2) = b.MonthId where a.DateId = '19930701'

		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Date] = '+CONVERT(DATETIME,@dateid,120)+' where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [Year] = '+LEFT(@dateid,4)+' where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [HalfYearId] = (select b.HalfYearId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[HalfYear] as b on SUBSTRING(a.'+@dateid+',5,2) =  b.HalfYearId where DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  --set @sql_str='update [dbo].[DW_Dim_Date_日期] set [HalfYear] = (select case when CONVERT(INT,SUBSTRING('+@dateid+',5,2))>6 then ''下半年'' else ''上半年'' end from [dbo].[DW_Dim_Date_日期] where DateId = '+@dateid+')'
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [HalfYear] =  (select b.HalfYear from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[HalfYear] as b on SUBSTRING(a.'+@dateid+',5,2) =  b.HalfYearId where DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [QuarterId] = (select b.QuarterId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.'+@dateid+',5,2) =  b.QuarterId where DateId='+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [QuarterEN] = (select b.QuarterEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.'+@dateid+',5,2) =  b.QuarterId where DateId='+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [QuarterCN] = (select b.QuarterCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Quarter] as b on SUBSTRING(a.'+@dateid+',5,2) =  b.QuarterId where DateId='+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [MonthId] = (select b.MonthId from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.'+@dateid+',5,2) = b.MonthId where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [MonthEN] = (select b.MonthEN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.'+@dateid+',5,2) = b.MonthId where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set [MonthCN] = (select b.MonthCN from [dbo].[DW_Dim_Date_日期] as a left join [tempdb].[dbo].[Month] as b on SUBSTRING(a.'+@dateid+',5,2) = b.MonthId where a.DateId = '+@dateid+') where DateId = '+@dateid
		  exec(@sql_str)
		  /*set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  exec(@sql_str)
		  set @sql_str='update [dbo].[DW_Dim_Date_日期] set '+@
		  **/
	 end
END
GO
select * from [dbo].[DW_Dim_Date_日期]
GO
