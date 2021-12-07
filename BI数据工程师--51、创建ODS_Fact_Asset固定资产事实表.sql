USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Fact_Asset]    Script Date: 2021/11/27 12:30:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Fact_Asset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssetCode] [nvarchar](30) NOT NULL,
	[Asset] [nvarchar](50) NULL,
	[CostItemId] [int] NULL,
	[DeptId] [int] NULL,
	[PurchaseDate] [datetime] NULL,
	[OriginalValue] [numeric](18, 2) NULL,
	[Life] [int] NULL
) ON [PRIMARY]
GO


