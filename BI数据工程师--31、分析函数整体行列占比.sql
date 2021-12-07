/**
1、  整体的最大值、最小值、均值、求和、标杆值差、均值差、排名综合得分
2、  整体占比（每一个值占整体值的百分比）
3、  二八占比（累加百分比）
4、  环比、同比
5、  数值分布
*/

--2、整体占比（每一个值占整体值的百分比）

select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock);
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType]with(nolock);
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept]with(nolock);
select top(10000000) CONVERT(varchar(8),a.Date,112) as 日期,c.Department as 科室,b.SignName as 费用分类,a.Amount as 数量,a.Money as 金额 from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType] as b with(nolock) on a.Sign = b.SignId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c with(nolock) on a.Deptid = c.Id;
select a.日期,a.费用分类,sum(a.金额)as 金额 from
(
select top(10000000) CONVERT(varchar(8),a.Date,112) as 日期,c.Department as 科室,b.SignName as 费用分类,a.Amount as 数量,a.Money as 金额 from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType] as b with(nolock) on a.Sign = b.SignId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c with(nolock) on a.Deptid = c.Id
)as a group by a.日期,a.费用分类;
select * from 
(
select a.日期 as 日期,a.费用分类 as 费用分类,sum(a.金额) as 金额 from
(
select top(10000000) CONVERT(varchar(8),a.Date,112) as 日期,c.Department as 科室,b.SignName as 费用分类,a.Amount as 数量,a.Money as 金额 from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType] as b with(nolock) on a.Sign = b.SignId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c with(nolock) on a.Deptid = c.Id
)as a group by a.日期,a.费用分类
)as b
pivot (sum(b.金额) for b.费用分类 In (挂号费,门诊医药,门诊收费,住院医药,住院收费)) as c
;
with sourceYL as
(
select * from
(
select a.日期 as 日期,a.费用分类 as 费用分类,sum(a.金额) as 金额 from
(
select top(10000000) CONVERT(varchar(8),a.Date,112) as 日期,c.Department as 科室,b.SignName as 费用分类,a.Amount as 数量,a.Money as 金额 from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType] as b with(nolock) on a.Sign = b.SignId
left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c with(nolock) on a.Deptid = c.Id
)as a group by a.日期,a.费用分类
)as b
pivot (sum(b.金额) for b.费用分类 In (挂号费,门诊医药,门诊收费,住院医药,住院收费)) as c
)select * from sourceYL;