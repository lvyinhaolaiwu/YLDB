/*
һ���﷨
��1��
     select 
	 from
	      ��left/right/inner join��
	 where
	 group by
	 having
	 order by
 ��2��
     delete/drop
 ��3��
     insert into
 ��4��
     update
*/


--��1����ѯ��ÿ���µĹҺ�����
--��2����ѯ��ÿ����ҽ����ҩ�������ǰ10��
--��3����ѯ��ÿ�겡�˽ɷ�����ǰ100��
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept];
--select * from [YLDB_Source].[dbo].[ODS_Dim_Dept];
--select * from [dbo].[ODS_Dim_Dept];
--select * from [ODS_Dim_Dept];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] order by Id;

--����IsDept=4 ʱ IsDeptName='����Ԫ'
update [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] set IsDeptName='����Ԫ' where IsDept=4;
update [YLDB_Source].[dbo].[ODS_Dim_Dept] set IsDeptName='����Ԫ' where IsDept=4;
update [dbo].[ODS_Dim_Dept] set IsDeptName='����Ԫ' where IsDept=4;
update [ODS_Dim_Dept] set IsDeptName='����Ԫ' where IsDept=4;
update ODS_Dim_Dept set IsDeptName='����Ԫ' where IsDept=4;
select * from ODS_Dim_Dept where IsDeptName is null;

--��1����ѯ��ÿ���µĹҺ�����
--1.�ҵ��Һ�����
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock);
select * from [YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock);
select * from [dbo].[ODS_Fact_201201Incomedtl]with(nolock);
select * from [ODS_Fact_201201Incomedtl]with(nolock);
select * from ODS_Fact_201201Incomedtl with(nolock);
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item];
select * from [YLDB_Source].[dbo].[ODS_Dim_Item];
select * from [dbo].[ODS_Dim_Item];
select * from [ODS_Dim_Item];
select * from ODS_Dim_Item;
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] where Item like '%�Һ�%';
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock);
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] where Item like '%�Һ�%';
select top 5 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id where b.Item like '%�Һ�%';
select top 5 left(a.Date,7) as month,sum(a.Money) as money   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id where b.Item like '%�Һ�%' group by left(a.Date,7);
select top 5 month(a.Date) as month,sum(a.Money) as money   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id where b.Item like '%�Һ�%' group by month(a.Date);
select top 5 year(a.Date)as years,month(a.Date) as months,sum(a.Money) as moneys   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id where b.Item like '%�Һ�%' group by year(a.Date),month(a.Date);
select top 5 year(a.Date)as years,month(a.Date) as months,sum(a.Money) as moneys   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id where b.Item like '%�Һ�%' group by year(a.Date),month(a.Date)
union all
select top 5 year(a.Date)as years,month(a.Date) as months,sum(a.Money) as moneys   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201202Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id where b.Item like '%�Һ�%' group by year(a.Date),month(a.Date)
union
select top 5 year(a.Date)as years,month(a.Date) as months,sum(a.Money) as moneys   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201203Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id where b.Item like '%�Һ�%' group by year(a.Date),month(a.Date)
union all
select top 5 year(a.Date)as years,month(a.Date) as months,sum(a.Money) as moneys   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201204Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id where b.Item like '%�Һ�%' group by year(a.Date),month(a.Date);
--��ѯ������ÿ���µĹҺ�����  201201
--��ѯ��ÿ���¿��ҵĹҺ�����  201201
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock);
select * from (
select ROW_NUMBER() over (order by id) as rn,[Id]
      ,[Date]
      ,[Sign]
      ,[PatientNo]
      ,[itemid]
      ,[AccountingId]
      ,[Deptid]
      ,[ExecDeptid]
      ,[Doctorid]
      ,[Amount]
      ,[Money] from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock)
)as a where a.rn<=3;
select top 100 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept];
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item];
select top 100 year(a.Date)as years,month(a.Date) as months,sum(a.Money) as moneys   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c on a.Deptid=c.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id  where c.IsDeptName='����' and  b.Item like '%�Һ�%' group by year(a.Date),month(a.Date);
select top 100 year(a.Date)as years,month(a.Date) as months,c.Department as Department,sum(a.Money) as moneys   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c on a.Deptid=c.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id  where c.IsDept=2 and  b.Item like '%�Һ�%' group by year(a.Date),month(a.Date),c.Department;
select top 100 year(a.Date)as years,month(a.Date) as months,c.Department as Department,sum(a.Money) as moneys   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c on a.Deptid=c.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id  where c.IsDept=2 and  b.Item like '%�Һ�%' group by year(a.Date),month(a.Date),c.Department order by moneys desc;
--��ѯ��ÿ���¿��ҵĹҺ��������2000Ԫ��  201201
--��ѯ������ÿ���µĹҺ�����  201201
select top 100 year(a.Date)as years,month(a.Date) as months,c.Department as Department,sum(a.Money) as moneys   from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock)  left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as c on a.Deptid=c.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Item] as b on a.itemid =  b.id  where c.IsDept=2 and  b.Item like '%�Һ�%' group by year(a.Date),month(a.Date),c.Department having (sum(a.Money)) > 2000 order by moneys desc ;

