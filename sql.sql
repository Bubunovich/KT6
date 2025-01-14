USE [PetShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] NOT NULL,
	[CityName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Description]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Description](
	[id] [int] NOT NULL,
	[DescriptionName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[id] [int] NOT NULL,
	[IndexName] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Name]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Name](
	[id] [int] NOT NULL,
	[NameName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[DateOrder] [date] NOT NULL,
	[LastDate] [date] NOT NULL,
	[Punkt] [int] NOT NULL,
	[Client] [int] NULL,
	[Cod] [int] NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[id] [int] NOT NULL,
	[idClient] [int] NULL,
	[idOrder] [int] NULL,
	[Sostav] [nvarchar](50) NULL,
	[Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[id] [int] NOT NULL,
	[Producer] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[Articl] [nvarchar](50) NULL,
	[ProductName] [int] NULL,
	[Mera] [nvarchar](50) NULL,
	[ProductCost] [int] NULL,
	[MaxSkidka] [int] NULL,
	[ProductProizvod] [int] NULL,
	[ProductSupplier] [int] NULL,
	[ProductCategory] [int] NULL,
	[Skidka] [int] NULL,
	[ProductCount] [int] NULL,
	[ProductDescription] [int] NULL,
	[ProductImage] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] NOT NULL,
	[StreetName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] NOT NULL,
	[SupplierName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05.11.2024 12:37:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] NOT NULL,
	[UserRole] [int] NOT NULL,
	[SureName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPatronymic] [nvarchar](50) NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([id], [CategoryName]) VALUES (1, N'Для животных')
INSERT [dbo].[Category] ([id], [CategoryName]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[Category] ([id], [CategoryName]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[City] ([id], [CityName]) VALUES (1, N' г. Нефтеюганск')
GO
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (1, 125061)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (2, 125703)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (3, 125837)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (4, 190949)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (5, 344288)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (6, 394060)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (7, 394242)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (8, 394782)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (9, 400562)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (10, 410172)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (11, 410542)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (12, 410661)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (13, 420151)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (14, 426030)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (15, 443890)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (16, 450375)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (17, 450558)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (18, 450983)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (19, 454311)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (20, 603002)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (21, 603036)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (22, 603379)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (23, 603721)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (24, 614164)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (25, 614510)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (26, 614611)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (27, 614753)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (28, 620839)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (29, 625283)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (30, 625560)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (31, 625590)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (32, 625683)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (33, 630201)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (34, 630370)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (35, 660007)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (36, 660540)
GO
INSERT [dbo].[Name] ([id], [NameName]) VALUES (1, N'Игрушка')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (2, N'Клетка')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (3, N'Лакомство')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (4, N'Лежак')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (5, N'Миска')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (6, N'Мячик')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (7, N'Сухой корм')
INSERT [dbo].[Name] ([id], [NameName]) VALUES (8, N'Щетка-варежка')
GO
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (1, 1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (2, 2, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (3, 3, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, 1, 603, 1)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (4, 4, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (5, 5, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (6, 6, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, 2, 606, 1)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (7, 7, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (8, 8, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (9, 9, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, 3, 609, 2)
INSERT [dbo].[Order] ([id], [OrderId], [DateOrder], [LastDate], [Punkt], [Client], [Cod], [Status]) VALUES (10, 10, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, 4, 610, 1)
GO
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (1, NULL, 1, N'А112Т4', 15)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (2, NULL, 2, N'F432F4', 15)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (3, 1, 3, N'E532Q5', 10)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (4, NULL, 4, N'G345E4', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (5, NULL, 5, N'R356F4', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (6, 2, 6, N'H436R4', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (7, NULL, 7, N'H342F5', 2)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (8, NULL, 8, N'K436T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (9, 3, 9, N'V527T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (10, 4, 10, N'M356R4', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (11, NULL, 1, N' G453T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (12, NULL, 2, N' Y324F4', 15)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (13, 1, 3, N' T432F4', 10)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (14, NULL, 4, N' E345R4', 2)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (15, NULL, 5, N' E431R5', 10)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (16, 2, 6, N' D643B5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (17, NULL, 7, N' Q245F5', 2)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (18, NULL, 8, N' V527T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (19, 3, 9, N' K452T5', 1)
INSERT [dbo].[OrderProduct] ([id], [idClient], [idOrder], [Sostav], [Count]) VALUES (20, 4, 10, N' W548O7', 1)
GO
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (2, N'Chappy')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (4, N'Dreames')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (6, N'LIKER')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (7, N'Nobby')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (9, N'TitBit')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (10, N'Triol')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (11, N'trixie')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (12, N'True Touch')
INSERT [dbo].[Producer] ([id], [Producer]) VALUES (13, N'ZooM')
GO
