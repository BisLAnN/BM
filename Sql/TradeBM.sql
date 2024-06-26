USE [master]
GO
/****** Object:  Database [TradeBM]    Script Date: 30.03.2023 23:21:03 ******/
CREATE DATABASE [TradeBM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TradeBM', FILENAME = N'E:\SQLServer\MSSQL15.MSSQLSERVER\MSSQL\DATA\TradeBM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TradeBM_log', FILENAME = N'E:\SQLServer\MSSQL15.MSSQLSERVER\MSSQL\DATA\TradeBM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TradeBM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TradeBM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TradeBM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TradeBM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TradeBM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TradeBM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TradeBM] SET ARITHABORT OFF 
GO
ALTER DATABASE [TradeBM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TradeBM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TradeBM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TradeBM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TradeBM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TradeBM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TradeBM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TradeBM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TradeBM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TradeBM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TradeBM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TradeBM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TradeBM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TradeBM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TradeBM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TradeBM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TradeBM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TradeBM] SET RECOVERY FULL 
GO
ALTER DATABASE [TradeBM] SET  MULTI_USER 
GO
ALTER DATABASE [TradeBM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TradeBM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TradeBM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TradeBM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TradeBM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TradeBM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TradeBM', N'ON'
GO
ALTER DATABASE [TradeBM] SET QUERY_STORE = OFF
GO
USE [TradeBM]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[PickupDate] [date] NOT NULL,
	[PickupPointId] [int] NOT NULL,
	[Clinet_id] [int] NULL,
	[GetCode] [int] NOT NULL,
	[OrderStatusId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderContent]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderContent](
	[OrderContentId] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductAmount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusValue] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PickupPointId] [int] IDENTITY(1,1) NOT NULL,
	[MailIndex] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[HouseNum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PickupPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[UnitId] [int] NOT NULL,
	[ProductPrice] [decimal](19, 4) NOT NULL,
	[MaxDiscount] [int] NOT NULL,
	[ManufacturerId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[CurrentDiscount] [int] NULL,
	[StorageAmount] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ProductPhoto] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[UnitValue] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 30.03.2023 23:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Общестроительные материалы')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Стеновые и фасадные материалы')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Сухие строительные смеси и гидроизоляция')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Ручной инструмент')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'Защита лица, глаз, головы')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityId], [CityName]) VALUES (1, N' г. Сыктывкар')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ClientId], [UserId]) VALUES (1, 7)
