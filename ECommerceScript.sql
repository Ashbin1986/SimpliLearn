USE [ECommerceDB]
GO
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 22-06-2021 18:07:16 ******/
DROP PROCEDURE [dbo].[GetProducts]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Product]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Product]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Customer]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_CreatedDate]
GO
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [DF_Category_CreatedDate]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22-06-2021 18:07:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 22-06-2021 18:07:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22-06-2021 18:07:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 22-06-2021 18:07:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 22-06-2021 18:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](200) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22-06-2021 18:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](200) NULL,
	[CustomerAddress] [nvarchar](500) NULL,
	[CustomerEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 22-06-2021 18:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[ProductId] [int] NULL,
	[OrderedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22-06-2021 18:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](200) NULL,
	[ProductDescription] [varchar](500) NULL,
	[Product_CategoryId] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CreatedDate]) VALUES (1, N'Electronics', CAST(N'2021-06-22T17:16:07.790' AS DateTime))
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CreatedDate]) VALUES (2, N'Furniture', CAST(N'2021-06-22T17:16:19.753' AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [Product_CategoryId], [CreatedDate]) VALUES (1, N'Dell-Laptop', N'Lightweight Design Features an InfinityEdge Display & Diamond-cut Edges For Sharper Style. Enjoy outstanding mobile performance, reliability & usability of Dell Desktop', 1, CAST(N'2021-06-22T17:17:26.197' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [Product_CategoryId], [CreatedDate]) VALUES (2, N'HP-Laptop', N'With an 8th Generation IntelR Core™ i7 processor, NVIDIAR GeForceR MX150 (?2GB), 8GB of memory, and a 1TB HDD, there isn''t a coding project or business', 1, CAST(N'2021-06-22T17:17:58.447' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [Product_CategoryId], [CreatedDate]) VALUES (3, N'Table', N'Dimensions: H 31 x W 52.2 x D 46.5', 2, CAST(N'2021-06-22T17:18:58.097' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product] FOREIGN KEY([Product_CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product]
GO
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 22-06-2021 18:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC GetProducts 2

CREATE Procedure [dbo].[GetProducts]
@categoryId int = 0
AS

if(@categoryId = 0)
BEGIN
select ProductId , ProductName,ProductDescription ,CategoryId ,CategoryName  from Product inner join Category
ON ProductId = Product_CategoryId

END
ELSE
BEGIN
select ProductId , ProductName,ProductDescription ,CategoryId ,CategoryName  from Product inner join Category
ON ProductId = Product_CategoryId where CategoryId = @categoryId
END
GO
