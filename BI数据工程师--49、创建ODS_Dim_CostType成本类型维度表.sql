USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Dim_CostType]    Script Date: 2021/11/26 1:04:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_CostType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[CostCategory] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](20) NULL
) ON [PRIMARY]
GO


