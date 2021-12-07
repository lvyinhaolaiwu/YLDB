USE [tempdb]
GO

/****** Object:  Table [dbo].[Quarter]    Script Date: 2021/12/1 16:10:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Quarter](
	[QuarterId] [nvarchar](6) NOT NULL,
	[QuarterCN] [char](10) NULL,
	[QuarterEN] [nchar](10) NULL,
 CONSTRAINT [PK_Quarter] PRIMARY KEY CLUSTERED 
(
	[QuarterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


