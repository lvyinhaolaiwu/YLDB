USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Dim_Drug]    Script Date: 2021/11/25 23:28:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_Drug](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DrugSortId] [int] NULL,
	[DrugCode] [nvarchar](20) NOT NULL,
	[drug] [nvarchar](50) NULL,
	[AccountingId] [int] NULL,
	[CostPrice] [numeric](18, 2) NULL
) ON [PRIMARY]
GO


