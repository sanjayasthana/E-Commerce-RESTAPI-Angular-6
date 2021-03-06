SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ProductAttributeLookups](
	[AttributeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryId] [int] NOT NULL,
	[AttributeName] [varchar](250) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ProductAttributes](
	[ProductId] [int] NOT NULL,
	[AttributeId] [int] NOT NULL,
	[AttributeValue] [varchar](250) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ProductCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [varchar](500) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [ProductAttributeLookups] ON 

INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (1, 1, N'Internal Memory')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (2, 1, N'External Memory')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (3, 1, N'CPU')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (4, 1, N'Screen Size')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (5, 2, N'Brand')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (6, 2, N'Screen Size')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (7, 2, N'LED/LCD')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (8, 2, N'Resulation')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (9, 3, N'Capacity')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (10, 3, N'Type')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (11, 3, N'Full/Semi Automatic')
INSERT [ProductAttributeLookups] ([AttributeId], [ProductCategoryId], [AttributeName]) VALUES (12, 3, N'Brand')
SET IDENTITY_INSERT [ProductAttributeLookups] OFF
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (1, 1, N'6Gb')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (1, 2, N'128Gb')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (1, 3, N'2.7 Ghz')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (1, 4, N'6.0 Inch')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (2, 9, N'6.5kg')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (2, 10, N'Automatic')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (2, 11, N'Automatic')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (2, 12, N'Samsung ')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (4, 1, N'2Gb')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (4, 2, N'16Gb')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (4, 3, N'2.0 Ghz')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (4, 4, N'5.8 inch')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (3, 5, N'Sony')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (3, 6, N'32 Inch')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (3, 7, N'LED')
INSERT [ProductAttributes] ([ProductId], [AttributeId], [AttributeValue]) VALUES (3, 8, N'1080 X 9600')
SET IDENTITY_INSERT [ProductCategories] ON 

INSERT [ProductCategories] ([CategoryId], [Name]) VALUES (1, N'Mobile')
INSERT [ProductCategories] ([CategoryId], [Name]) VALUES (2, N'Television')
INSERT [ProductCategories] ([CategoryId], [Name]) VALUES (3, N'Washing Machine')
SET IDENTITY_INSERT [ProductCategories] OFF
SET IDENTITY_INSERT [Products] ON 

INSERT [Products] ([ProductId], [CategoryId], [Name], [Description]) VALUES (1, 1, N'Vivo V9 Pro', N'Smart Mobile')
INSERT [Products] ([ProductId], [CategoryId], [Name], [Description]) VALUES (2, 3, N'Samsung Washing Machine', N'Samsung Washing Machine fully automatic')
INSERT [Products] ([ProductId], [CategoryId], [Name], [Description]) VALUES (3, 2, N'Sony Bravia 32', N'Sony Bravia 32 Fully HD Telivison')
INSERT [Products] ([ProductId], [CategoryId], [Name], [Description]) VALUES (4, 1, N'Samsung S6', N'Samsung S6')
SET IDENTITY_INSERT [Products] OFF
