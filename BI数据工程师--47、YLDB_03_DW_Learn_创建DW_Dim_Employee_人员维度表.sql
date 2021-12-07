if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_Employee_��Ա')
            and   type = 'U')
   drop table DW_Dim_Employee_��Ա
go

/*==============================================================*/
/* Table: DW_Dim_Employee_��Ա                                    */
/*==============================================================*/
create table DW_Dim_Employee_��Ա (
   EmployeeId           int                  identity,
   names                nvarchar(4)          null,
   DeptId               int                  null,
   constraint PK_DW_DIM_EMPLOYEE_��Ա primary key (EmployeeId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_Employee_��Ա') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_��Ա' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_Employee_��Ա', 
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_��Ա'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Employee_��Ա')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_��Ա', 'column', 'EmployeeId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ԱID',
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_��Ա', 'column', 'EmployeeId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Employee_��Ա')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'names')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_��Ա', 'column', 'names'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ա����',
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_��Ա', 'column', 'names'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Employee_��Ա')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DeptId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_��Ա', 'column', 'DeptId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_��Ա', 'column', 'DeptId'
go
