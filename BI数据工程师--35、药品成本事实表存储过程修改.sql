USE [YLDB_01_ODS_Learn]
GO
/****** Object:  StoredProcedure [dbo].[sp_ODS_Fact_DrugCost_药品成本]    Script Date: 2021/11/2 17:12:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: <Create Date,,>
-- Description:	整合24个月的药品成本数据到ODS层
-- =============================================
ALTER PROCEDURE [dbo].[sp_ODS_Fact_DrugCost_药品成本]
AS
BEGIN
    --清空表  ODS_Fact_DrugCost_药品成本
	truncate table [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本];

	--游标
    declare pro_cursor Cursor scroll for --声明一个游标
       select name from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].sysobjects where type='U' and name like '%drugcost%' and name <> 'ODS_Fact_201401drugcost'
       --select * from [DESKTOP-NNRODTU].[YLDB_Source].sys.objects where type='U' and name like '%drugcost%'

	open pro_cursor--打开游标

	declare @name varchar(50)--声明参数  接收游标里面的值
	declare @sql_str varchar(2000)

	fetch next from pro_cursor into @name --从游标里面把值取出来  赋值给参数

	while(@@FETCH_STATUS = 0)--判断是否赋值成功

	begin--开始 逻辑  循环游标
	     --拼接插入语句
		 --set @sql_str='insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本](DeptCode,DrugCode,Date,Amount,Money) select DeptCode,DrugCode,Date,Amount,Money from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'
		 set @sql_str='insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本] select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].['+@name+']'


		 --select(@sql_str)--打印sql语句
		 select @sql_str--打印sql语句
		 exec(@sql_str)--执行sql语句
		 --select(@name)
		 select @name
		 fetch next from pro_cursor into @name
	end

	close pro_cursor--关闭游标
	deallocate pro_cursor--释放游标
	--SELECT * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本];
END