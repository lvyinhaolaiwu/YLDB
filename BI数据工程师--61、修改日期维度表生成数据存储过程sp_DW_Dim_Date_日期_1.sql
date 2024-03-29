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
-- Create date: 2021.12.03
-- Description:	生成最近两年的日期维度表数据
-- =============================================
ALTER PROCEDURE sp_DW_Dim_Date_日期_1 
AS
BEGIN
    --DECLARE @dateid varchar(10)
	DECLARE @datepart_year varchar(100)
    DECLARE @datepart_month varchar(100)
	DECLARE @datepart_month_1 varchar(100)
    DECLARE @tempstr varchar(10)
	DECLARE @tempstr_1 varchar(10)
    DECLARE @i int
	DECLARE @tempstr_2 varchar(10)
	--DECLARE @j int
	--DECLARE @sql_str varchar(150)
	DECLARE @sql_str varchar(300)
	--SET @datepart_year = '2015,2016,2017,2018,2019'
	--SET @datepart_year = '2015,2017,2018,2019'
	SET @datepart_year = '2016'
	SET @tempstr=''
	--select charindex(',','2015,2016,2017,2018,2019')
	--select LEFT('2015,2016,2017,2018,2019',charindex(',','2015,2016,2017,2018,2019')-1)
    --select charindex(',',@datepart_year)
	--select CAST (1 AS VARCHAR(8))
    --select CONVERT (VARCHAR(8),1)
	--SELECT '01'+'1'
    --select charindex(',','2015')

    --SET @datepart_month = '01,03,05,07,08,10,12'
	--SET @datepart_month_1 = '04,06,09,11'
	--SET @i=1
	--SET @j=1
	--SET @dateid='20210102'
    --SET @dateid='20210301'
	--SET @dateid='20210501'
    --SET @dateid='20210701'
	--SET @dateid='20210801'
	--SET @dateid='20211001'
	--SET @dateid='20211201'
    --SET @dateid='20210201'
	--SET @dateid='20210401'
	--SET @dateid='20210601'
	--SET @dateid='20210901'
    --SET @dateid='20211101'
	--select '20210101'+1
	--select '20210131'+1
    --SET @dateid='20200101'
    --SET @dateid='20200301'
	--SET @dateid='20200501'
    --SET @dateid='20200701'
	--SET @dateid='20200801'
	--SET @dateid='20201001'
	--SET @dateid='20201201'
	--SET @dateid='20200201'
	--SET @dateid='20200401'
	--SET @dateid='20200601'
	--SET @dateid='20200901'
	--SET @dateid='20201101'
	--while(@dateid<='20210131')
	--while(@dateid<='20210331')
	--while(@dateid<='20210531')
	--while(@dateid<='20210731')
	--while(@dateid<='20210831')
	--while(@dateid<='20211031')
	--while(@dateid<='20211230')
	--while(@dateid<='20210228')
	--while(@dateid<='20210430')
    --while(@dateid<='20210630')
    --while(@dateid<='20210930')
	--while(@dateid<='20211130')
	--while(@dateid<='20200131')
    --while(@dateid<='20200331')
	--while(@dateid<='20200531')
	--while(@dateid<='20200731')
	--while(@dateid<='20200831')
	--while(@dateid<='20201031')
	--while(@dateid<='20201231')
	--while(@dateid<='20200229')
	--while(@dateid<='20200430')
	--while(@dateid<='20200630')
    --while(@dateid<='20200930')
	--while(@dateid<='20201130')
	--while(@i<=5)
	while(LEN(@datepart_year)>0)
	BEGIN
	    IF(charindex(',',@datepart_year)>0)
		  BEGIN
	        SET @tempstr=LEFT(@datepart_year,charindex(',',@datepart_year)-1)
		    SET @datepart_year=SUBSTRING(@datepart_year,charindex(',',@datepart_year)+1,LEN(@datepart_year)-charindex(',',@datepart_year))
		   END
		ELSE
		   BEGIN
		    SET @tempstr=@datepart_year
			SET @datepart_year=''
		   END
	    /**SET @datepart_month = '01,03,05,07,08,10,12'
		SET @tempstr_1=''
	    while(LEN(@datepart_month)>0)
		BEGIN
			IF(charindex(',',@datepart_month)>0)
			    begin
	              SET @tempstr_1=left(@datepart_month,charindex(',',@datepart_month)-1)
		          SET @datepart_month=SUBSTRING(@datepart_month,charindex(',',@datepart_month)+1,LEN(@datepart_month)-charindex(',',@datepart_month))
				 end
		    ELSE
			    BEGIN
		          SET @tempstr_1=@datepart_month
			      SET @datepart_month=''
			    END
	         --set @sql_str = 'insert into [dbo].[DW_Dim_Date_日期] ([DateId]) values('+@dateid+')'
			 SET @i=1
			 while(@i<=31)
			 BEGIN
			    IF(@i<10)
				    BEGIN
					     SET @tempstr_2 = '0'+CONVERT(VARCHAR(8),@i)
				    END
				ELSE
				    BEGIN
					    SET @tempstr_2 = CONVERT(VARCHAR(8),@i)
					END
		        --set @sql_str = 'insert into [dbo].[DW_Dim_Date_日期] ([DateId]) values('+@tempstr+@tempstr_1+convert(varchar(8),@i)+')'
	            set @sql_str = 'insert into [dbo].[DW_Dim_Date_日期] ([DateId]) values('+@tempstr+@tempstr_1+@tempstr_2+')'
				exec(@sql_str)
		        --set @dateid = @dateid+1
			    set @i = @i+1
			 END
		END
		**/
		--SET @datepart_month_1 = '04,06,09,11'
		SET @datepart_month_1 = '02'
		SET @tempstr_1=''
		WHILE(LEN(@datepart_month_1)>0)
		BEGIN
			IF(charindex(',',@datepart_month_1)>0)
			   BEGIN
	              SET @tempstr_1=left(@datepart_month_1,charindex(',',@datepart_month_1)-1)
		          SET @datepart_month_1=SUBSTRING(@datepart_month_1,charindex(',',@datepart_month_1)+1,LEN(@datepart_month_1)-charindex(',',@datepart_month_1))
		       END
			ELSE
			   BEGIN
		          SET @tempstr_1=@datepart_month_1
			      SET @datepart_month_1=''
				END
			SET @i=1
			--while(@i<=30)
			--while(@i<=28)
			while(@i<=29)
			BEGIN
			    IF(@i<10)
				    BEGIN
					     SET @tempstr_2 = '0'+CONVERT(VARCHAR(8),@i)
				    END
				ELSE
				    BEGIN
					    SET @tempstr_2 = CONVERT(VARCHAR(8),@i)
					END
	              --set @sql_str = 'insert into [dbo].[DW_Dim_Date_日期] ([DateId]) values('+@dateid+')'
		          --set @sql_str = 'insert into [dbo].[DW_Dim_Date_日期] ([DateId]) values('+@dateid+')'
				  --set @sql_str = 'insert into [dbo].[DW_Dim_Date_日期] ([DateId]) values('+@tempstr+@tempstr_1+CONVERT(VARCHAR(8),@i)+')'
	              set @sql_str = 'insert into [dbo].[DW_Dim_Date_日期] ([DateId]) values('+@tempstr+@tempstr_1+@tempstr_2+')'
				  exec(@sql_str)
		          --set @dateid = @dateid+1
				  set @i = @i+1
			END
		END
	END
END
GO
GO