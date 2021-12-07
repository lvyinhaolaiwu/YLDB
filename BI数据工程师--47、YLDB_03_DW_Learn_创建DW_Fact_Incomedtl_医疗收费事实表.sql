/**if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_医疗收费') and o.name = 'FK_Incomedtl_DateId_日期')
alter table DW_Fact_Incomedtl_医疗收费
   drop constraint FK_Incomedtl_DateId_日期
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_医疗收费') and o.name = 'FK_Incomedtl_DeptId_科室')
alter table DW_Fact_Incomedtl_医疗收费
   drop constraint FK_Incomedtl_DeptId_科室
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_医疗收费') and o.name = 'FK_Incomedtl_EmployeeId_人员')
alter table DW_Fact_Incomedtl_医疗收费
   drop constraint FK_Incomedtl_EmployeeId_人员
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_医疗收费') and o.name = 'FK_Incomedtl_ItemId_收费项目')
alter table DW_Fact_Incomedtl_医疗收费
   drop constraint FK_Incomedtl_ItemId_收费项目
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DW_Fact_Incomedtl_医疗收费') and o.name = 'FK_Incomedtl_SignId_收费类型')
alter table DW_Fact_Incomedtl_医疗收费
   drop constraint FK_Incomedtl_SignId_收费类型
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Fact_Incomedtl_医疗收费')
            and   type = 'U')
   drop table DW_Fact_Incomedtl_医疗收费
go**/

/*==============================================================*/
/* Table: DW_Fact_Incomedtl_医疗收费                                */
/*==============================================================*/
create table DW_Fact_Incomedtl_医疗收费 (
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
   constraint PK_DW_FACT_INCOMEDTL_医疗收费 primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Fact_Incomedtl_医疗收费') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Fact_Incomedtl_医疗收费', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '收费项目主键',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DW__DeptId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'DW__DeptId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'DW__科室主键',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'DW__DeptId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DateId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'DateId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '日期主键',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'DateId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SignTypeId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'SignTypeId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '收费类型主键',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'SignTypeId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DW__ItemId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'DW__ItemId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'DW__收费项目主键',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'DW__ItemId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'EmployeeId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '人员ID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'EmployeeId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Date')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Date'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '日期',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Date'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sign')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Sign'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '收费类型',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Sign'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PatientNo')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'PatientNo'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '病人编码',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'PatientNo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'itemid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'itemid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '项目ID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'itemid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Deptid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Deptid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '科室ID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Deptid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ExecDeptid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'ExecDeptid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '执行科室',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'ExecDeptid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Doctorid')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Doctorid'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '医生ID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Doctorid'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Amount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Amount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '数量',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Amount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Money')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Money'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '金额',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'Money'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Fact_Incomedtl_医疗收费')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AccountingId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'AccountingId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '会计ID',
   'user', @CurrentUser, 'table', 'DW_Fact_Incomedtl_医疗收费', 'column', 'AccountingId'
go

/**alter table DW_Fact_Incomedtl_医疗收费
   add constraint FK_Incomedtl_DateId_日期 foreign key (DateId)
      references DW_Dim_Date_日期 (DateId)
go

alter table DW_Fact_Incomedtl_医疗收费
   add constraint FK_Incomedtl_DeptId_科室 foreign key (DW__DeptId)
      references DW_Dim_Dept_科室 (DeptId)
go

alter table DW_Fact_Incomedtl_医疗收费
   add constraint FK_Incomedtl_EmployeeId_人员 foreign key (EmployeeId)
      references DW_Dim_Employee_人员 (EmployeeId)
go

alter table DW_Fact_Incomedtl_医疗收费
   add constraint FK_Incomedtl_ItemId_收费项目 foreign key (DW__ItemId)
      references DW_Dim_Item_收费项目 (ItemId)
go

alter table DW_Fact_Incomedtl_医疗收费
   add constraint FK_Incomedtl_SignId_收费类型 foreign key (SignTypeId)
      references DW_Dim_SignType_收费类型 (SignId)
go**/
