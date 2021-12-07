USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Dim_Salary_薪资科目]    Script Date: 2021/11/27 21:17:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_Salary_薪资科目](
	[SalaryId] [int] IDENTITY(1,1) NOT NULL,
	[CostcategoryId] [int] NULL,
	[CostcategoryName] [nvarchar](50) NULL,
	[SalaryItem] [nvarchar](20) NULL,
 CONSTRAINT [PK_ODS_DIM_SALARY_薪资科目] PRIMARY KEY CLUSTERED 
(
	[SalaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/**ALTER TABLE [dbo].[ODS_Dim_Salary_薪资科目]  WITH CHECK ADD  CONSTRAINT [FK_Salary_CostType_成本类型] FOREIGN KEY([CostcategoryId])
REFERENCES [dbo].[ODS_Dim_CostType_成本类型] ([CostTypeId])
GO

ALTER TABLE [dbo].[ODS_Dim_Salary_薪资科目] CHECK CONSTRAINT [FK_Salary_CostType_成本类型]
GO**/

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪资科目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Salary_薪资科目', @level2type=N'COLUMN',@level2name=N'SalaryId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成本类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Salary_薪资科目', @level2type=N'COLUMN',@level2name=N'CostcategoryId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成本类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Salary_薪资科目', @level2type=N'COLUMN',@level2name=N'CostcategoryName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成本类型编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Salary_薪资科目', @level2type=N'COLUMN',@level2name=N'SalaryItem'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_Salary_薪资科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Salary_薪资科目'
GO


