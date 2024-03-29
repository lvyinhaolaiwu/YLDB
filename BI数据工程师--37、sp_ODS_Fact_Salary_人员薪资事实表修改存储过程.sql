USE [YLDB_01_ODS_Learn]
GO
/****** Object:  StoredProcedure [dbo].[sp_ODS_Fact_Salary_人员薪资]    Script Date: 2021/11/4 13:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: 2021.11.04
-- Description:	整合24个人员薪资表到ODS库
-- =============================================
ALTER PROCEDURE [dbo].[sp_ODS_Fact_Salary_人员薪资] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	truncate table [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资]--清空表
	declare pro_cursor Cursor scroll for--创建游标
          select name from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].sysobjects where type='U' and name like '%salary%' and name <> 'ODS_Fact_201401salary'
	open pro_cursor--打开游标
	declare @name varchar(100)
	declare @sql_str varchar(400)--创建参数
	fetch from pro_cursor into @name--从游标里面取值赋值给参数
	while(@@FETCH_STATUS=0)--判断参数赋值是否成功
	BEGIN
	     --set @sql_str='insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资] select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
	     set @sql_str='insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资] select [Period],[DeptId],[SalaryItem],[Money],[EmpId],[CostcategoryId] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
		 select(@sql_str)
	     exec(@sql_str)
	     fetch from pro_cursor into @name
		 select(@name)
	END
	close pro_cursor--关闭游标
	deallocate pro_cursor--释放游标
    -- Insert statements for procedure here
	SELECT count(*) from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Salary_人员薪资];
END
