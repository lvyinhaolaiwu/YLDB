set IDENTITY_INSERT ODS_Fact_DrugCost_药品成本 on
insert into ODS_Fact_DrugCost_药品成本(Id,DeptCode,DrugCode,Date,Amount,Money) select Id,DeptCode,DrugCode,Date,Amount,Money from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost]
set IDENTITY_INSERT ODS_Fact_DrugCost_药品成本 off
--truncate table ODS_Fact_DrugCost_药品成本
select count(*) from ODS_Fact_DrugCost_药品成本