--��2����ѯ��ÿ����ҽ����ҩ�������ǰ10��
--��ѯ��ÿ���¿���ҽ����ҩ�������ǰ3��
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock);
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost];
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_drug];
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201drugcost];
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_drug];
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock);
select top 10 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_SignType];
select top 10000 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl]with(nolock) where Sign in (1,3);
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_drug] where Id='12793';
select * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_DrugSort];
--1.����������ҵ�  ҩƷ�����ʶ   ��Sign=1/3��
--2.�������������ҹ���
--3.�������������Ա����
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b with(nolock);
select top 3 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Employee] as c with(nolock);
select top 10000 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock) left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b with(nolock) on a.Deptid = b.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Employee] as c with(nolock) on a.Doctorid = c.Id where Sign in (1,3) ;
select top 10000 * from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock) left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b with(nolock) on a.Deptid = b.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Employee] as c with(nolock) on a.Doctorid = c.Id where Sign =1 or Sign=3;
select top 10000  year(a.Date) as years,month(a.Date)as months ,b.Department,c.names,sum(a.Money)as moneys from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock) left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b with(nolock) on a.Deptid = b.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Employee] as c with(nolock) on a.Doctorid = c.Id where Sign =1 or Sign=3 group by year(a.Date),month(a.Date),b.Department,c.names order by Department,moneys desc;
select top 10000  year(a.Date) as years,month(a.Date)as months ,c.names,sum(a.Money)as moneys from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock) left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b with(nolock) on a.Deptid = b.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Employee] as c with(nolock) on a.Doctorid = c.Id where Sign =1 or Sign=3 group by year(a.Date),month(a.Date),c.names order by moneys desc;
select top 10000  year(a.Date) as years,month(a.Date)as months ,c.DeptId,c.names,sum(a.Money)as moneys from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock) left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b with(nolock) on a.Deptid = b.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Employee] as c with(nolock) on a.Doctorid = c.Id where Sign =1 or Sign=3 group by year(a.Date),month(a.Date),c.DeptId,c.names order by moneys desc;
select d.*,b.Department
from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b right join (
select top 10000  year(a.Date) as years,month(a.Date)as months ,c.DeptId,c.names,sum(a.Money)as moneys from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock) left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b with(nolock) on a.Deptid = b.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Employee] as c with(nolock) on a.Doctorid = c.Id where Sign =1 or Sign=3 group by year(a.Date),month(a.Date),c.DeptId,c.names 
) as d on b.Id=d.DeptId order by d.moneys desc;
select a.*,b.Department
from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b right join (
select top 10000  year(a.Date) as years,month(a.Date)as months ,c.DeptId,c.names,sum(a.Money)as moneys from [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Fact_201201Incomedtl] as a with(nolock) left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Dept] as b with(nolock) on a.Deptid = b.Id left join [DESKTOP-NNRODTU].[YLDB_Source].[dbo].[ODS_Dim_Employee] as c with(nolock) on a.Doctorid = c.Id where Sign =1 or Sign=3 group by year(a.Date),month(a.Date),c.DeptId,c.names 
) as a on b.Id=a.DeptId order by a.moneys desc;
