USE [YLDB_01_ODS_Learn]
GO

/****** Object:  Table [dbo].[ODS_Dim_Asset_�̶��ʲ�]    Script Date: 2021/11/27 16:41:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ODS_Dim_Asset_�̶��ʲ�](
	[AssetId] [int] IDENTITY(1,1) NOT NULL,
	[Asset] [nvarchar](50) NULL,
	[AssetCode] [nvarchar](30) NULL,
	[CostItemId] [int] NULL,
	[CostItemName] [nvarchar](20) NULL,
 CONSTRAINT [PK_ODS_DIM_ASSET_�̶��ʲ�] PRIMARY KEY CLUSTERED 
(
	[AssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/**ALTER TABLE [dbo].[ODS_Dim_Asset_�̶��ʲ�]  WITH CHECK ADD  CONSTRAINT [FK_Asset_CostType_�ɱ�����] FOREIGN KEY([CostItemId])
REFERENCES [dbo].[ODS_Dim_CostType] ([id])
GO

ALTER TABLE [dbo].[ODS_Dim_Asset_�̶��ʲ�] CHECK CONSTRAINT [FK_Asset_CostType_�ɱ�����]
GO
**/
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̶��ʲ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_�̶��ʲ�', @level2type=N'COLUMN',@level2name=N'AssetId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̶��ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_�̶��ʲ�', @level2type=N'COLUMN',@level2name=N'Asset'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̶��ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_�̶��ʲ�', @level2type=N'COLUMN',@level2name=N'AssetCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɱ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_�̶��ʲ�', @level2type=N'COLUMN',@level2name=N'CostItemId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɱ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_�̶��ʲ�', @level2type=N'COLUMN',@level2name=N'CostItemName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ODS_Dim_Asset_�̶��ʲ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ODS_Dim_Asset_�̶��ʲ�'
GO


