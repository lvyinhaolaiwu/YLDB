if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_Item_�շ���Ŀ')
            and   type = 'U')
   drop table DW_Dim_Item_�շ���Ŀ
go

/*==============================================================*/
/* Table: DW_Dim_Item_�շ���Ŀ                                      */
/*==============================================================*/
create table DW_Dim_Item_�շ���Ŀ (
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
   constraint PK_DW_DIM_ITEM_�շ���Ŀ primary key (ItemId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_Item_�շ���Ŀ') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_Item_�շ���Ŀ', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ItemId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'ItemId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�շ���Ŀ����',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'ItemId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Item')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'Item'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ŀ����',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'Item'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ItemSortId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'ItemSortId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ŀ����ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'ItemSortId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ItemSortName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'ItemSortName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'ItemSortName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Code')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'Code'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ŀ����',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'Code'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Price')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'Price'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ŀ����',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'Price'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StarterRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'StarterRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'סԺ����ռ��',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'StarterRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ExecRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'ExecRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'סԺִ��ռ��',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'ExecRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NurseRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'NurseRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'סԺ����ռ��',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'NurseRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OutStarterRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'OutStarterRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���￪��ռ��',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'OutStarterRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OutExecRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'OutExecRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ִ��ռ��',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'OutExecRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OutNurseRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'OutNurseRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ﻤ��ռ��',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'OutNurseRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Item_�շ���Ŀ')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AccountingId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'AccountingId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Item_�շ���Ŀ', 'column', 'AccountingId'
go
