USE [YLDB_03_DW_Learn]
GO
/****** Object:  StoredProcedure [dbo].[sp_DW_Fact_ALL_AlterDataDate]    Script Date: 2021/12/5 16:26:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: 2021.12.05
-- Description:	修改医疗BI项目DW库的所有事实表数据年份
-- =============================================
ALTER PROCEDURE [dbo].[sp_DW_Fact_ALL_AlterDataDate]
AS
BEGIN
     DECLARE @sql_str varchar(200)
	 DECLARE @datatablename varchar(30)
	 DECLARE pro_cursor Cursor scroll for
	 	 --select name from sys.objects where type='U' and name like 'DW_Fact_%'
	     select name from sysobjects where type='U' and name like 'DW_Fact_%'
		 --select name from sys.objects where type='U' and name like 'DW_Fact_%' and name not like 'DW_Fact_%_bak'
		 --select name from sys.objects where name  = 'DW_Fact_Salary_人员薪资'
	 OPEN pro_cursor
	 fetch from pro_cursor into @datatablename
	 while(@@FETCH_STATUS=0)
	 BEGIN
	 	  SET @sql_str = 'select * into [dbo].['+@datatablename+'_bak] from [dbo].['+@datatablename+']with(nolock)'
		  exec(@sql_str)
		  IF(@datatablename='DW_Fact_Salary_人员薪资')
		  BEGIN
		        SET @sql_str = 'ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资] NOCHECK CONSTRAINT FK_Salary_Date_日期'
				exec(@sql_str)
		  END
		  --SET @sql_str = 'update [dbo].['+@datatablename+'] set left([DateId],4) = ''2020'' where left([DateId],4) = ''2012'' '
		  SET @sql_str = 'update [dbo].['+@datatablename+'] set [DateId] = REPLACE([DateId],left([DateId],4),''2020'') where left([DateId],4) = ''2012'' '
		  exec(@sql_str)
		  --SET @sql_str = 'update [dbo].['+@datatablename+'] set left([DateId],4) = ''2021'' where left([DateId],4) = ''2013'' '
		  SET @sql_str = 'update [dbo].['+@datatablename+'] set [DateId] = REPLACE([DateId],left([DateId],4), ''2021'') where left([DateId],4) = ''2013'' '
		  exec(@sql_str)
		  IF(@datatablename='DW_Fact_Salary_人员薪资')
		  BEGIN
		        SET @sql_str = 'ALTER TABLE [dbo].[DW_Fact_Salary_人员薪资] CHECK CONSTRAINT FK_Salary_Date_日期'
				exec(@sql_str)
		  END
		  FETCH NEXT FROM pro_cursor into @datatablename
	 END
	 CLOSE pro_cursor
	 DEALLOCATE pro_cursor
END
