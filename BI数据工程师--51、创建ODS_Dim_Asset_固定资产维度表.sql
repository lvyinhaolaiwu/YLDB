USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Dim_Asset_固定资产]    Script Date: 2021/11/27 16:41:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_Asset_固定资产](
	[AssetId] [int] IDENTITY(1,1) NOT NULL,
	[Asset] [nvarchar](50) NULL,
	[AssetCode] [nvarchar](30) NULL,
	[CostItemId] [int] NULL,
	[CostItemName] [nvarchar](20) NULL,
 CONSTRAINT [PK_ODS_DIM_ASSET_固定资产] PRIMARY KEY CLUSTERED 
(
	[AssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/**ALTER TABLE [dbo].[ODS_Dim_Asset_固定资产]  WITH CHECK ADD  CONSTRAINT [FK_Asset_CostType_成本类型] FOREIGN KEY([CostItemId])
REFERENCES [dbo].[ODS_Dim_CostType] ([id])
GO

ALTER TABLE [dbo].[ODS_Dim_Asset_固定资产] CHECK CONSTRAINT [FK_Asset_CostType_成本类型]
GO
**/
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定资产ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_固定资产', @level2type=N'COLUMN',@level2name=N'AssetId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定资产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_固定资产', @level2type=N'COLUMN',@level2name=N'Asset'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定资产编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_固定资产', @level2type=N'COLUMN',@level2name=N'AssetCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成本类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_固定资产', @level2type=N'COLUMN',@level2name=N'CostItemId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成本类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_固定资产', @level2type=N'COLUMN',@level2name=N'CostItemName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_Asset_固定资产' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_固定资产'
GO


