set IDENTITY_INSERT ODS_Fact_DrugCost_ҩƷ�ɱ� on
insert into ODS_Fact_DrugCost_ҩƷ�ɱ�(Id,DeptCode,DrugCode,Date,Amount,Money) select Id,DeptCode,DrugCode,Date,Amount,Money from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost]
set IDENTITY_INSERT ODS_Fact_DrugCost_ҩƷ�ɱ� off
--truncate table ODS_Fact_DrugCost_ҩƷ�ɱ�
select count(*) from ODS_Fact_DrugCost_ҩƷ�ɱ�
