USE [YLDB_Source]
GO

/****** Object:  Table [dbo].[ODS_Dim_SignType]    Script Date: 2021/11/11 21:51:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [YLDB_01_ODS_Learn].[dbo].[ODS_Dim_SignType](
	[SignId] [int] NOT NULL,
	[SignName] [varchar](8) NOT NULL
) ON [PRIMARY]
GO


