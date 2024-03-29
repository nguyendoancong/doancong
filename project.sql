USE [InternShip]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/16/2023 11:32:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[Id] [nvarchar](450) NOT NULL,
	[CreateAt] [date] NOT NULL,
	[UpdateAt] [date] NULL,
	[DeleteAt] [date] NULL,
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
 CONSTRAINT [PK_AppUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/16/2023 11:32:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/16/2023 11:32:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/16/2023 11:32:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/16/2023 11:32:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](20) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NULL,
	[DeleteAt] [datetime2](7) NULL,
	[DiscountId] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[DiscountPrice] [float] NOT NULL,
 CONSTRAINT [PK_Discounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ShipName] [nvarchar](200) NOT NULL,
	[ShipAddress] [nvarchar](200) NOT NULL,
	[ShipEmail] [varchar](50) NOT NULL,
	[ShipPhoneNumber] [nvarchar](200) NOT NULL,
	[StatusId] [int] NOT NULL,
	[ShipperId] [nvarchar](max) NULL,
	[UpdateAt] [datetime2](7) NULL,
	[EndAt] [datetime2](7) NULL,
	[TotalPrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Slug] [nvarchar](255) NOT NULL,
	[ProductDetail] [ntext] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Status] [bit] NOT NULL,
	[Thumb] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NULL,
	[DeleteAt] [datetime2](7) NULL,
	[CategoryId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Size] [nvarchar](max) NULL,
	[QuantitySold] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[UserId] [nvarchar](450) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Viewd] [bit] NOT NULL,
	[IsWishList] [bit] NOT NULL,
	[ReviewDetail] [ntext] NULL,
	[DateView] [datetime2](7) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NULL,
	[DeleteAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 5/16/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230327013414_Initial', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230401051416_editimport', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230402155655_update', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230405093930_shipper', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230410152437_b', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230412060527_edit', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230413060710_a', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230414150047_status', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230415051402_updatestatus', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230419091450_update_', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230421161329_ship', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230421161755_ạdhsad', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230425093913_ordercancel', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230425155453_update_cancel', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230429110222_demo', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230429111506_edite', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230503021814_size', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230503023950_delete', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230513034921_total', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230513052750_updatetotal', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230513053209_editrreview', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230513054106_deletecart', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230513054732_updatecart', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230513061743_sold', N'6.0.15')
