if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_Item_收费项目')
            and   type = 'U')
   drop table DW_Dim_Item_收费项目
go

/*==============================================================*/
/* Table: DW_Dim_Item_收费项目                                      */
/*==============================================================*/
create table DW_Dim_Item_收费项目 (
   ItemId               int                  identity,
   Item                 nvarchar(100)        null,
   ItemSortId           int                  null,
   ItemSortName         nvarchar(50)         null,
   Code                 nvarchar(20)         null,
   Price                float                null,
   StarterRate          numeric(18,2)        null,
   ExecRate             numeric(18,2)        null,
   NurseRate            numeric(18,2)        null,
   OutStarterRate       numeric(18,2)        null,
   OutExecRate          numeric(18,2)        null,
   OutNurseRate         numeric(18,2)        null,
   AccountingId         int                  null,
   constraint PK_DW_DIM_ITEM_收费项目 primary key (ItemId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_Item_收费项目') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_Item_收费项目', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ItemId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'ItemId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '收费项目主键',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'ItemId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Item')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'Item'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '项目名称',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'Item'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ItemSortId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'ItemSortId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '项目分类ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'ItemSortId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ItemSortName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'ItemSortName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '分类名称',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'ItemSortName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Code')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'Code'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '项目编码',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'Code'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Price')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'Price'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '项目单价',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'Price'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StarterRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'StarterRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '住院开单占比',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'StarterRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ExecRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'ExecRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '住院执行占比',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'ExecRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NurseRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'NurseRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '住院护理占比',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'NurseRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OutStarterRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'OutStarterRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '门诊开单占比',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'OutStarterRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OutExecRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'OutExecRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '门诊执行占比',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'OutExecRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OutNurseRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'OutNurseRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '门诊护理占比',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'OutNurseRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_收费项目')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AccountingId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'AccountingId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '核算ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_收费项目', 'column', 'AccountingId'
go
