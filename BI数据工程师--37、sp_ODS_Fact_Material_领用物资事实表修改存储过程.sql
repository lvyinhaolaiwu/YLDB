USE [YLDB_01_ODS_Learn]
GO
/****** Object:  StoredProcedure [dbo].[sp_ODS_Fact_Material_领用物资]    Script Date: 2021/11/4 0:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: 2021.11.03
-- Description:	整合24个领用物资表到ODS库
-- =============================================
ALTER PROCEDURE [dbo].[sp_ODS_Fact_Material_领用物资]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	truncate table [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]--清空表
	--游标
	declare pro_cursor Cursor scroll for--创建游标
	    --select name from [DESKTOP-NNRODTU].[YLDB_Source].sys.objects where type='U' and name like 'ODS_Fact_%Material%' and name <> 'ODS_Fact_201401Material'
	    select name from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].sysobjects where type='U' and name like 'ODS_Fact_%Material%' and name <> 'ODS_Fact_201401Material'
	open pro_cursor--打开游标
	declare @name varchar(100)
	declare @sql_str varchar(400)
	--declare @sql_str1 varchar(400)
	--declare @rows  int
	--declare @i varchar(100)--创建参数
	fetch from pro_cursor into @name--从游标里面取值赋值给参数
	while(@@FETCH_STATUS=0)--判断参数赋值是否成功
    BEGIN
	    --set @sql_str1 = 'select count(*) from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
	    --set @sql_str = 'insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]([Date],[VoucherNo],[MaterialCode],[Amount],[Money],[DeptId]) select
		set @sql_str = 'insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资] select
	    [Date]
        ,[VoucherNo]
        ,[MaterialCode]
        ,[Amount]
        ,[Money]
        ,[DeptId] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
	    --set @sql_str = 'insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]([id],[Date],[VoucherNo],[MaterialCode],[Amount],[Money],[DeptId]) select
		/**set @sql_str = 'insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资] select
         [id]
	    ,[Date]
        ,[VoucherNo]
        ,[MaterialCode]
        ,[Amount]
        ,[Money]
        ,[DeptId] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'**/		
		--select(@sql_str1)
		--exec  sp_executesql @sql_str1, N'@i int output', @i output
		--set @rows=@rows+@i
		select(@sql_str)
		exec(@sql_str)
		select(@name)
		fetch from pro_cursor into @name
	END
	--select(@rows)
	close pro_cursor--关闭游标
	deallocate pro_cursor--释放游标
	SELECT count(*) from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Material_领用物资]
END
