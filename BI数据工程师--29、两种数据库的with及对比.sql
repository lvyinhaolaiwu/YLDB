select * from [dbo].[ODS_Dim_Dept];
select * from [YLDB_Source].[dbo].[ODS_Dim_Dept];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept];
select * from [YLDB_Source].[dbo].[ODS_Dim_Dept] order by Id;

--临时表：速度非常快  内存  [tempdb]
select * into #a from [dbo].[ODS_Dim_Dept];
select * into #b from [YLDB_Source].[dbo].[ODS_Dim_Dept];
select * into #a from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept];
--tempdb 找到 临时表 然后再去判断 删除
select * from #a;
select * from #a order by Id;
drop table #a;
select * from #b;
select * from #b order by Id;
drop table #b;

--with  子句   （递归） ETC
--查看 医院组织结构 分了多少层
--递归 的意思 就是把父节点下面的所有子节点都拿出来
with dept as
(
   --select * from [YLDB_Source].[dbo].[ODS_Dim_Dept] where Id = 1;
   --select Id,parentId,Department,1 as lvl from [YLDB_Source].[dbo].[ODS_Dim_Dept] where Id = 1
   --select Id,parentId,Department,1 as lvl from [YLDB_Source].[dbo].[ODS_Dim_Dept] where Id = 2
   --select Id,parentId,Department,1 as lvl from [YLDB_Source].[dbo].[ODS_Dim_Dept] where Id = 7
   --select Id,parentId,Department,0 as lvl from [YLDB_Source].[dbo].[ODS_Dim_Dept] where Id = 1
   --select Id,parentId,Department,0 as lvl from [YLDB_Source].[dbo].[ODS_Dim_Dept] where Id = 2
   --select Id,parentId,Department,0 as lvl from [YLDB_Source].[dbo].[ODS_Dim_Dept] where Id = 7
   select Id,parentId,Department,1 as lvl from [YLDB_Source].[dbo].[ODS_Dim_Dept] where Id = 447
   union all
   select b.Id,b.parentId,b.Department,a.lvl+1 as lvl from dept as a
   inner join [YLDB_Source].[dbo].[ODS_Dim_Dept] as b on a.Id = b.parentId
)
/*,
emp as
(
   select * from dept
)*/
--select * from dept;
--select * from dept order by lvl desc;
select * from dept order by lvl;
