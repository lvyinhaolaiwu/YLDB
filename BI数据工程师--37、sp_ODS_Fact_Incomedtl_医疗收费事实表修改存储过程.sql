USE [YLDB_01_ODS_Learn]
GO
/****** Object:  StoredProcedure [dbo].[sp_ODS_Fact_Incomedtl_医疗收费]    Script Date: 2021/11/3 21:59:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: 2021.11.03
-- Description:	整合24个医疗收费表到ODS库
-- =============================================
ALTER PROCEDURE [dbo].[sp_ODS_Fact_Incomedtl_医疗收费] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	truncate table [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]--清空表
	--游标
	declare pro_cursor Cursor scroll for--创建游标
	    --select name from [DESKTOP-NNRODTU].[YLDB_Source].sys.objects where type='U' and name like '%Incomedtl%' and name <> 'ODS_Fact_201401Incomedtl'
		select name from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].sysobjects where type='U' and name like '%Incomedtl%' and name <> 'ODS_Fact_201401Incomedtl'
	open pro_cursor--打开游标
	declare @name varchar(100)
	declare @sql_str varchar(400)--创建参数
	fetch from pro_cursor into @name--从游标里面把值取出来赋值给参数
	while(@@FETCH_STATUS = 0)--判断参数赋值是否成功
	BEGIN
	     --set @sql_str = 'insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]([Date],[Sign],[PatientNo],[itemid],[AccountingId],[Deptid],[ExecDeptid],[Doctorid],[Amount],[Money]) select [Date],[Sign],[PatientNo],[itemid],[AccountingId],[Deptid],[ExecDeptid],[Doctorid],[Amount],[Money] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
		 set @sql_str = 'insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费] select [Date],[Sign],[PatientNo],[itemid],[AccountingId],[Deptid],[ExecDeptid],[Doctorid],[Amount],[Money] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
		 --set @sql_str = 'insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费] select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
		 --set @sql_str = 'insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费] select [Id],[Date],[Sign],[PatientNo],[itemid],[AccountingId],[Deptid],[ExecDeptid],[Doctorid],[Amount],[Money] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
		 --set @sql_str = 'insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费]([Id],[Date],[Sign],[PatientNo],[itemid],[AccountingId],[Deptid],[ExecDeptid],[Doctorid],[Amount],[Money]) select [Id],[Date],[Sign],[PatientNo],[itemid],[AccountingId],[Deptid],[ExecDeptid],[Doctorid],[Amount],[Money] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
		 select(@sql_str)
		 exec(@sql_str)
		 select(@name)
		 fetch from pro_cursor into @name
	END 
	close pro_cursor--关闭游标
	deallocate pro_cursor --释放游标
    select count(*) from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_Incomedtl_医疗收费];
END
