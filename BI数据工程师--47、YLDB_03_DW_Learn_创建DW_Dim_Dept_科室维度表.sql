if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_Dept_科室')
            and   type = 'U')
   drop table DW_Dim_Dept_科室
go

/*==============================================================*/
/* Table: DW_Dim_Dept_科室                                        */
/*==============================================================*/
create table DW_Dim_Dept_科室 (
   DeptId               int                  identity,
   ParentId             int                  null,
   Department           nvarchar(100)        null,
   Code                 nvarchar(20)         null,
   DepartmentSort       int                  null,
   DepartmentSortName   nvarchar(4)          null,
   IsDept               int                  null,
   IsDeptName           nvarchar(6)          null,
   constraint PK_DW_DIM_DEPT_科室 primary key (DeptId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_Dept_科室') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_Dept_科室', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_科室')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DeptId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'DeptId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '科室主键',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'DeptId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_科室')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ParentId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'ParentId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '父ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'ParentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_科室')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Department')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'Department'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '科室名称',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'Department'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_科室')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Code')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'Code'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '科室编码',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'Code'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_科室')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentSort')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'DepartmentSort'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '科室类型ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'DepartmentSort'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_科室')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentSortName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'DepartmentSortName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '科室类型名称',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'DepartmentSortName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_科室')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsDept')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'IsDept'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '科室类别ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'IsDept'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_科室')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsDeptName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'IsDeptName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '科室类别名称',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_科室', 'column', 'IsDeptName'
go
