USE [tempdb]
GO

/****** Object:  Table [dbo].[Month]    Script Date: 2021/12/1 22:43:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Month](
	[MonthId] [int] NOT NULL,
	[MonthEN] [nchar](10) NULL,
	[MonthCN] [char](10) NULL,
 CONSTRAINT [PK_Month] PRIMARY KEY CLUSTERED 
(
	[MonthId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