GO
INSERT [dbo].[AppUser] ([Id], [CreateAt], [UpdateAt], [DeleteAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'42875905-7447-4f34-a6da-d36c5399196a', CAST(N'2023-05-13' AS Date), NULL, NULL, N'LeBaDucAnh', N'LEBADUCANH', N'lebaducanh@gmail.com', N'LEBADUCANH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEO5wWQzQqyB+I9imQH4RrtZFTJ5NPFjV5sQob6CufdlfXzmB/0S+/yBmShNQj0NwfQ==', N'EQ5DKCGOXIDFS6CYCM4Y5VJWPETYCIQ4', N'3d05bfea-c0aa-42d5-9b96-95518a3d3f5c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AppUser] ([Id], [CreateAt], [UpdateAt], [DeleteAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'49c21a24-27c0-48b2-9836-9e34629b6643', CAST(N'0001-01-01' AS Date), NULL, NULL, N'user2@hotmail.com', N'USER2@HOTMAIL.COM', N'user2@hotmail.com', N'USER2@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPSooVAyaCW0P/VU4wyfYm8M0Dzl2/p5w8vAucFl3aZtIzN5vOAyZny5T9jhn2k+lg==', N'ac5994ab-84c8-4b4e-9b41-b302a715b57b', N'a2c60869-285e-45d3-9f2d-a6ff0979fce0', NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AppUser] ([Id], [CreateAt], [UpdateAt], [DeleteAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a11033f3-7541-4cf2-b1db-6b59f1081647', CAST(N'0001-01-01' AS Date), NULL, NULL, N'user3@hotmail.com', N'USER3@HOTMAIL.COM', N'user3@hotmail.com', N'USER3@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPtF15GX8qUjnMd7xXUu5h5wEY+zjJoQXvz2D0xbnA0zs0MnTBFb5t88ZsiJMZsHPw==', N'ee82a64a-cbe3-4e8a-90ad-2f5a9b82c5ce', N'e87ab246-00ce-4242-b6ef-58cc1270908a', NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AppUser] ([Id], [CreateAt], [UpdateAt], [DeleteAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13' AS Date), NULL, NULL, N'NguyenVanAn', N'NGUYENVANAN', N'nguyenvanan@gmail.com', N'NGUYENVANAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC4yHgHgMdJ10tAKiANFavKm9fvEePqqNZru3cOb1tfOK4evSUliSXNQQzMHDYeviQ==', N'LSB7SNCRWO5IIV7ORMGVRVXIG7LWUT4U', N'50d59ef5-cd45-4e28-bcb4-291437d8e643', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AppUser] ([Id], [CreateAt], [UpdateAt], [DeleteAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', CAST(N'2023-05-13' AS Date), NULL, NULL, N'PhamMinhChien', N'PHAMMINHCHIEN', N'chien@gmail.com', N'CHIEN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDIUUwzYavCmUE6zv9EhnAH8xNBmyOVWGrGAyBuY9hz5KjWiF3+H8UZTk2nJGLs8YQ==', N'2FMRXJ6NWL5VZTUEK5AVKPOWD5V2CF45', N'076e0ffb-cb23-4b99-8942-77235f8f6228', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AppUser] ([Id], [CreateAt], [UpdateAt], [DeleteAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e99c67f9-71ed-4b1e-8c3a-52e7d745eac3', CAST(N'2023-05-13' AS Date), NULL, NULL, N'NguyenVanTrung', N'NGUYENVANTRUNG', N'trung@gmail.com', N'TRUNG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENiNN6qw7PqbhIW4oEnHk6ZrWNIr3UpppOnyAvZNogeqefgxQCSVaBUwvFF+faU1+w==', N'2R3KOFIQE4V3EGO2GHMMZXYAKCWHMIAS', N'0312560c-dd8b-4827-a1af-c9a02475732f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AppUser] ([Id], [CreateAt], [UpdateAt], [DeleteAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f4359a02-b32c-4e01-9735-8c129d547629', CAST(N'2023-05-16' AS Date), NULL, NULL, N'NguyenVanToan', N'NGUYENVANTOAN', N'toan@gmail.com', N'TOAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIG+ySi7m9gebITdPjd4+Qgu7u9YnWO5gekQMMvBHRxfysWtKe119KIWa+CjDZDTdQ==', N'NNDYDDXSTZTMTD3WUURBPMZFFDU3HD36', N'9bfd8253-b89f-4245-b908-7cee72de54a1', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'440569ac-7e2a-4ee0-888f-4574b63bb672', N'User', N'USER', N'56e6b5a5-5cee-4fd1-b630-f3f7d75dadf8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ec01cdda-c402-4735-a423-774280cb0dc6', N'Admin', N'ADMIN', N'514764a4-081e-43da-9f02-cee1cd2dcc03')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fab196e1-1bb7-446b-82d3-c9ef6228f372', N'Shipper', N'SHIPPER', N'98407792-6e0f-4d7d-ab0b-91fe917a5dc0')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'42875905-7447-4f34-a6da-d36c5399196a', N'440569ac-7e2a-4ee0-888f-4574b63bb672')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'49c21a24-27c0-48b2-9836-9e34629b6643', N'440569ac-7e2a-4ee0-888f-4574b63bb672')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'440569ac-7e2a-4ee0-888f-4574b63bb672')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e99c67f9-71ed-4b1e-8c3a-52e7d745eac3', N'440569ac-7e2a-4ee0-888f-4574b63bb672')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a11033f3-7541-4cf2-b1db-6b59f1081647', N'ec01cdda-c402-4735-a423-774280cb0dc6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c66c2401-0da8-41ad-a9ca-fce0e541b417', N'fab196e1-1bb7-446b-82d3-c9ef6228f372')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f4359a02-b32c-4e01-9735-8c129d547629', N'fab196e1-1bb7-446b-82d3-c9ef6228f372')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName], [CreateAt], [UpdateAt], [DeleteAt], [DiscountId]) VALUES (1, N'Kệ và giá', CAST(N'2023-05-03T20:56:53.0000000' AS DateTime2), CAST(N'2023-05-03T21:00:13.5141039' AS DateTime2), NULL, 2)
INSERT [dbo].[Categories] ([Id], [CategoryName], [CreateAt], [UpdateAt], [DeleteAt], [DiscountId]) VALUES (2, N'Tủ', CAST(N'2023-05-03T21:00:23.0000000' AS DateTime2), NULL, NULL, 5)
INSERT [dbo].[Categories] ([Id], [CategoryName], [CreateAt], [UpdateAt], [DeleteAt], [DiscountId]) VALUES (3, N'Bàn', CAST(N'2023-05-03T21:00:42.0000000' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Categories] ([Id], [CategoryName], [CreateAt], [UpdateAt], [DeleteAt], [DiscountId]) VALUES (4, N'Ghế', CAST(N'2023-05-03T21:00:52.0000000' AS DateTime2), NULL, NULL, 4)
INSERT [dbo].[Categories] ([Id], [CategoryName], [CreateAt], [UpdateAt], [DeleteAt], [DiscountId]) VALUES (5, N'Gương', CAST(N'2023-05-03T21:01:20.0000000' AS DateTime2), CAST(N'2023-05-03T22:20:37.3959260' AS DateTime2), NULL, 3)
INSERT [dbo].[Categories] ([Id], [CategoryName], [CreateAt], [UpdateAt], [DeleteAt], [DiscountId]) VALUES (6, N'Giường', CAST(N'2023-05-03T21:02:07.0000000' AS DateTime2), NULL, NULL, 2)
INSERT [dbo].[Categories] ([Id], [CategoryName], [CreateAt], [UpdateAt], [DeleteAt], [DiscountId]) VALUES (7, N'TAB đầu giường', CAST(N'2023-05-03T21:02:15.0000000' AS DateTime2), NULL, NULL, 3)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([Id], [Name], [StartDate], [EndDate], [CreateAt], [DiscountPrice]) VALUES (1, N'Không giảm giá', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-03T20:45:18.0000000' AS DateTime2), 0)
INSERT [dbo].[Discounts] ([Id], [Name], [StartDate], [EndDate], [CreateAt], [DiscountPrice]) VALUES (2, N'Khuyến mại tháng 5', CAST(N'2023-05-03T20:45:00.0000000' AS DateTime2), CAST(N'2023-05-31T20:45:00.0000000' AS DateTime2), CAST(N'2023-05-03T20:45:33.0000000' AS DateTime2), 5)
INSERT [dbo].[Discounts] ([Id], [Name], [StartDate], [EndDate], [CreateAt], [DiscountPrice]) VALUES (3, N'Khuyến mại ngày lễ', CAST(N'2023-05-04T20:47:00.0000000' AS DateTime2), CAST(N'2023-05-24T20:47:00.0000000' AS DateTime2), CAST(N'2023-05-03T20:45:57.0000000' AS DateTime2), 10)
INSERT [dbo].[Discounts] ([Id], [Name], [StartDate], [EndDate], [CreateAt], [DiscountPrice]) VALUES (4, N'Khuyến mại ngày của mẹ', CAST(N'2023-05-10T20:48:00.0000000' AS DateTime2), CAST(N'2023-05-18T20:49:00.0000000' AS DateTime2), CAST(N'2023-05-03T20:47:29.0000000' AS DateTime2), 15)
INSERT [dbo].[Discounts] ([Id], [Name], [StartDate], [EndDate], [CreateAt], [DiscountPrice]) VALUES (5, N'Khuyến mại', CAST(N'2023-05-03T20:50:00.0000000' AS DateTime2), CAST(N'2023-05-31T20:51:00.0000000' AS DateTime2), CAST(N'2023-05-03T20:50:48.0000000' AS DateTime2), 3)
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (1, 4, 1, CAST(630500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (1, 7, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (2, 12, 1, CAST(450000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (2, 16, 1, CAST(1800000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (3, 2, 1, CAST(142500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (3, 19, 1, CAST(1080000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (4, 4, 1, CAST(630500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (5, 7, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (5, 10, 1, CAST(297500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (6, 4, 1, CAST(630500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (6, 10, 1, CAST(297500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (7, 16, 1, CAST(1800000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (8, 20, 1, CAST(1350000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (8, 21, 1, CAST(1350000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (9, 14, 1, CAST(4656000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (10, 23, 1, CAST(3800000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (11, 20, 1, CAST(1350000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (12, 14, 1, CAST(4656000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (15, 2, 1, CAST(142500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (15, 7, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (16, 23, 1, CAST(3800000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (17, 14, 1, CAST(4656000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (18, 2, 1, CAST(142500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (18, 12, 1, CAST(450000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (19, 12, 1, CAST(450000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (20, 10, 1, CAST(297500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (21, 4, 1, CAST(630500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (21, 10, 1, CAST(297500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (22, 25, 30, CAST(255000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (23, 25, 30, CAST(255000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (24, 25, 30, CAST(255000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (25, 25, 30, CAST(255000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (26, 25, 30, CAST(255000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (27, 25, 30, CAST(255000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (28, 3, 1, CAST(118750.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (28, 4, 1, CAST(630500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Quantity], [Price]) VALUES (28, 5, 1, CAST(100000.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (1, CAST(N'2023-05-13' AS Date), N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0345678913', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T15:46:28.2253257' AS DateTime2), CAST(N'2023-05-15T15:46:28.2253272' AS DateTime2), CAST(1630500.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (2, CAST(N'2023-05-13' AS Date), N'42875905-7447-4f34-a6da-d36c5399196a', N'LeBaDucAnh', N'Thanh Hóa', N'lebaducanh@gmail.com', N'0987234823', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T15:46:31.0699964' AS DateTime2), CAST(N'2023-05-15T15:46:31.0699978' AS DateTime2), CAST(2250000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (3, CAST(N'2023-05-13' AS Date), NULL, N'nguyen van hoat', N'nam dinh', N'hoat@gmail.com', N'0892301272', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:50:50.7355567' AS DateTime2), CAST(N'2023-05-15T22:50:50.7355583' AS DateTime2), CAST(1222500.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (4, CAST(N'2023-05-12' AS Date), N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0273273324', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:50:52.1645758' AS DateTime2), CAST(N'2023-05-15T22:50:52.1645779' AS DateTime2), CAST(630500.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (5, CAST(N'2023-05-12' AS Date), N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0273273324', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:51:00.3759078' AS DateTime2), CAST(N'2023-05-15T22:51:00.3759097' AS DateTime2), CAST(1297500.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (6, CAST(N'2023-05-11' AS Date), N'42875905-7447-4f34-a6da-d36c5399196a', N'LeBaDucAnh', N'Thanh Hóa', N'lebaducanh@gmail.com', N'0892301272', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:50:55.3632922' AS DateTime2), CAST(N'2023-05-15T22:50:55.3632937' AS DateTime2), CAST(928000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (7, CAST(N'2023-05-11' AS Date), N'42875905-7447-4f34-a6da-d36c5399196a', N'LeBaDucAnh', N'Thanh Hóa', N'lebaducanh@gmail.com', N'0892301272', 2, NULL, CAST(N'2023-05-13T22:23:42.5923019' AS DateTime2), NULL, CAST(1800000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (8, CAST(N'2023-05-10' AS Date), N'49c21a24-27c0-48b2-9836-9e34629b6643', N'user2@hotmail.com', N'Ân Phú-Phú Lâm-Tiên Du', N'user2@hotmail.com', N'0347823492', 2, NULL, CAST(N'2023-05-13T22:23:38.0020762' AS DateTime2), NULL, CAST(2700000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (9, CAST(N'2023-05-09' AS Date), N'49c21a24-27c0-48b2-9836-9e34629b6643', N'user2@hotmail.com', N'Ân Phú-Phú Lâm-Tiên Du', N'user2@hotmail.com', N'0347823492', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:51:05.7341264' AS DateTime2), CAST(N'2023-05-15T22:51:05.7341283' AS DateTime2), CAST(4656000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (10, CAST(N'2023-05-08' AS Date), N'49c21a24-27c0-48b2-9836-9e34629b6643', N'user2@hotmail.com', N'Ân Phú-Phú Lâm-Tiên Du', N'user2@hotmail.com', N'0347823492', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:51:03.2198824' AS DateTime2), CAST(N'2023-05-15T22:51:03.2198839' AS DateTime2), CAST(3800000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (11, CAST(N'2023-05-08' AS Date), N'e99c67f9-71ed-4b1e-8c3a-52e7d745eac3', N'NguyenVanTrung', N'Việt Yên - Bắc Giang', N'trung@gmail.com', N'0964108026', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:50:23.7922770' AS DateTime2), CAST(N'2023-05-15T22:50:23.7922788' AS DateTime2), CAST(1350000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (12, CAST(N'2023-05-07' AS Date), N'e99c67f9-71ed-4b1e-8c3a-52e7d745eac3', N'NguyenVanTrung', N'Việt Yên - Bắc Giang', N'trung@gmail.com', N'0964108026', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:50:26.7270724' AS DateTime2), CAST(N'2023-05-15T22:50:26.7270740' AS DateTime2), CAST(4656000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (13, CAST(N'2023-05-03' AS Date), N'e99c67f9-71ed-4b1e-8c3a-52e7d745eac3', N'NguyenVanTrung', N'Việt Yên - Bắc Giang', N'trung@gmail.com', N'0964108026', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:50:29.2976308' AS DateTime2), CAST(N'2023-05-15T22:50:29.2976324' AS DateTime2), CAST(1142500.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (14, CAST(N'2023-04-29' AS Date), N'e99c67f9-71ed-4b1e-8c3a-52e7d745eac3', N'NguyenVanTrung', N'Việt Yên - Bắc Giang', N'trung@gmail.com', N'0964108026', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-13T22:50:31.8111911' AS DateTime2), CAST(N'2023-05-15T22:50:31.8111926' AS DateTime2), CAST(1142500.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (15, CAST(N'2023-04-28' AS Date), N'e99c67f9-71ed-4b1e-8c3a-52e7d745eac3', N'NguyenVanTrung', N'Việt Yên - Bắc Giang', N'trung@gmail.com', N'0964108026', 2, NULL, CAST(N'2023-05-13T22:33:26.4249570' AS DateTime2), NULL, CAST(1142500.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (16, CAST(N'2023-05-14' AS Date), N'42875905-7447-4f34-a6da-d36c5399196a', N'LeBaDucAnh', N'Việt Yên - Bắc Giang', N'lebaducanh@gmail.com', N'0273273324', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-14T07:19:16.5304643' AS DateTime2), CAST(N'2023-05-16T07:19:16.5304667' AS DateTime2), CAST(3800000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (17, CAST(N'2023-05-15' AS Date), N'e99c67f9-71ed-4b1e-8c3a-52e7d745eac3', N'NguyenVanTrung', N'Việt Yên - Bắc Giang', N'trung@gmail.com', N'0273273324', 3, NULL, CAST(N'2023-05-15T22:02:05.7397129' AS DateTime2), NULL, CAST(4656000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (18, CAST(N'2023-05-15' AS Date), N'e99c67f9-71ed-4b1e-8c3a-52e7d745eac3', N'NguyenVanTrung', N'Việt Yên - Bắc Giang', N'trung@gmail.com', N'0273273324', 5, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-15T22:13:25.5734154' AS DateTime2), CAST(N'2023-05-17T22:13:25.5734170' AS DateTime2), CAST(592500.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (19, CAST(N'2023-05-15' AS Date), N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0964108026', 3, NULL, CAST(N'2023-05-16T10:02:16.7894818' AS DateTime2), NULL, CAST(450000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (20, CAST(N'2023-05-15' AS Date), N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0892301272', 2, NULL, CAST(N'2023-05-15T22:11:32.5808897' AS DateTime2), NULL, CAST(297500.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (21, CAST(N'2023-05-15' AS Date), N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0937483247', 4, N'f4359a02-b32c-4e01-9735-8c129d547629', CAST(N'2023-05-16T10:02:37.7113861' AS DateTime2), NULL, CAST(928000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (22, CAST(N'2023-05-16' AS Date), N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0937483247', 2, NULL, CAST(N'2023-05-16T08:06:27.1170122' AS DateTime2), NULL, CAST(7650000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (23, CAST(N'2023-05-16' AS Date), NULL, N'Đạt Doãn', N'Ân Phú-Phú Lâm-Tiên Du', N'nguyendoandat2k1@gmail.com', N'044964108026', 2, NULL, CAST(N'2023-05-16T08:06:23.1068330' AS DateTime2), NULL, CAST(7650000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (24, CAST(N'2023-05-16' AS Date), NULL, N'Đạt Doãn', N'Ân Phú-Phú Lâm-Tiên Du', N'nguyendoandat2k1@gmail.com', N'044964108026', 2, NULL, CAST(N'2023-05-16T08:16:50.5130594' AS DateTime2), NULL, CAST(7650000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (25, CAST(N'2023-05-16' AS Date), N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0937483247', 2, NULL, CAST(N'2023-05-16T08:16:46.6777121' AS DateTime2), NULL, CAST(7650000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (26, CAST(N'2023-05-16' AS Date), N'ce37488d-15ff-4a27-86b7-b2f3d051d7cc', N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0937483247', 2, NULL, CAST(N'2023-05-16T08:34:27.7924182' AS DateTime2), NULL, CAST(7650000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (27, CAST(N'2023-05-16' AS Date), NULL, N'datdoan', N'bacninh', N'doagjgn@gmail.com', N'6564324324', 2, NULL, CAST(N'2023-05-16T08:59:11.3442722' AS DateTime2), NULL, CAST(7650000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [OrderDate], [UserId], [ShipName], [ShipAddress], [ShipEmail], [ShipPhoneNumber], [StatusId], [ShipperId], [UpdateAt], [EndAt], [TotalPrice]) VALUES (28, CAST(N'2023-05-16' AS Date), NULL, N'PhamMinhChien', N'Việt Yên - Bắc Giang', N'chien@gmail.com', N'0937483247', 2, N'c66c2401-0da8-41ad-a9ca-fce0e541b417', CAST(N'2023-05-16T11:17:05.8078981' AS DateTime2), NULL, CAST(849250.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (2, N'Kệ gỗ để dày 2 tầng', N'Kệ gỗ để dày 2 tầng', N' - Kệ Giày Gỗ 2 Tầng rất dễ lắp ráp; tháo gỡ; vận chuyển mỗi khi bạn cần. - Hàng thật như hình. - Cung cấp các sản phẩm kệ giày gỗ theo đúng tiêu chuẩn với chất lượng tốt nhất. SẢN PHẨM TỰ LẮP RÁP', CAST(150000 AS Decimal(18, 0)), 1, N'oedzs0pi.jpg', CAST(N'2023-05-03T21:15:46.0000000' AS DateTime2), NULL, NULL, 1, 18, N'75 x 26 x 50 cm', 3)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (3, N'kệ tổ ong đa năng', N'kệ tổ ong đa năng', N'🔸MÔ TẢ SẢN PHẨM KỆ GỖ CÓ TỦ XINH 
✔️ Những chiếc tủ cao khiến căn phòng trật trội, vậy thì hãy thay thế bằng 1 chiếc tủ thấp vẫn chứa được nhiều đồ mà lại giúp không gian thêm thông thoáng 
✔️ Màu sắc nhã nhặn, phối hài hòa giữa màu vân gỗ sáng tự nhiên với cánh tủ màu trắng thanh lịch 
✔️ Nhiều ngăn chứa đồ với cánh tủ che chắn chống bụi chống côn trùng kín đáo Chân tủ cao hơn, vật liệu cứng cáp vững chãi, bề mặt nóc tủ rộng tận dụng thành bàn thấp hoặc nơi bày đồ trang trí', CAST(125000 AS Decimal(18, 0)), 1, N'hmvntkuj.jpg', CAST(N'2023-05-03T21:22:05.0000000' AS DateTime2), NULL, NULL, 1, 13, N'70 x 60 x 30 cm', 1)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (4, N'Tủ Treo Quần Áo', N'Tủ Treo Quần Áo', N'Tủ treo quần áo gỗ Double Hanger được thiết kế với phong cách vô cùng đơn giản, giản lượt những chi tiết không cần thiết cho mọt chiếc tủ quần áo, nhưng vẫn giữ được nét tinh tế trong việc phối hợp màu sắc và các chi tiết kèm theo. Là sự kết hợp nhuần nhuyễn giữa hiện đại và cổ điển, kèm theo những tính năng thông minh, giúp tủ quần áo phát huy hết công năng, nhằm đáp ứng được các mong muốn ngày càng cao của khách hàng.', CAST(650000 AS Decimal(18, 0)), 1, N'v3wh5ai1.jpg', CAST(N'2023-05-03T21:35:29.0000000' AS DateTime2), NULL, NULL, 2, 24, N'130 x 38 x 150 cm', 5)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (5, N'Bàn làm việc', N'Bàn làm việc', N'☑️THÔNG TIN Bàn làm việc Gapi - Màu sắc: Mặt bàn (Trắng - vân gỗ), chân bàn màu trắng - Kích thước: (120x60x75cm) - Chất liệu: Mặt bàn gỗ MDF phủ melamin chống xước chống nước, chân thép chống ghỉ sơn tĩnh điện - Thiết kế hiện đại tối giản dễ dàng decor thành bàn học, bàn gaming, bàn trang điểm... - Cấu tạo: Lắp ráp đóng gói an toàn theo tiêu chuẩn xuất khẩu', CAST(100000 AS Decimal(18, 0)), 1, N'nbfzcb4i.jpg', CAST(N'2023-05-03T21:36:32.0000000' AS DateTime2), NULL, NULL, 3, 14, N'120x60x75cm', 1)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (6, N'Bàn gỗ gấp gọn', N'Bàn gỗ gấp gọn', N'Bàn  gấp gọn , bàn trà gấp gọn thông minh - Bàn trà được làm bằng gỗ  tự nhiên, xử lý chông mối mọt. - Khi bị dơ Quý khách có thể rửa bằng nước thoải mái không sợ thấm. - Khi không sử dụng Quý khách gấp lại giúp tiết kiệm không gian. - Bàn thích hợp sử dụng ngồi dưới đất. Gam màu gỗ tự nhiên - Với chất liệu gỗ tự nhiên, bền đẹp thân thiện với môi trường,chịu nước không sợ hư. - Được làm từ gỗ tự nhiên đã qua xử lý chống cong vênh, chống mối mọt, đảm bảo độ bền cho sản phẩm. - Bề mặt bàn được gia công tỉ mỉ, nhẵn mịn, an toàn cho người sử dụng. Sản phẩm rất lý tưởng để làm bàn học, bàn làm việc, đọc sách báo, đặt máy tính xách tay… -Kết cấu bàn chắc chắn, chân xếp vững chãi, không bị lỏng qua thời gian và không bị trượt hay đổ khi sử dụng. - Sản phẩm với kích thước cùng trọng lượng gọn nhẹ, bạn có thể xếp gọn khi không sử dụng, giúp tiết kiệm không gian tối đa', CAST(100000 AS Decimal(18, 0)), 0, N'eib5xaeb.jpg', CAST(N'2023-05-03T21:40:02.0000000' AS DateTime2), NULL, NULL, 3, 50, N'60x 40 x26 cm', 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (7, N'Bàn trang điểm phong cách Bắc Âu', N'Bàn trang điểm phong cách Bắc Âu', N'Công năng: Bàn trang điểm bàn làm việc. Thích hợp mọi không gian tại nhà tại spa salon shop - Cấu tạo: Lắp ráp 🔰 HƯỚNG DẪN LẮP ĐẶT: ✔️ Quan sắt kĩ sản phẩm rồi có cái hình tượng về các liên kết của sản phẩm ( rất đơn giản, nhìn 10 giây là đủ ) ✔️Tất cả mọi vị trí liên kết đã được định vị chính xác, bạn chỉ cần sử dụng tô vít vặn theo các vị trí đánh dấu sẵn đó. 🔰 CAM KẾT HÀNG ĐÚNG CHẤT LƯỢNG: ✔️ Hàng y hình ✔️ Tất cả sản phẩm đều được đóng gói bằng hộp chắc chắn', CAST(1000000 AS Decimal(18, 0)), 1, N'1b0qgwat.jpg', CAST(N'2023-05-03T21:41:19.0000000' AS DateTime2), NULL, NULL, 3, 18, N'80x40x120cm', 3)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (8, N'Bàn trà cao cấp', N'Bàn trà cao cấp', N'Màu sắc: Mặt Trắng - Chân màu gỗ tự nhiên - Lắp ráp và sử dụng ngay - Bề mặt chống trầy xước - Không cong vênh - Vân gỗ đều màu - Độ cứng cao', CAST(150000 AS Decimal(18, 0)), 1, N'yg1g4ykq.jpg', CAST(N'2023-05-03T21:42:37.0000000' AS DateTime2), NULL, NULL, 3, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (9, N'Bàn gấp chân cao', N'Bàn gấp chân cao', N'Chân sơn tĩnh điện: cao từ dưới chân lên mặt bàn:72cm , độ dầy mặt bàn tiêu chuẩn 12mm. - Mặt bàn dc làm từ gỗ MDF phủ malamine chống xước , độ bền cao đạt chuẩn hàng xuất khẩu. - bàn dc bọc viền cẩn thận tỉ mỉ an toàn khi sử dụng. - chân bàn được làm từ thép ống dầy 1mm đạt độ cứng nhất định nên không làm cong vênh khi sử dụng. hoàn thiện phủ 1 lớp sơn tĩnh điện đen bóng siêu bền siêu đẹp. gấp gọn tiện lợi khi không sử dụng. 
Sản phẩm phù hợp với các bạn sinh viên học sinh', CAST(200000 AS Decimal(18, 0)), 1, N'btqmi3u1.jpg', CAST(N'2023-05-03T21:43:26.0000000' AS DateTime2), NULL, NULL, 3, 30, N'80x 50 x 72 cm', 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (10, N'Ghế Panda Cafe, Ghế Bàn Ăn Mặt Nệm', N'Ghế Panda Cafe, Ghế Bàn Ăn Mặt Nệm', N'Thiết Kế Đơn Giản Tinh Tế Và Sang Trọng: sản phẩm thiết kế đơn giản, màu sắc trang nhã, kiểu dáng tinh tế tạo lên cảm giác thoải mái và dễ chịu. - Phù Hợp Với Nhiều Phong Cách Nội Thất: là một trong những mẫu ghế đơn giản nhưng không kém phần tinh tế sẽ giúp không gian của bạn ấm cúng là điểm nhấn cho ngôi nhà đẹp và cá tính theo phong cách của chủ nhà. Màu sắc ghế dễ dàng phù hợp, đồng điệu với nhiều phong cách nội thất khác nhau.', CAST(350000 AS Decimal(18, 0)), 1, N'rh52smy2.jpg', CAST(N'2023-05-03T21:44:36.0000000' AS DateTime2), NULL, NULL, 4, 97, N'85x 45 x 40 cm', 3)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (11, N'Gương trang điểm để bàn', N'Gương trang điểm để bàn', N'Với thiết kế tuy đơn giản, mộc mạc nhưng gương gỗ để bàn lại đem lại cảm giác vô cùng gần gũi và thân thiện với người sử dụng + Gương gỗ có vỏ bọc ngoài làm bằng chất liệu gỗ tự nhiên, vừa làm đẹp vừa thân thiện với môi trường + Gương sáng đều dày dặn khi soi thấy hình ảnh thật của khuôn mặt, xứng đáng làm người bạn thân thiết không thể thiếu của mỗi cô gái, chàng trai. + Bạn có thể sử dụng gương soi trang điểm, làm tóc, chỉnh trang vẻ ngoài trong gương mỗi ngày', CAST(100000 AS Decimal(18, 0)), 1, N'4kwyojc5.jpg', CAST(N'2023-05-03T21:46:00.0000000' AS DateTime2), NULL, NULL, 5, 10, N'23 x 16 cm', 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (12, N'Gương gỗ đứng soi toàn thân', N'Gương gỗ đứng soi toàn thân', N'Dòng gương soi toàn thân hiện nay đang rất được khách hàng săn đón. Bởi, chúng sở hữu những ưu điểm tuyệt vời sau: Hình ảnh của bạn được phản chiếu trên gương rõ nét, chân thật và bao quát, tổng thể. Nhỏ nhẹ, gọn gàng dễ dàng di chuyển và thay đổi linh hoạt mọi nơi. Có nhiều mẫu cũng như chủng loại mới giúp bạn thoải mái lựa chọn theo ý thích. Nếu bạn đang sống trong các căn chung cư hay phòng trọ nhỏ chật hẹp. Thì đây chính là giải pháp tối ưu cho 1 không gian mở, mang đến ánh sáng tốt cho gian phòng. Phù hợp với mọi vị trí trong không gian sinh hoạt nhà bạn.', CAST(500000 AS Decimal(18, 0)), 1, N'bf2hkcwr.jpg', CAST(N'2023-05-03T21:49:30.0000000' AS DateTime2), NULL, NULL, 5, 12, N'115 x 50 cm', 3)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (13, N'Gương Tròn Dây Da Siêu Dày', N'Gương Tròn Dây Da Siêu Dày', N'Với chất liệu gương cao cấp, sáng màu đem lại cảm giác soi chân thật chuẩn chỉ hơn không kém gì các loại gương nhập khẩu từ châu Âu mà giá thành lại rất Việt Nam- Mặt gương siêu dày 5mm dày hơn hầu hết gương cùng loại trên thị trường mang lại sự chắc chắn độ bền cũng như hình ảnh chiếu đẹp hơn sang hơn rất nhiều.- Gương Tròn Dây Da VANDO Decor như một điểm nhấn giúp căn phòng trờ lên sang trọng rộng rãi và hiện đại hơn. - Đa năng siêu tiên dụng có thể trang trí sủ dụng ở nhiều không gian khác nhau như phòng khách, phòng ngủ, phòng tắm, phòng vệ sinh...', CAST(350000 AS Decimal(18, 0)), 1, N'o2cr2f1g.jpg', CAST(N'2023-05-03T21:50:19.0000000' AS DateTime2), NULL, NULL, 5, 20, N'40-50-60cm', 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (14, N'Tủ rượu phòng khách và nhà hàng rộng', N'Tủ rượu phòng khách và nhà hàng rộng', N'Tủ rượu trưng bày thường được dùng trong các hộ gia đình để làm tủ đựng rượu phòng ăn và phòng khách, hoặc được dùng trong các nhà hàng để trưng bày rượu. Tủ kệ rượu đẹp được thiết kế có 03 cánh  kính, bên trong cánh kính hai bên mỗi bên có 02 ngăn kéo và 04 khoang để đựng đồ, ở giữa kà 01 cánh kính bên trong có 04 đợt chia thành 5 khoang', CAST(4800000 AS Decimal(18, 0)), 1, N'ibwlx0ip.jpg', CAST(N'2023-05-03T21:51:54.0000000' AS DateTime2), NULL, NULL, 2, 12, N'120 x 40x 200cm', 3)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (15, N'Tủ đựng tài liệu TL27', N'Tủ đựng tài liệu TL27', N'Thiết kế với 6 cánh và 2 ngăn kéo , các ngăn để tài liệu riêng, phù hợp với phòng để nhiều tài liệu. Tủ tài liệu thiết kế sang trọng và hiện đại, vô cùng tiện dụng. Phía trên có các đợt trang trí kết hợp để tài liệu, và 1 ngăn treo đồ ', CAST(7500000 AS Decimal(18, 0)), 1, N'brkt0edk.jpg', CAST(N'2023-05-03T22:01:57.0000000' AS DateTime2), NULL, NULL, 2, 10, N'320x 40x 200cm', 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (16, N'BÀN TRÀ NOGUCHI BT2', N'BÀN TRÀ NOGUCHI BT2', N'Bàn Noguchi với lớp kính cường lực có độ dày lên đến 12mm giúp bàn có thể chịu được các lực va đập mạnh. Chất liệu có độ hoàn thiệt tốt dễ dàng vệ sinh và hạn chế những vết ố, bám bẩn khó chịu trong quá trình sử dụng. Tuy nhiên bạn vẫn nên vệ sinh bàn sạch sẽ hàng ngày.', CAST(1800000 AS Decimal(18, 0)), 1, N'o5yxrryb.jpg', CAST(N'2023-05-03T22:02:52.0000000' AS DateTime2), NULL, NULL, 3, 29, N'80 x 110 cm', 2)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (17, N'Kệ để ti vi phòng khách đẹp giá rẻ KTVG34', N'Kệ để ti vi phòng khách đẹp giá rẻ KTVG34', N'- Kệ ti vi phòng khách đẹp giá rẻ KTV34 thường được dùng để làm kệ để ti vi trong các hộ gia đình, chung cư,nhà liền kề, biệt thự.  Kệ ti vi trang trí phòng khách KTV34 được thiết kế có 01 tủ có canh bên dưới, ở giữa là 01 khoang có cánh, bên trên là các ô nhỏ để đựng đồ, đằng sau là 01 hậu gỗ được ghép từ các nan gỗ', CAST(10500000 AS Decimal(18, 0)), 1, N'm5juj3ce.jpg', CAST(N'2023-05-03T22:03:55.0000000' AS DateTime2), NULL, NULL, 1, 15, N'Dài 4m, sâu tủ bên dưới 40cm, sâu kệ bên trên 30cm, cao 2.4m', 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (18, N'Bộ Sofa Góc L Gỗ Sồi Nga Màu Nâu Đẹp Giá Rẻ', N'Bộ Sofa Góc L Gỗ Sồi Nga Màu Nâu Đẹp Giá Rẻ', N'Mẫu sofa gỗ SC801C thiết kế theo kiểu góc chữ L giúp tận dụng tối đa diện tích không gian phòng khách gia đình. Kiểu dáng sản phẩm được tối giản hóa với các đường nét vuông vức, góc cạnh đảm bảo tính ổn định tốt, tạo cảm giác vững chãi, chắc chắn, an tâm cho người sử dụng.
', CAST(11500000 AS Decimal(18, 0)), 1, N'lpyswpdr.jpg', CAST(N'2023-05-03T22:06:03.0000000' AS DateTime2), NULL, NULL, 3, 5, NULL, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (19, N'TAB đầu giường 1 ngăn kéo, 1 hộc hiện đại', N'TAB đầu giường 1 ngăn kéo, 1 hộc hiện đại', N'TAB đầu giường được thiết kế với kiểu dáng gọn gàng, đơn giản nhưng lại có sức hút, sự độc đáo nhất định. Sự kết nối giữa kiểu dáng thiết kế hiện đại với nét đẹp mang sắc màu cổ điển của gỗ óc chó tạo nên sản phẩm vừa trẻ trung, vừa sang trọng.Một hình hộp chữ nhật đơn giản chia làm 2 phần: 1 ngăn kéo tủ với hệ thống ray giảm chấn cariny cao cấp và 1 hộc tủ mở. Bỏ qua những chi tiết rườm rà, cầu kỳ thay vào đó là những đường nét đơn giản, dứt khoát nhưng cũng đầy tinh tế.', CAST(1200000 AS Decimal(18, 0)), 1, N'fmvlqxxx.jpg', CAST(N'2023-05-03T22:09:11.0000000' AS DateTime2), NULL, NULL, 7, 19, N'600*458*410mm', 1)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (20, N'TAB chữ U ', N'TAB chữ U ', N'TAB hội tụ vẻ đẹp tinh hoa của phong cách hiện đại và chất liệu gỗ óc chó tự nhiên giúp không gian phòng ngủ trở nên đẳng cấp, quý tộc hơn. Màu gỗ nâu trầm đặc trưng kết hợp với những đường vân gỗ tự nhiên tinh tế và sắc nét tạo nên tính nghệ thuật cực kỳ cao, không thể đụng hàng với bất cứ loại vật liệu nào.Lớp sơn bóng bề mặt càng giúp sản phẩm trông bắt mắt và cuốn hút hơn. Cũng là lớp áo bảo vệ hoàn hảo, mang đến sản phẩm có độ bền ưu việt hơn nữa.', CAST(1500000 AS Decimal(18, 0)), 1, N'pxsdoeuh.jpg', CAST(N'2023-05-03T22:11:20.0000000' AS DateTime2), NULL, NULL, 7, 9, N'600*500*500mm', 2)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (21, N'TAB giáng tròn ELIP đọc đáo', N'TAB giáng tròn ELIP đọc đáo', N'Sản phẩm bổ trợ hoàn hảo cho những mẫu giường ngủ dáng tròn đẳng cấp. Sự hòa hợp từ hình dáng đến chất liệu của hai món đồ nội thất này giúp phòng ngủ trở nên cao cấp và hiện đại hơn.', CAST(1500000 AS Decimal(18, 0)), 1, N'qp5zjpla.jpg', CAST(N'2023-05-03T22:13:08.0000000' AS DateTime2), NULL, NULL, 7, 5, NULL, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (22, N'Giường chân nan, đầu phẳng', N'Giường chân nan, đầu phẳng', N'Ưu điểm đầu tiên của mẫu giường ngủ hiện đại này là khả năng thích ứng với bất cứ kiểu phòng ngủ nào từ chung cư đến biệt thự cao cấp, từ phong cách tối giản cho đến tân cổ điển, Á Đông.Chắc chắn, sự xuất hiện của mẫu giường ngủ bằng gỗ óc chó tự nhiên cao cấp này sẽ là điểm nhấn tuyệt vời, góp phần điểm tô cho bức tranh nội thất hoàn mỹ của không gian phòng ngủ nhà bạn.', CAST(4500000 AS Decimal(18, 0)), 1, N'kg0qfxkk.jpg', CAST(N'2023-05-03T22:15:10.0000000' AS DateTime2), NULL, NULL, 6, 15, NULL, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (23, N'Giường ngủ vuông', N'Giường ngủ vuông', N'Giường có chiều cao phù hợp với tầm của trẻ nhỏ, nổi bật với phần đầu giường cao, thanh thoát. Các họa tiết trạm trổ không được ứng dụng trong thiết kế này. Thay vào đó là những đường gân dọc theo chiều dài của giường để tạo ra điểm nhấn.Trước đây, người ta vẫn hay dùng dát giường được làm tre đan vào nhau. Tuy nhiên, trong quá trình sử dụng, chúng ta biết nhược điểm của loại dát giường này là không bền, hay phát ra tiếng mỗi khi cựa quậy, hoặc di chuyển trên giường. Để thay thế, chiếc giường vuông gỗ óc chó này sử dụng 2 tấm gỗ có độ dày phù hợp để phủ lên phía trên thang giường.', CAST(4000000 AS Decimal(18, 0)), 1, N'gokib4t1.jpg', CAST(N'2023-05-03T22:16:52.0000000' AS DateTime2), NULL, NULL, 6, 23, N'1600 x 2000 (mm)', 2)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (24, N'Giường tròn, đầu giường bọc nỉ cao cấp', N'Giường tròn, đầu giường bọc nỉ cao cấp', N'Giường ngủ gỗ tròn với đệm chữ nhật tạo nên sự kết hợp thú vị về hình khối, mang đến sự độc đáo, sáng tạo cho không gian phòng ngủ. Chúng tôi đang nói đến “siêu phẩm” giường gỗ óc chó tròn, đầu giường bọc nỉ.Sự xuất hiện của mẫu giường ngủ gỗ óc chó cao cấp này trong phòng ngủ mang tới nét cá tính và phong cách riêng đẳng cấp mà không phải ai cũng may mắn để sở hữu. Nhất là giới thượng lưu hiện nay đang ngày càng ưa chuộng những thiết kế độc bản, mang tính cá nhân hóa thì đây quả là một sự lựa chọn hấp dẫn.
 ', CAST(6500000 AS Decimal(18, 0)), 1, N'm40sbn1g.jpg', CAST(N'2023-05-03T22:18:24.0000000' AS DateTime2), NULL, NULL, 6, 10, N'1600*2000mm, 1800*2000mm, 2000*2200mm', 0)
INSERT [dbo].[Products] ([Id], [ProductName], [Slug], [ProductDetail], [Price], [Status], [Thumb], [CreateAt], [UpdateAt], [DeleteAt], [CategoryId], [Quantity], [Size], [QuantitySold]) VALUES (25, N'GHẾ ĂN GỖ ÓC CHÓ LƯNG TRUNG', N'GHẾ ĂN GỖ ÓC CHÓ LƯNG TRUNG', N'Sản phẩm không chỉ đẹp mà còn linh hoạt với mọi không gian đặc biệt là không gian vừa và nhỏ.Mỗi bộ phận của chiếc ghế là một điểm nhấn nổi bật. Phần tựa lưng. Với độ cong được tính toán phù hợp với dáng ngồi của người Việt.', CAST(300000 AS Decimal(18, 0)), 1, N'fvuduwzv.jpg', CAST(N'2023-05-13T23:52:24.0000000' AS DateTime2), NULL, NULL, 4, 30, NULL, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Reviews] ([UserId], [ProductId], [Viewd], [IsWishList], [ReviewDetail], [DateView], [CreateAt], [UpdateAt], [DeleteAt]) VALUES (N'42875905-7447-4f34-a6da-d36c5399196a', 2, 0, 0, N'Sản phẩm tốt', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-13T15:47:45.0742107' AS DateTime2), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([Id], [Name]) VALUES (1, N'Chờ xét duyệt')
INSERT [dbo].[Statuses] ([Id], [Name]) VALUES (2, N'Đã hủy')
INSERT [dbo].[Statuses] ([Id], [Name]) VALUES (3, N'Xác nhận thành công')
INSERT [dbo].[Statuses] ([Id], [Name]) VALUES (4, N'Đang được vận chuyển')
INSERT [dbo].[Statuses] ([Id], [Name]) VALUES (5, N'Giao thành công')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [DiscountId]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [StatusId]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Viewd]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AppUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AppUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AppUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AppUser_UserId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Discounts_DiscountId] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[Discounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Discounts_DiscountId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AppUser_UserId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Statuses_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Statuses_StatusId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AppUser_UserId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Products_ProductId]
GO
