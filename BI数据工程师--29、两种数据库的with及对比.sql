select * from [dbo].[ODS_Dim_Dept];
select * from [YLDB_Source].[dbo].[ODS_Dim_Dept];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept];
select * from [YLDB_Source].[dbo].[ODS_Dim_Dept] order by Id;

--��ʱ���ٶȷǳ���  �ڴ�  [tempdb]
select * into #a from [dbo].[ODS_Dim_Dept];
select * into #b from [YLDB_Source].[dbo].[ODS_Dim_Dept];
select * into #a from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept];
--tempdb �ҵ� ��ʱ�� Ȼ����ȥ�ж� ɾ��
select * from #a;
select * from #a order by Id;
drop table #a;
select * from #b;
select * from #b order by Id;
drop table #b;

--with  �Ӿ�   ���ݹ飩 ETC
--�鿴 ҽԺ��֯�ṹ ���˶��ٲ�
--�ݹ� ����˼ ���ǰѸ��ڵ�����������ӽڵ㶼�ó���
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
