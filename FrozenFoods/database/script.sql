USE [master]
GO
/****** Object:  Database [Frozens]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE DATABASE [Frozens]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Frozens', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Frozens.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Frozens_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Frozens_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Frozens] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Frozens].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Frozens] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Frozens] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Frozens] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Frozens] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Frozens] SET ARITHABORT OFF 
GO
ALTER DATABASE [Frozens] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Frozens] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Frozens] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Frozens] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Frozens] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Frozens] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Frozens] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Frozens] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Frozens] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Frozens] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Frozens] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Frozens] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Frozens] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Frozens] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Frozens] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Frozens] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Frozens] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Frozens] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Frozens] SET  MULTI_USER 
GO
ALTER DATABASE [Frozens] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Frozens] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Frozens] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Frozens] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Frozens] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Frozens] SET QUERY_STORE = OFF
GO
USE [Frozens]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodCategories]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodCategories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_FoodCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodInfos]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodInfos](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[Extension] [nvarchar](20) NOT NULL,
	[Price] [real] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_FoodInfos] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodOrders]    Script Date: 12/02/2021 9:36:56 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodOrders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[UserID] [nvarchar](200) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [real] NOT NULL,
	[Total] [real] NOT NULL,
	[FoodID] [int] NOT NULL,
 CONSTRAINT [PK_FoodOrders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210205064431_Init', N'3.1.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a8add6ad-11c1-4b05-94e1-2029391c93b6', N'power', N'power', N'9c363614-798a-4da1-97f8-5f11ef4953e1')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aebf0494-e042-4435-b628-25e812d35353', N'a8add6ad-11c1-4b05-94e1-2029391c93b6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9525102e-4463-4781-8a4b-4c423c4276bd', N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELwtXje7sQOYEvt9a24+MhlaQe7zlqXe11cNAKxIQ6FXgsqcVQVUlnyVHFpfRAVRPw==', N'V6LSFCBT5U3NPZWDRU5MO7CLC4HGMUBJ', N'b4aae825-5959-4915-8edf-df77c74fe5fd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'aebf0494-e042-4435-b628-25e812d35353', N'power@frozen.com', N'POWER@FROZEN.COM', N'power@frozen.com', N'POWER@FROZEN.COM', 1, N'AQAAAAEAACcQAAAAEFE3D/DAuRd2rYKbXghT+2uEpgSMR2JphCiV1k/+EKwOZarhAvBHzeclybTmYrKreg==', N'ZGEXPX7HLICVX4GPGWGJJ7ZA3WS4VJO2', N'4fd3dd65-7be2-46a7-9f08-db34a2558982', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (1, N'Thomas Exports')
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (2, N'Lizaz Foods')
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (3, N'McCain')
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodCategories] ON 

INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (1, N'Fish')
INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (2, N'Peas')
INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (3, N'Sweet Corn')
INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (4, N'Cheesey')
INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (5, N'Potato')
SET IDENTITY_INSERT [dbo].[FoodCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodInfos] ON 

INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (1, N'Potato Cheese Shotz', N'Potato layer fill with cheese with 1 kg packing', N'.png', 2, 3, 4)
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (3, N'Veggie Nuggets', N'Nuggets with Veggie in 1 KG', N'.png', 30, 3, 5)
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (4, N'Aloo Tikki', N'Ready to serve Aloo Tikki It serve 10 Aloo Tikki', N'.png', 33, 3, 5)
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (5, N'Frozen Brine Shrimp Cube', N'TRAYS 7 X 3.5 OZ CUBE TRAY 1 BOX', N'.jpg', 10.15, 1, 1)
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (6, N'Frozen Krill Pacifica Flat', N'10 X 16 OZ', N'.jpg', 69.95, 1, 1)
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (7, N'Frozen Brine Shrimp Flat', N'PACKS, 5 X 1 KG. ', N'.jpg', 60, 2, 1)
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (8, N'Del Monte Whole Corn', N'Kernels, 420g', N'.jpg', 35, 2, 3)
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (9, N'Frozen Green Peas With Slider Zip Standy Pouch', N'500 gm pouch', N'.jpg', 16, 2, 2)
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (10, N'Frozen Vegetables - Green Peas', N'1KG PACK', N'.jpg', 36, 2, 2)
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (11, N'American Sweet Corn', N'1KG Pack', N'.jpg', 45, 2, 3)
SET IDENTITY_INSERT [dbo].[FoodInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodOrders] ON 

INSERT [dbo].[FoodOrders] ([OrderID], [Description], [OrderDate], [UserID], [Quantity], [Price], [Total], [FoodID]) VALUES (1, N'hjkl', CAST(N'2021-02-12T09:20:47.1363602' AS DateTime2), N'power@frozen.com', 9, 25, 225, 1)
SET IDENTITY_INSERT [dbo].[FoodOrders] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FoodInfos_CategoryID]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE NONCLUSTERED INDEX [IX_FoodInfos_CategoryID] ON [dbo].[FoodInfos]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FoodInfos_CompanyID]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE NONCLUSTERED INDEX [IX_FoodInfos_CompanyID] ON [dbo].[FoodInfos]
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FoodOrders_FoodID]    Script Date: 12/02/2021 9:36:56 am ******/
CREATE NONCLUSTERED INDEX [IX_FoodOrders_FoodID] ON [dbo].[FoodOrders]
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FoodInfos]  WITH CHECK ADD  CONSTRAINT [FK_FoodInfos_Companies_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([CompanyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FoodInfos] CHECK CONSTRAINT [FK_FoodInfos_Companies_CompanyID]
GO
ALTER TABLE [dbo].[FoodInfos]  WITH CHECK ADD  CONSTRAINT [FK_FoodInfos_FoodCategories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[FoodCategories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FoodInfos] CHECK CONSTRAINT [FK_FoodInfos_FoodCategories_CategoryID]
GO
ALTER TABLE [dbo].[FoodOrders]  WITH CHECK ADD  CONSTRAINT [FK_FoodOrders_FoodInfos_FoodID] FOREIGN KEY([FoodID])
REFERENCES [dbo].[FoodInfos] ([FoodID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FoodOrders] CHECK CONSTRAINT [FK_FoodOrders_FoodInfos_FoodID]
GO
USE [master]
GO
ALTER DATABASE [Frozens] SET  READ_WRITE 
GO
