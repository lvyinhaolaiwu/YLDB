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
-- Create date: 2021.12.05
-- Description:	修改医疗BI项目DW库的所有事实表数据年份
-- =============================================
CREATE PROCEDURE sp_DW_Fact_ALL_AlterDataDate
AS
BEGIN
     DECLARE @sql_str varchar(200)
	 DECLARE @datatablename varchar(30)
	 DECLARE pro_cursor Cursor scroll for
	 	 select name from sys.objects where type='U' and name like 'DW_Fact_%'
	     --select name from sysobjects where type='U' and name like 'DW_Fact_%'
	 OPEN pro_cursor
	 fetch from pro_cursor into @datatablename
	 while(@@FETCH_STATUS=0)
	 BEGIN
	      SET @sql_str = 'select * into [dbo].['+@datatablename+'_bak] from [dbo].['+@datatablename+']with(nolock)'
		  exec(@sql_str)
	      SET @sql_str = 'update [dbo].['+@datatablename+'] set left([DateId],4) = ''2020'' where left([DateId],4) = ''2012'' '
		  exec(@sql_str)
		  SET @sql_str = 'update [dbo].['+@datatablename+'] set left([DateId],4) = ''2021'' where left([DateId],4) = ''2013'' '
		  exec(@sql_str)
		  FETCH NEXT FROM pro_cursor into @datatablename
	 END
	 CLOSE pro_cursor
	 DEALLOCATE pro_cursor
END
GO
GO
