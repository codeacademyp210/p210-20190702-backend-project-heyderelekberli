USE [master]
GO
/****** Object:  Database [AdminConnect]    Script Date: 7/9/2019 20:24:20 ******/
CREATE DATABASE [AdminConnect]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AdminConnect', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\AdminConnect.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AdminConnect_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\AdminConnect_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AdminConnect] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AdminConnect].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AdminConnect] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AdminConnect] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AdminConnect] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AdminConnect] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AdminConnect] SET ARITHABORT OFF 
GO
ALTER DATABASE [AdminConnect] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AdminConnect] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AdminConnect] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AdminConnect] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AdminConnect] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AdminConnect] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AdminConnect] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AdminConnect] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AdminConnect] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AdminConnect] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AdminConnect] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AdminConnect] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AdminConnect] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AdminConnect] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AdminConnect] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AdminConnect] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AdminConnect] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AdminConnect] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AdminConnect] SET  MULTI_USER 
GO
ALTER DATABASE [AdminConnect] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AdminConnect] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AdminConnect] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AdminConnect] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AdminConnect] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AdminConnect] SET QUERY_STORE = OFF
GO
USE [AdminConnect]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [AdminConnect]
GO
/****** Object:  Table [dbo].[ClubInfoes]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClubInfoes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Pincode] [nvarchar](max) NULL,
	[Fax] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ClubInfoes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Duration] [nvarchar](max) NULL,
	[Price] [real] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Courses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Days]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Days](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Days] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packages]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Duration] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Start] [nvarchar](max) NULL,
	[End] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Amount] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Packages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[TrainerID] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Due] [real] NOT NULL,
	[Amount] [real] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Payments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Rooms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DayID] [int] NOT NULL,
	[From] [nvarchar](max) NULL,
	[To] [nvarchar](max) NULL,
	[CourseID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[TrainerID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Schedules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainers]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Trainers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/9/2019 20:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[ContactNumber] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Adress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[PinCode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClubInfoes] ON 

INSERT [dbo].[ClubInfoes] ([ID], [Image], [Username], [Email], [PhoneNumber], [Address], [City], [Pincode], [Fax], [Website], [Status]) VALUES (1, NULL, N'	Nataliapery', N'	Nataliapery@example.com', N'999-999-9999', N'	Sydney, Australia', N'	Nakia', N'	999999', N'12345', N'	https://www.example.com', 1)
SET IDENTITY_INSERT [dbo].[ClubInfoes] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([ID], [Name], [Duration], [Price], [Image], [Description], [Status]) VALUES (1, N'Aerobics', N'	3 Months', 70, NULL, N'Lorem Ipsum', 1)
INSERT [dbo].[Courses] ([ID], [Name], [Duration], [Price], [Image], [Description], [Status]) VALUES (4, N'Body Building	', N'3 Months	', 70, NULL, N'Lorem Ipsum', 1)
INSERT [dbo].[Courses] ([ID], [Name], [Duration], [Price], [Image], [Description], [Status]) VALUES (6, N'Fitness	', N'3 Months', 70, NULL, N'Lorem Ipsum', 1)
INSERT [dbo].[Courses] ([ID], [Name], [Duration], [Price], [Image], [Description], [Status]) VALUES (7, N'Flexibility', N'3 Months', 70, NULL, N'Lorem Ipsum', 1)
INSERT [dbo].[Courses] ([ID], [Name], [Duration], [Price], [Image], [Description], [Status]) VALUES (8, N'Yoga', N'3 Months', 70, NULL, N'Lorem Ipsum', 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Days] ON 

INSERT [dbo].[Days] ([ID], [Name], [Status]) VALUES (1, N'Monday', 1)
INSERT [dbo].[Days] ([ID], [Name], [Status]) VALUES (2, N'Tuesday', 1)
INSERT [dbo].[Days] ([ID], [Name], [Status]) VALUES (3, N'Wednesday', 1)
INSERT [dbo].[Days] ([ID], [Name], [Status]) VALUES (4, N'Thursday', 1)
INSERT [dbo].[Days] ([ID], [Name], [Status]) VALUES (5, N'Friday', 1)
INSERT [dbo].[Days] ([ID], [Name], [Status]) VALUES (6, N'Saturday', 1)
INSERT [dbo].[Days] ([ID], [Name], [Status]) VALUES (7, N'Sunday', 1)
SET IDENTITY_INSERT [dbo].[Days] OFF
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([ID], [Username], [Password]) VALUES (4, N'', N'admin')
INSERT [dbo].[Log] ([ID], [Username], [Password]) VALUES (6, N'Admin@gmail.com', N'ACCK0RO25rN/sZ/wKyvLvdQqrCeZpVyXePwRU55R2jONAF78MCOFbIlAkw2/ykBWag==')
SET IDENTITY_INSERT [dbo].[Log] OFF
SET IDENTITY_INSERT [dbo].[Packages] ON 

INSERT [dbo].[Packages] ([ID], [Name], [Duration], [Image], [Start], [End], [Description], [Amount], [Status]) VALUES (2, N'Aerobics', N'1 Month	', NULL, NULL, NULL, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.	', N'60', 1)
INSERT [dbo].[Packages] ([ID], [Name], [Duration], [Image], [Start], [End], [Description], [Amount], [Status]) VALUES (3, N'Body Building', N'2 Months	', NULL, NULL, NULL, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.	', N'60', 1)
INSERT [dbo].[Packages] ([ID], [Name], [Duration], [Image], [Start], [End], [Description], [Amount], [Status]) VALUES (4, N'Fitness', N'1 Month	', NULL, NULL, NULL, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.	', N'60', 1)
INSERT [dbo].[Packages] ([ID], [Name], [Duration], [Image], [Start], [End], [Description], [Amount], [Status]) VALUES (6, N'Yoga	', N'3 Months	', NULL, NULL, NULL, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.	', N'60', 1)
SET IDENTITY_INSERT [dbo].[Packages] OFF
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([ID], [UserID], [CourseID], [TrainerID], [Email], [Due], [Amount], [Status]) VALUES (5, 1, 8, 4, N'gankunding@hotmail.com	', 20, 60, 1)
INSERT [dbo].[Payments] ([ID], [UserID], [CourseID], [TrainerID], [Email], [Due], [Amount], [Status]) VALUES (6, 2, 8, 2, N'Gavin@test.com	', 30, 40, 1)
INSERT [dbo].[Payments] ([ID], [UserID], [CourseID], [TrainerID], [Email], [Due], [Amount], [Status]) VALUES (7, 3, 6, 3, N'JacobThornton@test.com	', 10, 80, 1)
INSERT [dbo].[Payments] ([ID], [UserID], [CourseID], [TrainerID], [Email], [Due], [Amount], [Status]) VALUES (8, 4, 1, 5, N'Markotto@test.com	', 50, 0, 1)
INSERT [dbo].[Payments] ([ID], [UserID], [CourseID], [TrainerID], [Email], [Due], [Amount], [Status]) VALUES (9, 5, 4, 6, N'Sonya@test.com	', 20, 100, 1)
INSERT [dbo].[Payments] ([ID], [UserID], [CourseID], [TrainerID], [Email], [Due], [Amount], [Status]) VALUES (12, 3, 7, 3, N'Timothy@test.com	', 50, 100, 1)
SET IDENTITY_INSERT [dbo].[Payments] OFF
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([ID], [Name], [Status]) VALUES (1, N'Room-A		
', 1)
INSERT [dbo].[Rooms] ([ID], [Name], [Status]) VALUES (2, N'Room-B	
', 1)
INSERT [dbo].[Rooms] ([ID], [Name], [Status]) VALUES (3, N'Room-C	
', 1)
INSERT [dbo].[Rooms] ([ID], [Name], [Status]) VALUES (4, N'Room-D	
', 1)
INSERT [dbo].[Rooms] ([ID], [Name], [Status]) VALUES (5, N'Room-E	
', 1)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
SET IDENTITY_INSERT [dbo].[Schedules] ON 

INSERT [dbo].[Schedules] ([ID], [DayID], [From], [To], [CourseID], [RoomID], [TrainerID], [Description], [Status]) VALUES (1, 1, N'12:00	', N'13:00			
', 1, 1, 4, NULL, 1)
INSERT [dbo].[Schedules] ([ID], [DayID], [From], [To], [CourseID], [RoomID], [TrainerID], [Description], [Status]) VALUES (2, 2, N'10:30	', N'11:30	', 4, 2, 2, NULL, 1)
INSERT [dbo].[Schedules] ([ID], [DayID], [From], [To], [CourseID], [RoomID], [TrainerID], [Description], [Status]) VALUES (3, 3, N'11:00	', N'12:00	', 6, 3, 3, NULL, 1)
INSERT [dbo].[Schedules] ([ID], [DayID], [From], [To], [CourseID], [RoomID], [TrainerID], [Description], [Status]) VALUES (4, 4, N'13:30	', N'14:00	', 7, 4, 5, NULL, 1)
INSERT [dbo].[Schedules] ([ID], [DayID], [From], [To], [CourseID], [RoomID], [TrainerID], [Description], [Status]) VALUES (6, 5, N'10:00	', N'11:00	', 1, 5, 2, NULL, 1)
INSERT [dbo].[Schedules] ([ID], [DayID], [From], [To], [CourseID], [RoomID], [TrainerID], [Description], [Status]) VALUES (7, 4, NULL, NULL, 1, 3, 2, NULL, 0)
INSERT [dbo].[Schedules] ([ID], [DayID], [From], [To], [CourseID], [RoomID], [TrainerID], [Description], [Status]) VALUES (8, 5, N'kfjfj', N'jdjdjd', 1, 1, 4, N'ekjdkdfkj', 1)
SET IDENTITY_INSERT [dbo].[Schedules] OFF
SET IDENTITY_INSERT [dbo].[Trainers] ON 

INSERT [dbo].[Trainers] ([ID], [Name], [Status]) VALUES (2, N'Alex Krasnov	', 1)
INSERT [dbo].[Trainers] ([ID], [Name], [Status]) VALUES (3, N'Alexande Bergunov		
', 1)
INSERT [dbo].[Trainers] ([ID], [Name], [Status]) VALUES (4, N'Amanda Bale		
', 1)
INSERT [dbo].[Trainers] ([ID], [Name], [Status]) VALUES (5, N'Rachel Adams		
', 1)
INSERT [dbo].[Trainers] ([ID], [Name], [Status]) VALUES (6, N'Rachel Adams		
', 1)
INSERT [dbo].[Trainers] ([ID], [Name], [Status]) VALUES (7, N'thht', 0)
INSERT [dbo].[Trainers] ([ID], [Name], [Status]) VALUES (8, NULL, 0)
SET IDENTITY_INSERT [dbo].[Trainers] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Image], [UserName], [Email], [ContactNumber], [Gender], [Adress], [City], [PinCode], [Country], [Status]) VALUES (1, NULL, N'Bella', N'gankunding@hotmail.com	', N'(999) 999-9999	', NULL, NULL, NULL, NULL, NULL, N'Approved')
INSERT [dbo].[Users] ([ID], [Image], [UserName], [Email], [ContactNumber], [Gender], [Adress], [City], [PinCode], [Country], [Status]) VALUES (2, NULL, N'Gavin', N'Gavin@test.com	', N'+1-333-333-333	', NULL, NULL, NULL, NULL, NULL, N'Approved')
INSERT [dbo].[Users] ([ID], [Image], [UserName], [Email], [ContactNumber], [Gender], [Adress], [City], [PinCode], [Country], [Status]) VALUES (3, NULL, N'JacobThornton', N'JacobThornton@test.com	', N'+1-555-555-555	', NULL, NULL, NULL, NULL, NULL, N'Pending')
INSERT [dbo].[Users] ([ID], [Image], [UserName], [Email], [ContactNumber], [Gender], [Adress], [City], [PinCode], [Country], [Status]) VALUES (4, NULL, N'Markotto', N'Markotto@test.com	', N'+1-999-999-999	', NULL, NULL, NULL, NULL, NULL, N'Approved')
INSERT [dbo].[Users] ([ID], [Image], [UserName], [Email], [ContactNumber], [Gender], [Adress], [City], [PinCode], [Country], [Status]) VALUES (5, NULL, N'Sonya', N'Sonya@test.com	', N'+1-444-444-444	', NULL, NULL, NULL, NULL, NULL, N'Blocked')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [IX_CourseID]    Script Date: 7/9/2019 20:24:28 ******/
CREATE NONCLUSTERED INDEX [IX_CourseID] ON [dbo].[Payments]
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainerID]    Script Date: 7/9/2019 20:24:28 ******/
CREATE NONCLUSTERED INDEX [IX_TrainerID] ON [dbo].[Payments]
(
	[TrainerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserID]    Script Date: 7/9/2019 20:24:28 ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[Payments]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseID]    Script Date: 7/9/2019 20:24:28 ******/
