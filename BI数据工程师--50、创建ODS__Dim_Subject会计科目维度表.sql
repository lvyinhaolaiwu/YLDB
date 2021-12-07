USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Dim_Subject]    Script Date: 2021/11/27 0:45:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_Subject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectCode] [nvarchar](20) NOT NULL,
	[Subject] [nvarchar](50) NULL,
	[CostItemId] [int] NULL,
	[ExpenseId] [int] NULL,
	[AuxiliaryType] [int] NULL
) ON [PRIMARY]
GO


