USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Dim_DrugSort]    Script Date: 2021/11/26 1:02:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_DrugSort](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[DrugSort] [nvarchar](50) NOT NULL,
	[ItemSortId] [int] NULL,
	[CostItemId] [int] NULL
) ON [PRIMARY]
GO


