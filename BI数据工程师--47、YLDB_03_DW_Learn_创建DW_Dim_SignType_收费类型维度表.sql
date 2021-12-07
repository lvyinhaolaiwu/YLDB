if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_SignType_收费类型')
            and   type = 'U')
   drop table DW_Dim_SignType_收费类型
go

/*==============================================================*/
/* Table: DW_Dim_SignType_收费类型                                  */
/*==============================================================*/
create table DW_Dim_SignType_收费类型 (
   SignId               int                  identity,
   SignName             varchar(8)           null,
   constraint PK_DW_DIM_SIGNTYPE_收费类型 primary key (SignId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_SignType_收费类型') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_收费类型' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_SignType_收费类型', 
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_收费类型'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_SignType_收费类型')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SignId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_收费类型', 'column', 'SignId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '收费类型主键',
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_收费类型', 'column', 'SignId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_SignType_收费类型')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SignName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_收费类型', 'column', 'SignName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '收费类型名称',
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_收费类型', 'column', 'SignName'
go
