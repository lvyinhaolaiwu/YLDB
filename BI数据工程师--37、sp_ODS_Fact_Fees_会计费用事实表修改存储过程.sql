USE [YLDB_01_ODS_Learn]
GO
/****** Object:  StoredProcedure [dbo].[sp_ODS_Fact_Fees_会计费用]    Script Date: 2021/11/3 20:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: 2021.11.03
-- Description:	整合24个会计费用表到ODS库
-- =============================================
ALTER PROCEDURE [dbo].[sp_ODS_Fact_Fees_会计费用]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	truncate table [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用]--清空表
	--游标
	declare pro_cursor Cursor scroll for --创建游标
	   --select name from [DESKTOP-NNRODTU].[YLDB_Source].sys.objects where type='U' and name like'%fee%' and name <> 'ODS_Fact_201401fees'
	   select name from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].sysobjects where type='U' and name like'%fees%' and name <> 'ODS_Fact_201401fees'
    open pro_cursor--打开游标
    declare @name varchar(100)
	declare @sql_str varchar(400)--声明参数接收游标里面的值
	fetch from pro_cursor into @name--从游标里面把值取出来，赋值给参数
	while(@@FETCH_STATUS=0)--判断参数赋值是否成功
	BEGIN
	    set @sql_str='insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用] select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
		select(@sql_str)
		exec(@sql_str)
	    fetch from pro_cursor into @name
	    select(@name)
	END
	close pro_cursor--关闭游标
	deallocate pro_cursor--释放游标
	select count(*) from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Fees_会计费用]
END
