USE [YLDB_Source]
GO

/****** Object:  Table [dbo].[ODS_Dim_Dept]    Script Date: 2021/11/11 22:14:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Dept](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Department] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](20) NULL,
	[DepartmentSort] [int] NULL,
	[DepartmentSortName] [varchar](4) NULL,
	[IsDept] [int] NULL,
	[IsDeptName] [varchar](8) NULL
) ON [PRIMARY]
GO


