USE [MyDb]
GO

/****** Object:  Table [Facts].[SalesOrderDetail]    Script Date: 6/4/2018 18:49:39 ******/

IF OBJECT_ID('Facts.SalesOrderDetail', 'U') is not null
	DROP TABLE [Facts].[SalesOrderDetail]
GO

/****** Object:  Table [Facts].[SalesOrderDetail]    Script Date: 6/4/2018 18:49:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Facts].[SalesOrderDetail](
	[SalesOrderID] [int]  NULL,
	[SalesOrderDetailID] [int]   NULL,
	[OrderQty] [smallint]  NULL,
	[ProductID] [int]  NULL,
	[UnitPrice] [money]  NULL,
	[UnitPriceDiscount] [money]  NULL,
	[LineTotal] [numeric](38, 6)  NULL
) ON [PRIMARY]
GO


