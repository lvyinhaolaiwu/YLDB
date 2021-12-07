if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_SignType_�շ�����')
            and   type = 'U')
   drop table DW_Dim_SignType_�շ�����
go

/*==============================================================*/
/* Table: DW_Dim_SignType_�շ�����                                  */
/*==============================================================*/
create table DW_Dim_SignType_�շ����� (
   SignId               int                  identity,
   SignName             varchar(8)           null,
   constraint PK_DW_DIM_SIGNTYPE_�շ����� primary key (SignId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_SignType_�շ�����') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_�շ�����' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_SignType_�շ�����', 
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_�շ�����'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_SignType_�շ�����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SignId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_�շ�����', 'column', 'SignId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�շ���������',
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_�շ�����', 'column', 'SignId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_SignType_�շ�����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SignName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_�շ�����', 'column', 'SignName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�շ���������',
   'user', @CurrentUser, 'table', 'DW_Dim_SignType_�շ�����', 'column', 'SignName'
go
