/**
1��  ��������ֵ����Сֵ����ֵ����͡����ֵ���ֵ������ۺϵ÷�
2��  ����ռ�ȣ�ÿһ��ֵռ����ֵ�İٷֱȣ�
3��  ����ռ�ȣ��ۼӰٷֱȣ�
4��  ���ȡ�ͬ��
5��  ��ֵ�ֲ�
*/

--2������ռ�ȣ�ÿһ��ֵռ����ֵ�İٷֱȣ�

select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock);
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType]with(nolock);
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept]with(nolock);
select top(10000000) CONVERT(varchar(8),a.Date,112) as ����,c.Department as ����,b.SignName as ���÷���,a.Amount as ����,a.Money as ��� from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType] as b with(nolock) on a.Sign = b.SignId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c with(nolock) on a.Deptid = c.Id;
select a.����,a.���÷���,sum(a.���)as ��� from
(
select top(10000000) CONVERT(varchar(8),a.Date,112) as ����,c.Department as ����,b.SignName as ���÷���,a.Amount as ����,a.Money as ��� from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType] as b with(nolock) on a.Sign = b.SignId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c with(nolock) on a.Deptid = c.Id
)as a group by a.����,a.���÷���;
select * from 
(
select a.���� as ����,a.���÷��� as ���÷���,sum(a.���) as ��� from
(
select top(10000000) CONVERT(varchar(8),a.Date,112) as ����,c.Department as ����,b.SignName as ���÷���,a.Amount as ����,a.Money as ��� from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType] as b with(nolock) on a.Sign = b.SignId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c with(nolock) on a.Deptid = c.Id
)as a group by a.����,a.���÷���
)as b
pivot (sum(b.���) for b.���÷��� In (�Һŷ�,����ҽҩ,�����շ�,סԺҽҩ,סԺ�շ�)) as c
;
with sourceYL as
(
select * from
(
select a.���� as ����,a.���÷��� as ���÷���,sum(a.���) as ��� from
(
select top(10000000) CONVERT(varchar(8),a.Date,112) as ����,c.Department as ����,b.SignName as ���÷���,a.Amount as ����,a.Money as ��� from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType] as b with(nolock) on a.Sign = b.SignId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c with(nolock) on a.Deptid = c.Id
)as a group by a.����,a.���÷���
)as b
pivot (sum(b.���) for b.���÷��� In (�Һŷ�,����ҽҩ,�����շ�,סԺҽҩ,סԺ�շ�)) as c
)select * from sourceYL;