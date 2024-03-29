USE [YLDB_03_DW_Learn]
GO
/****** Object:  StoredProcedure [dbo].[sp_DW_Fact_ALL_Statistics]    Script Date: 2021/12/5 13:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: 2021.12.05
-- Description:	统计医疗BI项目DW库所有事实表的数据总量
-- =============================================
ALTER PROCEDURE [dbo].[sp_DW_Fact_ALL_Statistics] 
AS
BEGIN
     DECLARE @sum int
	 --DECLARE @temp VARCHAR(20)
	 --DECLARE @temp int
	 DECLARE @temp TABLE
	 (
	 [value] int 
	 )
	 DECLARE @datatablename varchar(40)
	 DECLARE @sql_str varchar(200)
	 DECLARE pro_cursor Cursor scroll for
	      --select name from sys.objects where type='U' and name like 'DW_Fact_%'
		  --select name from sysobjects where type='U' and name like 'DW_Fact_%'
		  --select name from sysobjects where type='U' and name like 'DW_Fact_%_bak'
		  select name from sysobjects where type='U' and name like 'DW_Fact_%' and name not like 'DW_Fact_%_bak'
	 OPEN pro_cursor
	 fetch from pro_cursor into @datatablename
	 set @sum=0
	 --TRUNCATE TABLE [tempdb].[dbo].[Statistics]
	 --TRUNCATE TABLE [dbo].[Statistics]
	 while(@@FETCH_STATUS=0)
	 BEGIN
	      --set @temp=''
	      --set @sql_str = 'select count(0) into '+@temp+'from [YLDB_03_DW_Learn].[dbo].['+@datatablename+']'
		  --set @sql_str = 'select count(*) into '+@temp+'from [YLDB_03_DW_Learn].[dbo].['+@datatablename+']'
		  --set @sql_str = 'select count(0) as 数据总量 into [Statistics] from [YLDB_03_DW_Learn].[dbo].['+@datatablename+'] '
		  --set @sql_str = 'select count(*) as 数据总量 into [Statistics] from [YLDB_03_DW_Learn].[dbo].['+@datatablename+']'
	      --set @sql_str = 'insert into [tempdb].[dbo].[Statistics]([value]) select count(0) from [YLDB_03_DW_Learn].[dbo].['+@datatablename+']'
		  --set @sql_str = 'insert into [tempdb].[dbo].[Statistics]([value]) select CONVERT(INT,count(0)) from [YLDB_03_DW_Learn].[dbo].['+@datatablename+']'
		  --set @sql_str = 'select count(0) from [YLDB_03_DW_Learn].[dbo].['+@datatablename+']'
		  set @sql_str = 'select count(0) as 数据量 from [YLDB_03_DW_Learn].[dbo].['+@datatablename+']'
		  --set @temp =  execute(@sql_str)
		  --set @sum = @sum+CONVERT(INT,@temp)
		  --set @sum = @sum+@temp
		  insert into @temp ([value]) exec(@sql_str)
	      fetch next from pro_cursor into @datatablename
	 END
	 CLOSE pro_cursor
	 DEALLOCATE pro_cursor
	 select @sum
	 select sum([value]) as 数据总量 from @temp
	 --select sum([value]) as 数据总量 from [tempdb].[dbo].[Statistics]
	 --select sum([value]) as 数据总量 from [dbo].[Statistics]
	 --select count(0) as 数据总量 into [Statistics_1] from [dbo].[DW_Fact_DrugCost_药品成本]
	 --select count(0) as 数据总量 into [Statistics_2] from [dbo].[DW_Fact_Material_领用物资]
END
GO