INSERT [dbo].[Client] ([ClientId], [UserId]) VALUES (2, 8)
INSERT [dbo].[Client] ([ClientId], [UserId]) VALUES (3, 9)
INSERT [dbo].[Client] ([ClientId], [UserId]) VALUES (4, 10)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (1, N'М500')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (2, N'Изостронг')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (3, N'Knauf')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (4, N'MixMaster')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (5, N'ЛСР')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (6, N'ВОЛМА')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (7, N'Vinylon')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (8, N'Павловский завод ')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (9, N'Weber')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (10, N'Hesler')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (11, N'Armero')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (12, N'Wenzo Roma')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (13, N'KILIMGRIN')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (14, N'Исток')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (15, N'RUIZ')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (16, N'Husqvarna')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (17, N'Delta')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 18, NULL, 701, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (2, CAST(N'2022-05-16' AS Date), CAST(N'2022-05-22' AS Date), 14, NULL, 702, 2)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (3, CAST(N'2022-05-17' AS Date), CAST(N'2022-05-23' AS Date), 22, 3, 703, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (4, CAST(N'2022-05-17' AS Date), CAST(N'2022-05-23' AS Date), 22, NULL, 704, 2)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (5, CAST(N'2022-05-19' AS Date), CAST(N'2022-05-25' AS Date), 26, 2, 705, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (6, CAST(N'2022-05-20' AS Date), CAST(N'2022-05-26' AS Date), 28, NULL, 706, 2)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (7, CAST(N'2022-05-22' AS Date), CAST(N'2022-05-28' AS Date), 28, 4, 707, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (8, CAST(N'2022-05-22' AS Date), CAST(N'2022-05-28' AS Date), 32, NULL, 708, 2)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (9, CAST(N'2022-05-23' AS Date), CAST(N'2022-05-29' AS Date), 36, NULL, 709, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDate], [PickupDate], [PickupPointId], [Clinet_id], [GetCode], [OrderStatusId]) VALUES (10, CAST(N'2022-05-24' AS Date), CAST(N'2022-05-30' AS Date), 36, 1, 710, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderContent] ON 

INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (1, 1, 1, 2)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (2, 1, 3, 15)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (3, 2, 5, 13)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (4, 2, 8, 40)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (5, 3, 10, 100)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (6, 3, 12, 20)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (7, 4, 14, 50)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (8, 4, 16, 40)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (9, 5, 19, 10)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (10, 5, 27, 1)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (11, 6, 2, 2)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (12, 6, 4, 15)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (13, 7, 6, 17)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (14, 7, 9, 100)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (15, 8, 11, 100)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (16, 8, 13, 20)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (17, 9, 15, 50)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (18, 9, 17, 40)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (19, 10, 20, 10)
INSERT [dbo].[OrderContent] ([OrderContentId], [OrderID], [ProductId], [ProductAmount]) VALUES (20, 10, 28, 1)
SET IDENTITY_INSERT [dbo].[OrderContent] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([OrderStatusId], [StatusValue]) VALUES (1, N'Завершен')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [StatusValue]) VALUES (2, N'Новый ')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (1, 344288, 1, N' ул. Чехова', 1)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (2, 614164, 1, N'  ул. Степная', 30)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (3, 394242, 1, N' ул. Коммунистическая', 43)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (4, 660540, 1, N' ул. Солнечная', 25)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (5, 125837, 1, N' ул. Шоссейная', 40)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (6, 125703, 1, N' ул. Партизанская', 49)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (7, 625283, 1, N' ул. Победы', 46)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (8, 614611, 1, N' ул. Молодежная', 50)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (9, 454311, 1, N' ул. Новая', 19)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (10, 660007, 1, N' ул. Октябрьская', 19)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (11, 603036, 1, N' ул. Садовая', 4)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (12, 450983, 1, N' ул. Комсомольская', 26)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (13, 394782, 1, N' ул. Чехова', 3)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (14, 603002, 1, N' ул. Дзержинского', 28)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (15, 450558, 1, N' ул. Набережная', 30)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (16, 394060, 1, N' ул. Фрунзе', 43)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (17, 410661, 1, N' ул. Школьная', 50)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (18, 625590, 1, N' ул. Коммунистическая', 20)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (19, 625683, 1, N' ул. 8 Марта', 1)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (20, 400562, 1, N' ул. Зеленая', 32)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (21, 614510, 1, N' ул. Маяковского', 47)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (22, 410542, 1, N' ул. Светлая', 46)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (23, 620839, 1, N' ул. Цветочная', 8)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (24, 443890, 1, N' ул. Коммунистическая', 1)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (25, 603379, 1, N' ул. Спортивная', 46)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (26, 603721, 1, N' ул. Гоголя', 41)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (27, 410172, 1, N' ул. Северная', 13)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (28, 420151, 1, N' ул. Вишневая', 32)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (29, 125061, 1, N' ул. Подгорная', 8)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (30, 630370, 1, N' ул. Шоссейная', 24)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (31, 614753, 1, N' ул. Полевая', 35)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (32, 426030, 1, N' ул. Маяковского', 44)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (33, 450375, 1, N' ул. Клубная', 44)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (34, 625560, 1, N' ул. Некрасова', 12)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (35, 630201, 1, N' ул. Комсомольская', 17)
INSERT [dbo].[PickupPoint] ([PickupPointId], [MailIndex], [CityId], [Street], [HouseNum]) VALUES (36, 190949, 1, N' ул. Мичурина', 26)
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (1, N'PMEZMH', N'Цемент', 1, CAST(440.0000 AS Decimal(19, 4)), 10, 1, 1, 1, 8, 34, N'Цемент Евроцемент М500 Д0 ЦЕМ I 42,5 50 кг', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (2, N'BPV4MM', N'Пленка техническая', 1, CAST(8.0000 AS Decimal(19, 4)), 13, 2, 2, 1, 8, 2, N'Пленка техническая полиэтиленовая Изостронг 60 мк 3 м рукав 1,5 м, пог.м', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (3, N'JVL42J', N'Пленка техническая', 1, CAST(13.0000 AS Decimal(19, 4)), 1, 2, 2, 1, 4, 34, N'Пленка техническая полиэтиленовая Изостронг 100 мк 3 м рукав 1,5 м, пог.м', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (4, N'F895RB', N'Песок строительный', 1, CAST(102.0000 AS Decimal(19, 4)), 17, 3, 3, 1, 6, 7, N'Песок строительный 50 кг', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (5, N'3XBOTN', N'Керамзит фракция', 1, CAST(110.0000 AS Decimal(19, 4)), 14, 4, 4, 1, 5, 21, N'Керамзит фракция 10-20 мм 0,05 куб.м', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (6, N'3L7RCZ', N'Газобетон', 1, CAST(7400.0000 AS Decimal(19, 4)), 7, 5, 5, 2, 2, 20, N'Газобетон ЛСР 100х250х625 мм D400', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (7, N'S72AM3', N'Пазогребневая плита ', 1, CAST(500.0000 AS Decimal(19, 4)), 9, 6, 6, 2, 5, 35, N'Пазогребневая плита ВОЛМА Гидро 667х500х80 мм полнотелая', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (8, N'2G3280', N'Угол наружный', 1, CAST(795.0000 AS Decimal(19, 4)), 16, 7, 7, 2, 9, 20, N'Угол наружный Vinylon 3050 мм серо-голубой', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (9, N'MIO8YV', N'Кирпич', 1, CAST(30.0000 AS Decimal(19, 4)), 9, 6, 6, 2, 9, 31, N'Кирпич рядовой Боровичи полнотелый М150 250х120х65 мм 1NF', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (10, N'UER2QD', N'Скоба для пазогребневой плиты', 1, CAST(25.0000 AS Decimal(19, 4)), 20, 3, 3, 2, 8, 27, N'Скоба для пазогребневой плиты Knauf С1 120х100 мм', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (11, N'ZR70B4', N'Кирпич', 1, CAST(16.0000 AS Decimal(19, 4)), 3, 8, 8, 2, 3, 26, N'Кирпич рядовой силикатный Павловский завод полнотелый М200 250х120х65 мм 1NF', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (12, N'LPDDM4', N'Штукатурка гипсовая', 1, CAST(500.0000 AS Decimal(19, 4)), 17, 3, 3, 3, 6, 38, N'Штукатурка гипсовая Knauf Ротбанд 30 кг', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (13, N'LQ48MW', N'Штукатурка гипсовая', 1, CAST(462.0000 AS Decimal(19, 4)), 16, 9, 9, 3, 6, 33, N'Штукатурка гипсовая Knauf МП-75 машинная 30 кг', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (14, N'O43COU', N'Шпаклевка', 1, CAST(750.0000 AS Decimal(19, 4)), 9, 6, 6, 3, 1, 16, N'Шпаклевка полимерная Weber.vetonit LR + для сухих помещений белая 20 кг', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (15, N'M26EXW', N'Клей для плитки, керамогранита и камня', 1, CAST(340.0000 AS Decimal(19, 4)), 8, 3, 3, 3, 8, 2, N'Клей для плитки, керамогранита и камня Крепс Усиленный серый (класс С1) 25 кг', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (16, N'K0YACK', N'Смесь цементно-песчаная', 1, CAST(160.0000 AS Decimal(19, 4)), 9, 4, 4, 3, 8, 19, N'Смесь цементно-песчаная (ЦПС) 300 по ТУ MixMaster Универсал 25 кг', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (17, N'ASPXSG', N'Ровнитель', 1, CAST(711.0000 AS Decimal(19, 4)), 17, 9, 9, 3, 10, 20, N'Ровнитель (наливной пол) финишный Weber.vetonit 4100 самовыравнивающийся высокопрочный 20 кг', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (18, N'ZKQ5FF', N'Лезвие для ножа ', 1, CAST(65.0000 AS Decimal(19, 4)), 13, 10, 10, 4, 6, 6, N'Лезвие для ножа Hesler 18 мм прямое (10 шт.)', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (19, N'4WZEOT', N'Лезвие для ножа ', 1, CAST(110.0000 AS Decimal(19, 4)), 2, 11, 11, 4, 6, 17, N'Лезвие для ножа Armero 18 мм прямое (10 шт.)', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (20, N'4JR1HN', N'Шпатель', 1, CAST(26.0000 AS Decimal(19, 4)), 3, 10, 10, 4, 6, 7, N'Шпатель малярный 100 мм с пластиковой ручкой', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (21, N'Z3XFSP', N'Нож строительный ', 1, CAST(63.0000 AS Decimal(19, 4)), 19, 10, 10, 4, 8, 5, N'Нож строительный Hesler 18 мм с ломающимся лезвием пластиковый корпус', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (22, N'I6MH89', N'Валик', 1, CAST(326.0000 AS Decimal(19, 4)), 12, 12, 12, 4, 6, 3, N'Валик Wenzo Roma полиакрил 250 мм ворс 18 мм для красок грунтов и антисептиков на водной основе с рукояткой', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (23, N'83M5ME', N'Кисть', 1, CAST(122.0000 AS Decimal(19, 4)), 16, 11, 11, 4, 9, 26, N'Кисть плоская смешанная щетина 100х12 мм для красок и антисептиков на водной основе', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (24, N'61PGH3', N'Очки защитные', 1, CAST(184.0000 AS Decimal(19, 4)), 2, 13, 13, 5, 6, 25, N'Очки защитные Delta Plus KILIMANDJARO (KILIMGRIN) открытые с прозрачными линзами', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (25, N'GN6ICZ', N'Каска защитная ', 1, CAST(154.0000 AS Decimal(19, 4)), 10, 14, 14, 5, 6, 8, N'Каска защитная Исток (КАС001О) оранжевая', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (26, N'Z3LO0U', N'Очки защитные ', 1, CAST(228.0000 AS Decimal(19, 4)), 19, 15, 15, 5, 9, 11, N'Очки защитные Delta Plus RUIZ (RUIZ1VI) закрытые с прозрачными линзами', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (27, N'QHNOKR', N'Маска защитная', 1, CAST(251.0000 AS Decimal(19, 4)), 6, 14, 14, 5, 2, 22, N'Маска защитная Исток (ЩИТ001) ударопрочная и термостойкая', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (28, N'EQ6RKO', N'Подшлемник', 1, CAST(36.0000 AS Decimal(19, 4)), 17, 16, 16, 5, 3, 22, N'Подшлемник для каски одноразовый', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (29, N'81F1WG', N'Каска защитная', 1, CAST(1500.0000 AS Decimal(19, 4)), 1, 17, 17, 5, 2, 13, N'Каска защитная Delta Plus BASEBALL DIAMOND V UP (DIAM5UPBCFLBS) белая', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [UnitId], [ProductPrice], [MaxDiscount], [ManufacturerId], [SupplierId], [CategoryId], [CurrentDiscount], [StorageAmount], [Description], [ProductPhoto]) VALUES (30, N'0YGHZ7', N'Очки защитные ', 1, CAST(700.0000 AS Decimal(19, 4)), 9, 16, 16, 5, 9, 36, N'Очки защитные Husqvarna Clear (5449638-01) открытые с прозрачными линзами', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (1, N'М500')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (2, N'Изостронг')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (3, N'Knauf')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (4, N'MixMaster')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (5, N'ЛСР')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (6, N'ВОЛМА')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (7, N'Vinylon')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (8, N'Павловский завод ')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (9, N'Weber')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (10, N'Hesler')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (11, N'Armero')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (12, N'Wenzo Roma')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (13, N'KILIMGRIN')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (14, N'Исток')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (15, N'RUIZ')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (16, N'Husqvarna')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (17, N'Delta')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([UnitId], [UnitValue]) VALUES (1, N'шт.')
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (1, N'Басова', N'Амина', N'Кирилловна', N'klh7pi4rcbtz@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (2, N'Михайлов', N'Андрей', N'Денисович', N'gn0354mbiork@outlook.com', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (3, N'Сидоров', N'Егор', N'Александрович', N'1o4l05k8dwpv@yahoo.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (4, N'Аксенова', N'Ульяна', N'Ивановна', N'hsqixl2vebuz@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (5, N'Васильева', N'Камила', N'Ивановна', N'towkse0hf26b@outlook.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (6, N'Ильин', N'Артём', N'Родионович', N'khx0ncdwz4uj@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (7, N'Васильева', N'Василиса', N'Фёдоровна', N'01zji3wfuq7h@outlook.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (8, N'Кудрявцева', N'Василиса', N'Матвеевна', N'am65k18q7bwp@mail.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (9, N'Кириллова', N'Николь', N'Святославовна', N'wt9q8i6ypx47@outlook.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleId]) VALUES (10, N'Андреева', N'Полина', N'Артёмовна', N'4o72gufv3xlz@tutanota.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Clinet_id])
REFERENCES [dbo].[Client] ([ClientId])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([OrderStatusId])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([PickupPointId])
REFERENCES [dbo].[PickupPoint] ([PickupPointId])
GO
ALTER TABLE [dbo].[OrderContent]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderContent]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([UnitId])
REFERENCES [dbo].[Unit] ([UnitId])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[Role] ([RoleID])
GO
USE [master]
GO
ALTER DATABASE [TradeBM] SET  READ_WRITE 
GO
