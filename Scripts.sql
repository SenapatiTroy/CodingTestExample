USE [master]
GO
/****** Object:  Database [codingTest]    Script Date: 8/14/2020 1:18:54 PM ******/
CREATE DATABASE [codingTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'codingTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\codingTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'codingTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\codingTest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [codingTest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [codingTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [codingTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [codingTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [codingTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [codingTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [codingTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [codingTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [codingTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [codingTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [codingTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [codingTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [codingTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [codingTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [codingTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [codingTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [codingTest] SET  ENABLE_BROKER 
GO
ALTER DATABASE [codingTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [codingTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [codingTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [codingTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [codingTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [codingTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [codingTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [codingTest] SET RECOVERY FULL 
GO
ALTER DATABASE [codingTest] SET  MULTI_USER 
GO
ALTER DATABASE [codingTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [codingTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [codingTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [codingTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [codingTest] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'codingTest', N'ON'
GO
ALTER DATABASE [codingTest] SET QUERY_STORE = OFF
GO
USE [codingTest]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/14/2020 1:18:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] NOT NULL,
	[Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 8/14/2020 1:18:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [int] NOT NULL,
	[SubCategoryId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 8/14/2020 1:18:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryId] [int] NOT NULL,
	[CategoryId] [int] NULL,
	[Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (1, N'Book')
GO
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (1, 2, N'cricket', N'cricket book')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (2, 1, N'Chetan', N'Chetan Bhagat')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (3, 2, N'world Cup', N'Journey to World Cup')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (4, 2, N'cricket', N'Legends')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (5, 2, N'cricket', N'Fast Bowler')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (6, 2, N'cricket', N'Wickets')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (7, 2, N'cricket', N'IPL')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (8, 2, N'cricket', N'Spinner')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (9, 2, N'cricket', N'wicket keeper')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (10, 2, N'cricket', N'opener')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (11, 2, N'cricket', N'duck')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (12, 2, N'cricket', N'dfg')
INSERT [dbo].[Item] ([Id], [SubCategoryId], [Name], [Description]) VALUES (13, 2, N'cricket', N'hj')
GO
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [Name]) VALUES (1, 1, N'Novel')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [Name]) VALUES (2, 1, N'Sports')
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategory] ([SubCategoryId])
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
USE [master]
GO
ALTER DATABASE [codingTest] SET  READ_WRITE 
GO
