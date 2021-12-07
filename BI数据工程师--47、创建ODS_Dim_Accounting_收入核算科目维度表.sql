USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Dim_Accounting_收入核算科目]    Script Date: 2021/11/25 15:31:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_Accounting_收入核算科目](
	[AccountingID] [int] IDENTITY(1,1) NOT NULL,
	[Accounting] [nvarchar](100) NULL,
 CONSTRAINT [PK_ODS_DIM_ACCOUNTING_收入核算科目] PRIMARY KEY CLUSTERED 
(
	[AccountingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收入核算科目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Accounting_收入核算科目', @level2type=N'COLUMN',@level2name=N'AccountingID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收入核算科目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Accounting_收入核算科目', @level2type=N'COLUMN',@level2name=N'Accounting'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_Accounting_收入核算科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Accounting_收入核算科目'
GO


