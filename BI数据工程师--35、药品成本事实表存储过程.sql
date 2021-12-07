-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		BlueheartBI
-- Create date: <Create Date,,>
-- Description:	整合24个月的药品成本数据到ODS层
-- =============================================
CREATE PROCEDURE sp_ODS_Fact_DrugCost_药品成本
AS
BEGIN

	SELECT * from [DESKTOP-NNRODTU].[YLDB_01_ODS_Learn].[dbo].[ODS_Fact_DrugCost_药品成本];
END
GO
