USE [YLDB_Source]
GO

/****** Object:  Table [dbo].[ODS_Dim_Employee]    Script Date: 2021/11/11 23:02:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[names] [nvarchar](4) NULL,
	[DeptId] [int] NULL
) ON [PRIMARY]
GO


