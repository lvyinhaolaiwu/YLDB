if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_Dept_����')
            and   type = 'U')
   drop table DW_Dim_Dept_����
go

/*==============================================================*/
/* Table: DW_Dim_Dept_����                                        */
/*==============================================================*/
create table DW_Dim_Dept_���� (
   DeptId               int                  identity,
   ParentId             int                  null,
   Department           nvarchar(100)        null,
   Code                 nvarchar(20)         null,
   DepartmentSort       int                  null,
   DepartmentSortName   nvarchar(4)          null,
   IsDept               int                  null,
   IsDeptName           nvarchar(6)          null,
   constraint PK_DW_DIM_DEPT_���� primary key (DeptId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_Dept_����') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_Dept_����', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DeptId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'DeptId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'DeptId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ParentId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'ParentId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'ParentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Department')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'Department'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'Department'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Code')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'Code'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ұ���',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'Code'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentSort')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'DepartmentSort'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'DepartmentSort'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentSortName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'DepartmentSortName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������������',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'DepartmentSortName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsDept')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'IsDept'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'IsDept'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Dept_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsDeptName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'IsDeptName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����������',
   'user', @CurrentUser, 'table', 'DW_Dim_Dept_����', 'column', 'IsDeptName'
go
