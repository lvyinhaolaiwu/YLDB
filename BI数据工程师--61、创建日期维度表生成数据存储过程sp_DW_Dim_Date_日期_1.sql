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
-- Author:		Blueheart
-- Create date: 2021.12.03
-- Description:	����������������ά�ȱ�����
-- =============================================
CREATE PROCEDURE sp_DW_Dim_Date_����_1 
AS
BEGIN
    DECLARE @dateid varchar(15)
	DECLARE @sql_str varchar(300)
	--SET @dateid='20210102'
    SET @dateid='20210301'
	--select '20210101'+1
	--select '20210131'+1
	--while(@dateid<='20210131')
	while(@dateid<='20210331')
	BEGIN
	    set @sql_str = 'insert into [dbo].[DW_Dim_Date_����] ([DateId]) values('+@dateid+')'
	    exec(@sql_str)
		set @dateid = @dateid+1
	END
END
GO
GO