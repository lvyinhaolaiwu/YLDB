select * from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]
select distinct DeptCode from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]
select distinct DeptCode from [YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_ҩƷ�ɱ�]with(nolock)

--�޸�������� --2012  2020   --2013  2021
--ִ��ͳ��ҽ��BI��ĿDW��������ʵ�����������洢����sp_DW_Fact_ALL_Statistics
EXEC [YLDB_03_DW_Learn].[dbo].[sp_DW_Fact_ALL_Statistics]
select * from [tempdb].[dbo].[Statistics]
select sum([value]) as �������� from [tempdb].[dbo].[Statistics]
select 1569+1
select 1569+'01'
select 1569+'12'
select '1569'+1
select '1569'+121
select '1569'+'01'
select count(0)+'01' from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
--ͳ��ҽ��BI��ĿDW��������ʵ�����������
USE [YLDB_03_DW_Learn]
GO
select name from
sysobjects where type='U' and name like 'DW_Fact_%'
select 'select count(0) from [dbo].['+name+']with(nolock)'
from sysobjects where type='U' and name like 'DW_Fact_%'
select count(0) from [dbo].[DW_Fact_Asset_�̶��ʲ�]
select count(0) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
select count(0) from [dbo].[DW_Fact_Fees_��Ʒ���]
select count(0) from [dbo].[DW_Fact_Incomedtl_ҽ���շ�]
select count(0) from [dbo].[DW_Fact_Material_��������]
select count(0) from [dbo].[DW_Fact_Salary_��Աн��]
select count(0) from [dbo].[DW_Fact_Asset_�̶��ʲ�]with(nolock)
select count(0) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]with(nolock)
select count(0) from [dbo].[DW_Fact_Fees_��Ʒ���]with(nolock)
select count(0) from [dbo].[DW_Fact_Incomedtl_ҽ���շ�]with(nolock)
select count(0) from [dbo].[DW_Fact_Material_��������]with(nolock)
select count(0) from [dbo].[DW_Fact_Salary_��Աн��]with(nolock)
select 'select DateId,count(0) from [dbo].['+name+']with(nolock) group by DateId'
from sysobjects where type='U' and name like 'DW_Fact_%'
select DateId,count(0) from [dbo].[DW_Fact_Asset_�̶��ʲ�]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_Fees_��Ʒ���]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_Incomedtl_ҽ���շ�]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_Material_��������]with(nolock) group by DateId
select DateId,count(0) from [dbo].[DW_Fact_Salary_��Աн��]with(nolock) group by DateId
select 'select DateId as ����,count(0) as ������ from [dbo].['+name+']with(nolock) group by DateId'
from sysobjects where type='U' and name like 'DW_Fact_%'
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Asset_�̶��ʲ�]with(nolock) group by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]with(nolock) group by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Fees_��Ʒ���]with(nolock) group by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Incomedtl_ҽ���շ�]with(nolock) group by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Material_��������]with(nolock) group by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Salary_��Աн��]with(nolock) group by DateId
select 'select DateId as ����,count(0) as ������ from [dbo].['+name+']with(nolock) group by DateId order by DateId'
from sysobjects where type='U' and name like 'DW_Fact_%'
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Asset_�̶��ʲ�]with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Fees_��Ʒ���]with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Incomedtl_ҽ���շ�]with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Material_��������]with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Salary_��Աн��]with(nolock) group by DateId order by DateId
select * into [DW_Fact_Salary_��Աн��_bak] from [dbo].[DW_Fact_Salary_��Աн��] with(nolock)
select * from [dbo].[DW_Fact_Salary_��Աн��_bak] with(nolock)
select * into [dbo].[DW_Fact_Material_��������_bak] from [dbo].[DW_Fact_Material_��������]with(nolock)
select * from [dbo].[DW_Fact_Material_��������_bak] with(nolock)
select * into [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak] from [dbo].[DW_Fact_Incomedtl_ҽ���շ�] with(nolock)
select count(0) from [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak] with(nolock)
select * from [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak]with(nolock)
select * into [dbo].[DW_Fact_Fees_��Ʒ���_bak] from [dbo].[DW_Fact_Fees_��Ʒ���]with(nolock)
select * from [dbo].[DW_Fact_Fees_��Ʒ���_bak] with(nolock)
select * into [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_bak] from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]with(nolock)
select * from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_bak] with(nolock)
select * into  [dbo].[DW_Fact_Asset_�̶��ʲ�_bak] from [dbo].[DW_Fact_Asset_�̶��ʲ�]with(nolock)
select * from [dbo].[DW_Fact_Asset_�̶��ʲ�_bak] with(nolock)
--54679195
--109358390
--54679195
--ִ���޸�ҽ��BI��ĿDW��������ʵ��������ݴ洢����sp_DW_Fact_ALL_AlterDataDate
EXEC [dbo].[sp_DW_Fact_ALL_AlterDataDate]
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] NOCHECK CONSTRAINT FK_Salary_Date_����
ALTER TABLE [dbo].[DW_Fact_Salary_��Աн��] CHECK CONSTRAINT FK_Salary_Date_����
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Asset_�̶��ʲ�_bak] with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�_bak] with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Fees_��Ʒ���_bak]with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Incomedtl_ҽ���շ�_bak]with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Material_��������_bak]with(nolock) group by DateId order by DateId
select DateId as ����,count(0) as ������ from [dbo].[DW_Fact_Salary_��Աн��_bak]with(nolock) group by DateId order by DateId
GO
select name from
sys.objects where type='U' and name like 'DW_Fact_%'
select 'select count(0) from [YLDB_03_DW_Learn].[dbo].['+name+']with(nolock)'
from
sys.objects where type='U' and name like 'DW_Fact_%'
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_�̶��ʲ�]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Fees_��Ʒ���]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_ҽ���շ�]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Material_��������]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_��Աн��]
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Asset_�̶��ʲ�]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_DrugCost_ҩƷ�ɱ�]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Fees_��Ʒ���]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Incomedtl_ҽ���շ�]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Material_��������]with(nolock)
select count(0) from [YLDB_03_DW_Learn].[dbo].[DW_Fact_Salary_��Աн��]with(nolock)
--ִ���޸�ҽ��BI��ĿDW��������ʵ��������ݴ洢����sp_DW_Fact_ALL_AlterDataDate
EXEC [YLDB_03_DW_Learn].[dbo].[sp_DW_Fact_ALL_AlterDataDate]