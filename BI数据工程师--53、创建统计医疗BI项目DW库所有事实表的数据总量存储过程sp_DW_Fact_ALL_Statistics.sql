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
-- Description:	统计医疗BI项目DW库所有事实表的数据总量
-- =============================================
CREATE PROCEDURE sp_DW_Fact_ALL_Statistics 
AS
BEGIN
     DECLARE @sum int
	 DECLARE @temp int
	 DECLARE @datatablename varchar(40)
	 DECLARE @sql_str varchar(200)
	 DECLARE pro_cursor Cursor scroll for
	      select name from sys.objects where type='U' and name like 'DW_Fact%'
	 fetch from pro_cursor into @datatablename
	 set @sum=0
	 while(@@FETCH_STATUS=0)
	 BEGIN
	      set @temp=0
	      set @sql_str = 'select count(0) into '+@temp+' from '+@datatablename
	      EXEC(@sql_str)
		  set @sum = @sum+@temp
	      fetch from pro_cursor into @datatablename
	 END
	 select @sum
END
GO
