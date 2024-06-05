USE [master]
GO
/****** Object:  Database [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF]    Script Date: 05.06.2024 3:28:59 ******/
CREATE DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbRuSteam', FILENAME = N'D:\Разработка программных модулей\RuSteam\RuSteam\dbRuSteam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbRuSteam_log', FILENAME = N'D:\Разработка программных модулей\RuSteam\RuSteam\dbRuSteam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET  ENABLE_BROKER 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET QUERY_STORE = OFF
GO
USE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF]
GO
/****** Object:  Table [dbo].[tbCash]    Script Date: 05.06.2024 3:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCash](
	[cashid] [int] IDENTITY(1,1) NOT NULL,
	[transno] [varchar](15) NULL,
	[pcode] [varchar](10) NOT NULL,
	[pname] [varchar](50) NULL,
	[qty] [int] NULL,
	[price] [decimal](18, 2) NOT NULL,
	[total] [decimal](18, 2) NULL,
	[cid] [varchar](10) NULL,
	[cashier] [varchar](20) NULL,
 CONSTRAINT [PK_tbCash] PRIMARY KEY CLUSTERED 
(
	[cashid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCustomer]    Script Date: 05.06.2024 3:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCustomer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
 CONSTRAINT [PK_tbCustomer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbProduct]    Script Date: 05.06.2024 3:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbProduct](
	[pcode] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](50) NOT NULL,
	[ptype] [varchar](50) NOT NULL,
	[pcategory] [varchar](50) NOT NULL,
	[pqty] [int] NOT NULL,
	[pprice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tbProduct] PRIMARY KEY CLUSTERED 
(
	[pcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUser1]    Script Date: 05.06.2024 3:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUser1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[role] [varchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_tbUser1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbCash] ON 

INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (1, N'202406031001', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (2, N'202406031002', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (3, N'202406031003', N'515', N'2', 12, CAST(14114.00 AS Decimal(18, 2)), CAST(169368.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (4, N'202406031004', N'515', N'2', -2, CAST(14114.00 AS Decimal(18, 2)), CAST(-28228.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (5, N'202406031005', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (6, N'202406031006', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (7, N'202406031006', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (8, N'202406031007', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (9, N'202406031007', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (10, N'202406031008', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (11, N'202406031008', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (12, N'202406031009', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (13, N'202406031009', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (14, N'202406031010', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (15, N'202406031010', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (16, N'202406031011', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (17, N'202406031011', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (18, N'202406031012', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (19, N'202406031012', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (20, N'202406031013', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (21, N'202406031013', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (22, N'202406041001', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Olia')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (23, N'202406041001', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Olia')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (24, N'202406041002', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (25, N'202406041002', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (26, N'202406041003', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (27, N'202406041004', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), NULL, N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (28, N'202406041005', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), N'1', N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (29, N'202406041006', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), N'1', N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (30, N'202406051001', N'515', N'2', 1, CAST(14114.00 AS Decimal(18, 2)), CAST(14114.00 AS Decimal(18, 2)), N'1', N'Username')
INSERT [dbo].[tbCash] ([cashid], [transno], [pcode], [pname], [qty], [price], [total], [cid], [cashier]) VALUES (31, N'202406051001', N'4652345', N'3', 1, CAST(5151.00 AS Decimal(18, 2)), CAST(5151.00 AS Decimal(18, 2)), N'1', N'Username')
SET IDENTITY_INSERT [dbo].[tbCash] OFF
GO
SET IDENTITY_INSERT [dbo].[tbCustomer] ON 

INSERT [dbo].[tbCustomer] ([id], [name], [address], [phone]) VALUES (1, N'515', N'6346', N'54151')
SET IDENTITY_INSERT [dbo].[tbCustomer] OFF
GO
SET IDENTITY_INSERT [dbo].[tbProduct] ON 

INSERT [dbo].[tbProduct] ([pcode], [pname], [ptype], [pcategory], [pqty], [pprice]) VALUES (4, N'GTA V', N'Sandbox', N'Digital Games', 51, CAST(199.00 AS Decimal(18, 2)))
INSERT [dbo].[tbProduct] ([pcode], [pname], [ptype], [pcategory], [pqty], [pprice]) VALUES (5, N'Pistol', N'Kids Toy', N'Physical Games', 41, CAST(56.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tbProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tbUser1] ON 

INSERT [dbo].[tbUser1] ([id], [name], [address], [phone], [role], [dob], [password]) VALUES (3, N'Olia', N'Minsk', N'63463465', N'Administrator', CAST(N'2003-07-24' AS Date), N'admin')
INSERT [dbo].[tbUser1] ([id], [name], [address], [phone], [role], [dob], [password]) VALUES (6, N'151', N'5151', N'155151651', N'Cashier', CAST(N'2002-07-12' AS Date), N'111')
INSERT [dbo].[tbUser1] ([id], [name], [address], [phone], [role], [dob], [password]) VALUES (7, N'515', N'515', N'5151', N'Client', CAST(N'2000-02-11' AS Date), N'111')
SET IDENTITY_INSERT [dbo].[tbUser1] OFF
GO
/****** Object:  Trigger [dbo].[Trigger]    Script Date: 05.06.2024 3:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Trigger]
	ON [dbo].[tbCash]
	FOR DELETE, INSERT, UPDATE
	AS
	BEGIN
		SET NOCOUNT ON
		UPDATE tbCash SET total = qty*price
	END
GO
ALTER TABLE [dbo].[tbCash] ENABLE TRIGGER [Trigger]
GO
USE [master]
GO
ALTER DATABASE [D:\РАЗРАБОТКА ПРОГРАММНЫХ МОДУЛЕЙ\RUSTEAM\RUSTEAM\DBRUSTEAM.MDF] SET  READ_WRITE 
GO
