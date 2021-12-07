--2012 --  2020
--2013 --  2021

--2021
--2020

select * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本];
select count(*) from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本];
insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本](*)
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201202drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201203drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201204drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201205drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201206drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201207drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201208drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201209drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201210drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201211drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201212drugcost];

select * from [DESKTOP-NNRODTU].[YLDB_Source].sys.objects ;
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].sysobjects;
select * from [DESKTOP-NNRODTU].[YLDB_Source].sys.objects where type='U' and name like '%drugcost%';
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].sysobjects where type='U' and name like '%drugcost%';

insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本](DeptCode,DrugCode,Date,Amount,Money) 
select DeptCode,DrugCode,Date,Amount,Money
from 
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].sysobjects where type='U' and name like '%drugcost%';

select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost];
select Id,DeptCode,DrugCode,Date,Amount,Money from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost]
exec [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[sp_ODS_Fact_DrugCost_药品成本];
insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本]([DeptCode],[DrugCode],[Date],[Amount],[Money])
		 select [DeptCode],[DrugCode],[Date],[Amount],[Money] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost]

insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本]([DeptCode],[DrugCode],[Date],[Amount],[Money]) select [DeptCode],[DrugCode],[Date],[Amount],[Money] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost]
insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本](DeptCode,DrugCode,Date,Amount,Money) select DeptCode,DrugCode,Date,Amount,Money from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost]
set IDENTITY_INSERT  [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本] ON
insert into [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本] select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost]
set IDENTITY_INSERT [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本] OFF