CREATE NONCLUSTERED INDEX [IX_CourseID] ON [dbo].[Schedules]
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DayID]    Script Date: 7/9/2019 20:24:28 ******/
CREATE NONCLUSTERED INDEX [IX_DayID] ON [dbo].[Schedules]
(
	[DayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoomID]    Script Date: 7/9/2019 20:24:28 ******/
CREATE NONCLUSTERED INDEX [IX_RoomID] ON [dbo].[Schedules]
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainerID]    Script Date: 7/9/2019 20:24:28 ******/
CREATE NONCLUSTERED INDEX [IX_TrainerID] ON [dbo].[Schedules]
(
	[TrainerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Packages] ADD  CONSTRAINT [DF_Packages_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Payments] ADD  CONSTRAINT [DF_Payments_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Rooms] ADD  CONSTRAINT [DF_Rooms_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Schedules] ADD  CONSTRAINT [DF_Schedules_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Trainers] ADD  CONSTRAINT [DF_Trainers_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Payments_dbo.Courses_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_dbo.Payments_dbo.Courses_CourseID]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Payments_dbo.Trainers_TrainerID] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_dbo.Payments_dbo.Trainers_TrainerID]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Payments_dbo.Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_dbo.Payments_dbo.Users_UserID]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Schedules_dbo.Courses_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_dbo.Schedules_dbo.Courses_CourseID]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Schedules_dbo.Days_DayID] FOREIGN KEY([DayID])
REFERENCES [dbo].[Days] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_dbo.Schedules_dbo.Days_DayID]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Schedules_dbo.Rooms_RoomID] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_dbo.Schedules_dbo.Rooms_RoomID]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Schedules_dbo.Trainers_TrainerID] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_dbo.Schedules_dbo.Trainers_TrainerID]
GO
USE [master]
GO
ALTER DATABASE [AdminConnect] SET  READ_WRITE 
GO
