if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_Employee_人员')
            and   type = 'U')
   drop table DW_Dim_Employee_人员
go

/*==============================================================*/
/* Table: DW_Dim_Employee_人员                                    */
/*==============================================================*/
create table DW_Dim_Employee_人员 (
   EmployeeId           int                  identity,
   names                nvarchar(4)          null,
   DeptId               int                  null,
   constraint PK_DW_DIM_EMPLOYEE_人员 primary key (EmployeeId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_Employee_人员') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_人员' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_Employee_人员', 
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_人员'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Employee_人员')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_人员', 'column', 'EmployeeId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '人员ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_人员', 'column', 'EmployeeId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Employee_人员')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'names')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_人员', 'column', 'names'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '人员名称',
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_人员', 'column', 'names'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Employee_人员')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DeptId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_人员', 'column', 'DeptId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '科室ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Employee_人员', 'column', 'DeptId'
go
