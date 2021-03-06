USE [master]
GO
/****** Object:  Database [UMS]    Script Date: 09-Nov-16 4:17:28 AM ******/
CREATE DATABASE [UMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\UMS.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\UMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UMS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [UMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UMS] SET  MULTI_USER 
GO
ALTER DATABASE [UMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [UMS] SET DELAYED_DURABILITY = DISABLED 
GO
USE [UMS]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 09-Nov-16 4:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [varchar](20) NOT NULL,
	[JoiningDate] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 09-Nov-16 4:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Faculty](
	[Id] [varchar](20) NOT NULL,
	[JoiningDate] [varchar](20) NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[Position] [varchar](50) NOT NULL,
	[School] [varchar](50) NOT NULL,
	[College] [varchar](50) NOT NULL,
	[Undergraduate] [varchar](50) NOT NULL,
	[Postgraduate] [varchar](50) NOT NULL,
	[PHD] [varchar](50) NULL,
	[SchoolPassingYear] [varchar](10) NOT NULL,
	[CollegePassingYear] [varchar](10) NOT NULL,
	[UndergraduatePassingYear] [varchar](10) NOT NULL,
	[PostgraduatePassingYear] [varchar](10) NOT NULL,
	[PHDPassingYear] [varchar](10) NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Information]    Script Date: 09-Nov-16 4:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Information](
	[Id] [varchar](20) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[DOB] [varchar](50) NOT NULL,
	[BloodGroup] [varchar](10) NOT NULL,
	[Nationality] [varchar](20) NOT NULL,
	[Religion] [varchar](20) NOT NULL,
	[MaritalStatus] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Information] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 09-Nov-16 4:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule](
	[Id] [varchar](20) NOT NULL,
	[CourseName] [varchar](100) NOT NULL,
	[Timing] [varchar](200) NOT NULL,
	[Faculty] [varchar](50) NOT NULL,
	[Room] [varchar](10) NOT NULL,
	[Semester] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 09-Nov-16 4:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [varchar](20) NOT NULL,
	[FathersName] [varchar](50) NOT NULL,
	[MothersName] [varchar](50) NOT NULL,
	[GuardianPhone] [varchar](15) NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[Semester] [varchar](50) NOT NULL,
	[AdmissionDate] [varchar](50) NOT NULL,
	[School] [varchar](50) NOT NULL,
	[College] [varchar](50) NOT NULL,
	[SchoolPassingYear] [varchar](10) NOT NULL,
	[CollegePassingYear] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09-Nov-16 4:17:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([Id], [JoiningDate]) VALUES (N'111-1111-1', N'2016-11-06')
INSERT [dbo].[Admin] ([Id], [JoiningDate]) VALUES (N'222-2222-2', N'2016-11-06')
INSERT [dbo].[Faculty] ([Id], [JoiningDate], [Department], [Position], [School], [College], [Undergraduate], [Postgraduate], [PHD], [SchoolPassingYear], [CollegePassingYear], [UndergraduatePassingYear], [PostgraduatePassingYear], [PHDPassingYear]) VALUES (N'1111-111-1', N'2014-08-05', N'CSE', N'Senior Lecturer', N'
Rajshahi Govt. Laboratory High School', N'
New Govt. Degree College, Rajshahi.', N'AIUB', N'AIUB', N'', N'2001', N'2003', N'2007', N'2009', N'')
INSERT [dbo].[Faculty] ([Id], [JoiningDate], [Department], [Position], [School], [College], [Undergraduate], [Postgraduate], [PHD], [SchoolPassingYear], [CollegePassingYear], [UndergraduatePassingYear], [PostgraduatePassingYear], [PHDPassingYear]) VALUES (N'1112-111-1', N'2008-11-27', N'CSE', N'Head', N'
Rampura Ekramunnesa Boys School', N'
Notre Dame College.', N'AIUB', N'
Royal Inst. Of Technology, Stockholm.', N'University of Torrento', N'1986', N'1988', N'1999', N'2000', N'2005')
INSERT [dbo].[Faculty] ([Id], [JoiningDate], [Department], [Position], [School], [College], [Undergraduate], [Postgraduate], [PHD], [SchoolPassingYear], [CollegePassingYear], [UndergraduatePassingYear], [PostgraduatePassingYear], [PHDPassingYear]) VALUES (N'1113-111-1', N'2014-11-06', N'CSE', N'Senior Lecturer', N'Ispahani Public School n College', N'Ispahani Public School n College', N'KU', N'AIUB', N'Aus Universiry', N'1999', N'2003', N'2001', N'2010', N'2014')
INSERT [dbo].[Faculty] ([Id], [JoiningDate], [Department], [Position], [School], [College], [Undergraduate], [Postgraduate], [PHD], [SchoolPassingYear], [CollegePassingYear], [UndergraduatePassingYear], [PostgraduatePassingYear], [PHDPassingYear]) VALUES (N'1114-111-1', N'2013-10-06', N'EEE', N'Head(EEE)', N'Faujderhat Cadet School n College', N'Faujderhat Cadet School n College', N'AIUB', N'AIUB', N'Aus Universiry', N'1991', N'1991', N'1991', N'1991', N'2005')
INSERT [dbo].[Faculty] ([Id], [JoiningDate], [Department], [Position], [School], [College], [Undergraduate], [Postgraduate], [PHD], [SchoolPassingYear], [CollegePassingYear], [UndergraduatePassingYear], [PostgraduatePassingYear], [PHDPassingYear]) VALUES (N'1115-111-1', N'2013-09-02', N'EEE', N'Senior Lecturer', N'Ispahani Public School n College', N'Faujderhat Cadet School n College', N'AIUB', N'AIUB', N'Aus Universiry', N'2007', N'1995', N'1998', N'2006', N'2005')
INSERT [dbo].[Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (N'111-1111-1', N'Manas Datta', N'Nikunja 2', N'manas.aiub.cse@gmail.com', N'01751339699', N'Male', N'1994-10-15', N'B+', N'Bangladeshi', N'Hindu', N'Unmarried')
INSERT [dbo].[Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (N'1111-111-1', N'
Md. Al Imran', N'Banani', N'imran@aiub.edu', N'01672919212', N'Male', N'1987-07-03', N'AB+', N'Bangladeshi', N'Muslim', N'Married')
INSERT [dbo].[Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (N'1112-111-1', N'Tabin Hasan', N'dhaka', N'a@a.com', N'+8801162417811', N'Male', N'2007-07-03', N'A+', N'Bangladeshi', N'Muslim', N'Married')
INSERT [dbo].[Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (N'1113-111-1', N'Saiful Azad', N'dhaka', N's@s.com', N'+8801162487812', N'Male', N'1985-10-03', N'A+', N'Bangladeshi', N'Muslim', N'Married')
INSERT [dbo].[Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (N'1114-111-1', N'Konika Saha', N'dhaka', N'k@k.com', N'+8801162787812', N'Male', N'1988-10-06', N'A+', N'Bangladeshi', N'Hindu', N'Married')
INSERT [dbo].[Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (N'1115-111-1', N'Nuzat', N'dhaka', N'a@aaa.com', N'+8801162417812', N'Female', N'2007-09-01', N'A+', N'Bangladeshi', N'Muslim', N'Unmarried')
INSERT [dbo].[Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (N'13-24097-2', N'Anik', N'md', N'ak@ak.com', N'01672911211', N'Male', N'1994-11-06', N'A+', N'Bangladeshi', N'Hindu', N'Unmarried')
INSERT [dbo].[Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (N'13-24164-2', N'Manas Datta', N'Nikunja 2', N'manas.aiub.cse@outlook.com', N'01681999891', N'Male', N'1994-10-15', N'B+', N'Bangladeshi', N'Hindu', N'Ummarried')
INSERT [dbo].[Information] ([Id], [Name], [Address], [Email], [Phone], [Gender], [DOB], [BloodGroup], [Nationality], [Religion], [MaritalStatus]) VALUES (N'222-2222-2', N'Anik Saha', N'Mohammadpur', N'pappubd007@gmail.com', N'01672919211', N'Male', N'1994-07-31', N'A+', N'Bangladeshi', N'Hindu', N'Married')
INSERT [dbo].[Schedule] ([Id], [CourseName], [Timing], [Faculty], [Room], [Semester]) VALUES (N'CSC0001', N'Database', N'Sun 
8:00 AM 
10:00 AM  Tue 8.00AM-11.00AM', N'1111-111-1', N'222 & CL2', N'2nd')
INSERT [dbo].[Schedule] ([Id], [CourseName], [Timing], [Faculty], [Room], [Semester]) VALUES (N'CSC0002', N'Algorithm', N'Mon 
12:00 PM 
2:00 PM 
Wed 11.00AM-2.00PM', N'1113-111-1', N'424 & CL4', N'3rd')
INSERT [dbo].[Schedule] ([Id], [CourseName], [Timing], [Faculty], [Room], [Semester]) VALUES (N'CSC0005', N'Data Structure', N'Sun 10:00 AM 12:00 PM Tue 11.00AM-2.00PM', N'1111-111-1', N'222 & CL2', N'6th')
INSERT [dbo].[Schedule] ([Id], [CourseName], [Timing], [Faculty], [Room], [Semester]) VALUES (N'CSC0006', N'Network', N'Sun 10.00AM-12.00PM Tue 
11:00 AM-2:00 PM ', N'1113-111-1', N'433 & CL7', N'4th')
INSERT [dbo].[Schedule] ([Id], [CourseName], [Timing], [Faculty], [Room], [Semester]) VALUES (N'EEE0007', N'Device', N'Sunday 2.00PM-4.00PM 
Tue 
2:00 PM 
5:00 PM ', N'1115-111-1', N'232 & CL6', N'2nd')
INSERT [dbo].[Schedule] ([Id], [CourseName], [Timing], [Faculty], [Room], [Semester]) VALUES (N'ENG0003', N'English', N'Mon 
12:00 PM 
2:00 PM 
Wed 11.00AM-2.00PM ', N'1114-111-1', N'232 & CL6', N'2nd')
INSERT [dbo].[Schedule] ([Id], [CourseName], [Timing], [Faculty], [Room], [Semester]) VALUES (N'MTH0004', N'Math', N'Sun12.00PM-2.00PM Tue 8:00 AM 11:00 AM ', N'1113-111-1', N'241 & CL9', N'1st')
INSERT [dbo].[Student] ([Id], [FathersName], [MothersName], [GuardianPhone], [Department], [Semester], [AdmissionDate], [School], [College], [SchoolPassingYear], [CollegePassingYear]) VALUES (N'13-24097-2', N'Apurba Saha', N'Trishna Saha', N'01618181218', N'CSE', N'1st', N'2016-11-06', N'kzs', N'city college', N'2009', N'2011')
INSERT [dbo].[Student] ([Id], [FathersName], [MothersName], [GuardianPhone], [Department], [Semester], [AdmissionDate], [School], [College], [SchoolPassingYear], [CollegePassingYear]) VALUES (N'13-24164-2', N'Malaya Datta', N'Chanchala Datta', N'01710929175', N'EEE', N'2nd', N'2016-10-06', N'Faridpur Boys School', N'Faridpur Boys College', N'2010', N'2012')
INSERT [dbo].[Users] ([Id], [Password]) VALUES (N'111-1111-1', N'123')
INSERT [dbo].[Users] ([Id], [Password]) VALUES (N'1111-111-1', N'1234')
INSERT [dbo].[Users] ([Id], [Password]) VALUES (N'1112-111-1', N'tabin')
INSERT [dbo].[Users] ([Id], [Password]) VALUES (N'1113-111-1', N'saiful')
INSERT [dbo].[Users] ([Id], [Password]) VALUES (N'1114-111-1', N'konika')
INSERT [dbo].[Users] ([Id], [Password]) VALUES (N'1115-111-1', N'nuzat')
INSERT [dbo].[Users] ([Id], [Password]) VALUES (N'13-24097-2', N'anik')
INSERT [dbo].[Users] ([Id], [Password]) VALUES (N'13-24164-2', N'manas')
INSERT [dbo].[Users] ([Id], [Password]) VALUES (N'222-2222-2', N'2222')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_Email]    Script Date: 09-Nov-16 4:17:28 AM ******/
ALTER TABLE [dbo].[Information] ADD  CONSTRAINT [UK_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_Phone]    Script Date: 09-Nov-16 4:17:28 AM ******/
ALTER TABLE [dbo].[Information] ADD  CONSTRAINT [UK_Phone] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [UMS] SET  READ_WRITE 
GO
