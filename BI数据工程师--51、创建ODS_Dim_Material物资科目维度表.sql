USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Dim_Material]    Script Date: 2021/11/27 12:27:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_Material](
	[id] [int] NOT NULL,
	[Code] [nvarchar](20) NULL,
	[Material] [nvarchar](50) NULL,
	[MaterialSortId] [int] NULL,
	[MaterialSort] [nvarchar](50) NULL,
	[CostItemId] [int] NULL
) ON [PRIMARY]
GO


