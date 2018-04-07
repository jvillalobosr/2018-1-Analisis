USE [MyDb]
GO

/****** Object:  Table [Dims].[Product]    Script Date: 6/4/2018 19:36:40 ******/
IF OBJECT_ID('Dims.Product', 'U') is not null
	DROP TABLE [Dims].[Product]
GO

/****** Object:  Table [Dims].[Product]    Script Date: 6/4/2018 19:36:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Dims].[Product](
	[ProductID] [int]  NULL,
	[ProductName] [nvarchar](50)  NULL,
	[ProductNumber] [nvarchar](25)  NULL,
	[MakeFlag] [bit]  NULL,
	[FinishedGoodsFlag] [bit]  NULL,
	[Color] [nvarchar](15) NULL,
	[StandardCost] [money]  NULL,
	[ListPrice] [money]  NULL,
	[Size] [nvarchar](5) NULL,
	[SizeUnitMeasureCode] [nchar](3) NULL,
	[WeightUnitMeasureCode] [nchar](3) NULL,
	[Weight] [decimal](8, 2) NULL,
	[Class] [nchar](2) NULL,
	[Style] [nchar](2) NULL,
	[SubCategoryName] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](50) NULL,
	[ModelName] [nvarchar](50) NULL,
	[SizeName] [nvarchar](50) NULL,
	[WeightName] [nvarchar](50) NULL
) ON [PRIMARY]
GO


