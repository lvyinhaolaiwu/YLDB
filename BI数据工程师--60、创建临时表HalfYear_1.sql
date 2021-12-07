USE [tempdb]
GO

/****** Object:  Table [dbo].[HalfYear]    Script Date: 2021/12/1 22:44:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HalfYear](
	[HalfYearId] [int] NOT NULL,
	[HalfYear] [nvarchar](20) NULL,
 CONSTRAINT [PK_HalfYear] PRIMARY KEY CLUSTERED 
(
	[HalfYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


