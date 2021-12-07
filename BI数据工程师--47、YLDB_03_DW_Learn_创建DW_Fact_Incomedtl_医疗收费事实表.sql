/**if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_ҽ���շ�') and o.name = 'FK_Incomedtl_DateId_����')
alter table DW_Fact_Incomedtl_ҽ���շ�
   drop constraint FK_Incomedtl_DateId_����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_ҽ���շ�') and o.name = 'FK_Incomedtl_DeptId_����')
alter table DW_Fact_Incomedtl_ҽ���շ�
   drop constraint FK_Incomedtl_DeptId_����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_ҽ���շ�') and o.name = 'FK_Incomedtl_EmployeeId_��Ա')
alter table DW_Fact_Incomedtl_ҽ���շ�
   drop constraint FK_Incomedtl_EmployeeId_��Ա
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_ҽ���շ�') and o.name = 'FK_Incomedtl_ItemId_�շ���Ŀ')
alter table DW_Fact_Incomedtl_ҽ���շ�
   drop constraint FK_Incomedtl_ItemId_�շ���Ŀ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_ҽ���շ�') and o.name = 'FK_Incomedtl_SignId_�շ�����')
alter table DW_Fact_Incomedtl_ҽ���շ�
   drop constraint FK_Incomedtl_SignId_�շ�����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
            and   type = 'U')
   drop table DW_Fact_Incomedtl_ҽ���շ�
go**/

/*==============================================================*/
/* Table: DW_Fact_Incomedtl_ҽ���շ�                                */
/*==============================================================*/
create table DW_Fact_Incomedtl_ҽ���շ� (
   Id                   int                  identity,
   DW__DeptId           int                  null,
   DateId               int                  null,
   SignTypeId           int                  null,
   DW__ItemId           int                  null,
   EmployeeId           int                  null,
   Date                 datetime             null,
   Sign                 int                  null,
   PatientNo            nvarchar(20)         null,
   itemid               int                  null,
   Deptid               int                  null,
   ExecDeptid           int                  null,
   Doctorid             int                  null,
   Amount               int                  null,
   Money                numeric(18,2)        null,
   AccountingId         int                  null,
   constraint PK_DW_FACT_INCOMEDTL_ҽ���շ� primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Fact_Incomedtl_ҽ���շ�', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�շ���Ŀ����',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DW__DeptId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'DW__DeptId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'DW__��������',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'DW__DeptId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DateId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'DateId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'DateId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SignTypeId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'SignTypeId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�շ���������',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'SignTypeId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DW__ItemId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'DW__ItemId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'DW__�շ���Ŀ����',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'DW__ItemId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'EmployeeId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ԱID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'EmployeeId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Date')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Date'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Date'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sign')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Sign'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�շ�����',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Sign'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PatientNo')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'PatientNo'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���˱���',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'PatientNo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'itemid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'itemid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ĿID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'itemid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Deptid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Deptid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Deptid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ExecDeptid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'ExecDeptid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ִ�п���',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'ExecDeptid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Doctorid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Doctorid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ҽ��ID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Doctorid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Amount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Amount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Amount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Money')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Money'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'Money'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_ҽ���շ�')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AccountingId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'AccountingId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_ҽ���շ�', 'column', 'AccountingId'
go

/**alter table DW_Fact_Incomedtl_ҽ���շ�
   add constraint FK_Incomedtl_DateId_���� foreign key (DateId)
      references DW_Dim_Date_���� (DateId)
go

alter table DW_Fact_Incomedtl_ҽ���շ�
   add constraint FK_Incomedtl_DeptId_���� foreign key (DW__DeptId)
      references DW_Dim_Dept_���� (DeptId)
go

alter table DW_Fact_Incomedtl_ҽ���շ�
   add constraint FK_Incomedtl_EmployeeId_��Ա foreign key (EmployeeId)
      references DW_Dim_Employee_��Ա (EmployeeId)
go

alter table DW_Fact_Incomedtl_ҽ���շ�
   add constraint FK_Incomedtl_ItemId_�շ���Ŀ foreign key (DW__ItemId)
      references DW_Dim_Item_�շ���Ŀ (ItemId)
go

alter table DW_Fact_Incomedtl_ҽ���շ�
   add constraint FK_Incomedtl_SignId_�շ����� foreign key (SignTypeId)
      references DW_Dim_SignType_�շ����� (SignId)
go**/
