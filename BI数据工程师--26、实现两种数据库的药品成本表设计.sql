
--查询数据库中的表个数
select * from sys.objects where type = 'U';
--查询某个类型的表个数
select * from sys.objects where type = 'U' and name like '%drugcost%';


--201201---201401  2年的数据 25个表
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost];--药品成本表