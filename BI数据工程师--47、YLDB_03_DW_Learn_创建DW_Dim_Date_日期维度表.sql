if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_Date_����')
            and   type = 'U')
   drop table DW_Dim_Date_����
go

/*==============================================================*/
/* Table: DW_Dim_Date_����                                        */
/*==============================================================*/
create table DW_Dim_Date_���� (
   DateId               int                  identity,
   Date                 datetime             null,
   Year                 int                  null,
   HalfYearId           int                  null,
   HalfYear             nvarchar(20)         null,
   QuarterId            int                  null,
   QuarterEN            nvarchar(20)         null,
   QuarterCN            nvarchar(20)         null,
   MonthId              int                  null,
   MonthEN              nvarchar(20)         null,
   MonthAbstract        nvarchar(20)         null,
   MonthCN              nvarchar(20)         null,
   MonthDay             int                  null,
   YearDay              int                  null,
   YearWeek             int                  null,
   "One Third Of Month" nvarchar(20)         null,
   WeekId_EN            int                  null,
   WeekId_CN            int                  null,
   Week_EN              nvarchar(20)         null,
   Week_CN              nvarchar(20)         null,
   WeekendWorkDay       nvarchar(20)         null,
   constraint PK_DW_DIM_DATE_���� primary key (DateId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_Date_����') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_Date_����', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DateId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'DateId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'DateId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Date')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'Date'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'Date'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Year')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'Year'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'Year'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HalfYearId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'HalfYearId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'HalfYearId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HalfYear')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'HalfYear'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'HalfYear'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'QuarterId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'QuarterId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'QuarterId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'QuarterEN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'QuarterEN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����EN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'QuarterEN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'QuarterCN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'QuarterCN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����CN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'QuarterCN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�·�ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthEN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthEN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�·�EN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthEN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthAbstract')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthAbstract'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�·ݼ�д',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthAbstract'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthCN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthCN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�·�CN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthCN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthDay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthDay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'MonthDay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'YearDay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'YearDay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'YearDay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'YearWeek')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'YearWeek'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'YearWeek'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'One Third Of Month')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'One Third Of Month'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ѯ',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'One Third Of Month'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WeekId_EN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'WeekId_EN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID_EN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'WeekId_EN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WeekId_CN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'WeekId_CN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID_CN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'WeekId_CN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Week_EN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'Week_EN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����_EN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'Week_EN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Week_CN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'Week_CN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����_CN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'Week_CN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_����')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WeekendWorkDay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'WeekendWorkDay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ĩƽʱ',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_����', 'column', 'WeekendWorkDay'
go
