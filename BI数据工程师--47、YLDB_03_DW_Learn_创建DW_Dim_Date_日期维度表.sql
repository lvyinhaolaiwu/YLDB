if exists (select 1
            from  sysobjects
           where  id = object_id('DW_Dim_Date_日期')
            and   type = 'U')
   drop table DW_Dim_Date_日期
go

/*==============================================================*/
/* Table: DW_Dim_Date_日期                                        */
/*==============================================================*/
create table DW_Dim_Date_日期 (
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
   constraint PK_DW_DIM_DATE_日期 primary key (DateId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DW_Dim_Date_日期') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'DW_Dim_Date_日期', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DateId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'DateId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '日期主键',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'DateId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Date')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'Date'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '日期',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'Date'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Year')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'Year'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '年',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'Year'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HalfYearId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'HalfYearId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '半年ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'HalfYearId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HalfYear')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'HalfYear'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '半年',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'HalfYear'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'QuarterId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'QuarterId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '季度ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'QuarterId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'QuarterEN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'QuarterEN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '季度EN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'QuarterEN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'QuarterCN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'QuarterCN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '季度CN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'QuarterCN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '月份ID',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthEN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthEN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '月份EN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthEN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthAbstract')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthAbstract'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '月份简写',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthAbstract'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthCN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthCN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '月份CN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthCN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthDay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthDay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '月天',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'MonthDay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'YearDay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'YearDay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '年天',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'YearDay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'YearWeek')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'YearWeek'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '年周',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'YearWeek'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'One Third Of Month')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'One Third Of Month'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '月旬',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'One Third Of Month'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WeekId_EN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'WeekId_EN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '星期ID_EN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'WeekId_EN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WeekId_CN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'WeekId_CN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '星期ID_CN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'WeekId_CN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Week_EN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'Week_EN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '星期_EN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'Week_EN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Week_CN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'Week_CN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '星期_CN',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'Week_CN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DW_Dim_Date_日期')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WeekendWorkDay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'WeekendWorkDay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '周末平时',
   'user', @CurrentUser, 'table', 'DW_Dim_Date_日期', 'column', 'WeekendWorkDay'
go
