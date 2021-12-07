USE [YLDB_Source]
GO

/****** Object:  Table [dbo].[ODS_Dim_Item]    Script Date: 2021/11/11 22:07:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_Item](
	[id] [int] NOT NULL,
	[Item] [nvarchar](100) NULL,
	[ItemSortId] [int] NULL,
	[ItemSort] [nvarchar](50) NULL,
	[Code] [nvarchar](20) NOT NULL,
	[Price] [float] NULL,
	[StarterRate] [numeric](18, 2) NULL,
	[ExecRate] [numeric](18, 2) NULL,
	[NurseRate] [numeric](18, 2) NULL,
	[OutStarterRate] [numeric](18, 2) NULL,
	[OutExecRate] [numeric](18, 2) NULL,
	[OutNurseRate] [numeric](18, 2) NULL,
	[AccountingId] [int] NULL
) ON [PRIMARY]
GO


