USE [master]
GO
/****** Object:  Database [Ey_Academy]    Script Date: 26/08/2020 00:35:04 ******/
CREATE DATABASE [Ey_Academy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ey_Academy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ey_Academy.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ey_Academy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ey_Academy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Ey_Academy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ey_Academy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ey_Academy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ey_Academy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ey_Academy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ey_Academy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ey_Academy] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ey_Academy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ey_Academy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ey_Academy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ey_Academy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ey_Academy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ey_Academy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ey_Academy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ey_Academy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ey_Academy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ey_Academy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Ey_Academy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ey_Academy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ey_Academy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ey_Academy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ey_Academy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ey_Academy] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Ey_Academy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ey_Academy] SET RECOVERY FULL 
GO
ALTER DATABASE [Ey_Academy] SET  MULTI_USER 
GO
ALTER DATABASE [Ey_Academy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ey_Academy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ey_Academy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ey_Academy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ey_Academy] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ey_Academy', N'ON'
GO
ALTER DATABASE [Ey_Academy] SET QUERY_STORE = OFF
GO
USE [Ey_Academy]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26/08/2020 00:35:05 ******/
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
/****** Object:  Table [dbo].[Answers]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[Id] [uniqueidentifier] NOT NULL,
	[AnswerChoice] [nvarchar](max) NULL,
	[QuestionId] [uniqueidentifier] NOT NULL,
	[FeedbackId] [uniqueidentifier] NOT NULL,
	[Cheked] [bit] NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 26/08/2020 00:35:05 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 26/08/2020 00:35:05 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 26/08/2020 00:35:05 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 26/08/2020 00:35:05 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 26/08/2020 00:35:05 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 26/08/2020 00:35:05 ******/
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
	[Name] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[idImage] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 26/08/2020 00:35:05 ******/
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
/****** Object:  Table [dbo].[CAMarks]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMarks](
	[Id] [uniqueidentifier] NOT NULL,
	[CAId] [uniqueidentifier] NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[NoteCA] [nvarchar](max) NULL,
	[ConsultantNoteId] [nvarchar](max) NULL,
 CONSTRAINT [PK_CAMarks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[CategoryTitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CriterionFA]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriterionFA](
	[Id] [uniqueidentifier] NOT NULL,
	[CriterionField] [nvarchar](max) NULL,
	[Mark] [int] NOT NULL,
	[ThemeFAId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CriterionFA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CriterionJA]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriterionJA](
	[Id] [uniqueidentifier] NOT NULL,
	[CriterionField] [nvarchar](max) NULL,
	[Mark] [int] NOT NULL,
	[ThemeJAId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CriterionJA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[TrainingId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAMarks]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAMarks](
	[Id] [uniqueidentifier] NOT NULL,
	[FAId] [uniqueidentifier] NULL,
	[CriterionId] [uniqueidentifier] NOT NULL,
	[comment] [nvarchar](max) NULL,
	[NoteFA] [nvarchar](max) NULL,
 CONSTRAINT [PK_FAMarks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[TrainingId] [uniqueidentifier] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackSections]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackSections](
	[FeedbackId] [uniqueidentifier] NOT NULL,
	[SectionId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FeedbackSections] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC,
	[SectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormerAssessments]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormerAssessments](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[GroupTrainingId] [uniqueidentifier] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[TFAId] [uniqueidentifier] NOT NULL,
	[consultantName] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
 CONSTRAINT [PK_FormerAssessments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupByTrainings]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupByTrainings](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupId] [uniqueidentifier] NOT NULL,
	[TrainingId] [uniqueidentifier] NOT NULL,
	[status] [nvarchar](max) NULL,
	[code] [nvarchar](max) NULL,
	[endEvalDate] [datetime2](7) NOT NULL,
	[startEvalDate] [datetime2](7) NOT NULL,
	[location] [nvarchar](max) NULL,
 CONSTRAINT [PK_GroupByTrainings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupConsultants]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupConsultants](
	[GroupId] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_GroupConsultants] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupPlanings]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupPlanings](
	[GroupId] [uniqueidentifier] NOT NULL,
	[PlaningId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_GroupPlanings] PRIMARY KEY CLUSTERED 
(
	[PlaningId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[FileType] [nvarchar](max) NULL,
	[DataFiles] [varbinary](max) NULL,
	[CreatedOn] [datetime2](7) NULL,
	[idUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JuryAssessments]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JuryAssessments](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[GroupTrainingId] [uniqueidentifier] NOT NULL,
	[TJAId] [uniqueidentifier] NOT NULL,
	[consultantName] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
 CONSTRAINT [PK_JuryAssessments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LFormerAssigned]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LFormerAssigned](
	[UserId] [nvarchar](450) NOT NULL,
	[TrainingId] [uniqueidentifier] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LFormerAssigned] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[TrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LJuriesAssigned]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LJuriesAssigned](
	[UserId] [nvarchar](450) NOT NULL,
	[TrainingId] [uniqueidentifier] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LJuriesAssigned] PRIMARY KEY CLUSTERED 
(
	[TrainingId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[Id] [uniqueidentifier] NOT NULL,
	[JAId] [uniqueidentifier] NULL,
	[CriterionId] [uniqueidentifier] NOT NULL,
	[CriterionJAId] [uniqueidentifier] NULL,
	[comment] [nvarchar](max) NULL,
	[NoteJA] [nvarchar](max) NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plannings]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plannings](
	[Id] [uniqueidentifier] NOT NULL,
	[TrainingId] [uniqueidentifier] NOT NULL,
	[QRCode] [int] NOT NULL,
	[Location] [nvarchar](max) NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[FormerId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Plannings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presences]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presences](
	[Id] [uniqueidentifier] NOT NULL,
	[DatePresence] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[PlanningId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Presences] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [uniqueidentifier] NOT NULL,
	[QuestonField] [nvarchar](max) NULL,
	[IdSection] [uniqueidentifier] NOT NULL,
	[QuestonNumber] [int] NOT NULL,
	[type] [nvarchar](max) NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sections]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sections](
	[Id] [uniqueidentifier] NOT NULL,
	[SectionField] [nvarchar](max) NULL,
	[SectionType] [int] NOT NULL,
 CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelfandPeerAssessments]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelfandPeerAssessments](
	[SelfandPeerAssessmentId] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[GroupTrainingId] [uniqueidentifier] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[TCAId] [uniqueidentifier] NOT NULL,
	[status] [nvarchar](max) NULL,
 CONSTRAINT [PK_SelfandPeerAssessments] PRIMARY KEY CLUSTERED 
(
	[SelfandPeerAssessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCACategories]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCACategories](
	[TCAId] [uniqueidentifier] NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TCACategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[TCAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateConsultantAssessments]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateConsultantAssessments](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_TemplateConsultantAssessments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateFormerAssessments]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateFormerAssessments](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_TemplateFormerAssessments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateJuryAssessments]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateJuryAssessments](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_TemplateJuryAssessments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TFAThemes]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TFAThemes](
	[TFAId] [uniqueidentifier] NOT NULL,
	[ThemeFId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TFAThemes] PRIMARY KEY CLUSTERED 
(
	[ThemeFId] ASC,
	[TFAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeFA]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeFA](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThemeFA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeJA]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeJA](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThemeJA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TJAThemes]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TJAThemes](
	[TJAId] [uniqueidentifier] NOT NULL,
	[JThemeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TJAThemes] PRIMARY KEY CLUSTERED 
(
	[TJAId] ASC,
	[JThemeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainings]    Script Date: 26/08/2020 00:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainings](
	[Id] [uniqueidentifier] NOT NULL,
	[TrainingDate] [datetime2](7) NOT NULL,
	[TrainingName] [nvarchar](max) NULL,
	[duration] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[EndDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Trainings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200713120838_first', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200714082137_second', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200714082733_seconkkd', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200714091246_sed', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200715111726_sled', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200716133031_msed', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200720093934_mll', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200721115526_mllll', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200722125232_mlmmmlll', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200728110219_mmmmmmllll', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200819102827_final', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200819103219_finllal', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200819105613_finlPlal', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200819161308_finlPlammml', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200819162019_llll', N'3.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200819171615_llmmmll', N'3.0.1')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b65840b9-c745-465b-9ef8-7b536bc5627a', N'consultant', N'Consultant', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b65840b9-c745-465b-9ef8-7b536bc5627b', N'trainer', N'Trainer', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b65840b9-c745-465b-9ef8-7b536bc5627c', N'jury', N'Jury', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5336787f-349e-4c71-815a-e9c1090a14bd', N'b65840b9-c745-465b-9ef8-7b536bc5627a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'969630fa-a02a-4ee5-b471-65ce9a837416', N'b65840b9-c745-465b-9ef8-7b536bc5627a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06', N'b65840b9-c745-465b-9ef8-7b536bc5627a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4', N'b65840b9-c745-465b-9ef8-7b536bc5627a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bda78790-e1ff-42eb-9db1-a93298c6866d', N'b65840b9-c745-465b-9ef8-7b536bc5627a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd33ae2d8-599c-4d3a-884f-b61badc9c77b', N'b65840b9-c745-465b-9ef8-7b536bc5627a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', N'b65840b9-c745-465b-9ef8-7b536bc5627b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'617bb4b2-a41f-425a-8b42-7e2c176600b4', N'b65840b9-c745-465b-9ef8-7b536bc5627c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [LastName], [DisplayName], [idImage]) VALUES (N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', N'fatma', N'FATMA', N'fatma@test.com', N'FATMA@TEST.COM', 0, N'AQAAAAEAACcQAAAAEBFMh5dBONU+SxadetHxpmKSGocpXDKqFP6jqBYUivYYiwmhtNtsv/cDMa5D7yg9QA==', N'CCPPLTFUXHREVFAIAELFOEQXDTAYLIDM', N'189409a1-7dda-4e39-a5dd-9eda790ce3dc', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Fatma', N'94104fbb-0a02-498b-4715-08d8494744ea')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [LastName], [DisplayName], [idImage]) VALUES (N'5336787f-349e-4c71-815a-e9c1090a14bd', N'nawress', N'NAWRESS', N'nawress@test.com', N'NAWRESS@TEST.COM', 0, N'AQAAAAEAACcQAAAAEHiCLHOvT6xcMyyafW1ZTsnK7R7P3rPRRGiCcmP+l2F7Dr/+9QOu+ucoy8kSwd7/+w==', N'CATCBI6ZDP6SI5TSRMXTVA7Z2EJDC6UB', N'56d57873-7a84-4600-b31b-ab8726c80d1e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Nawress', N'dbb3dd37-3990-4e24-4717-08d8494744ea')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [LastName], [DisplayName], [idImage]) VALUES (N'617bb4b2-a41f-425a-8b42-7e2c176600b4', N'zeineb', N'ZEINEB', N'zeineb@test.com', N'ZEINEB@TEST.COM', 0, N'AQAAAAEAACcQAAAAEJ9pDOnF/3Xi2FzKjVTMtvq8HUNNnXU9sCZBOXGFI04KCK8Ty8OBpTUesPiRobhg8w==', N'QYEZOEE5QOODCSHGY34OA7MNWGE2HPVX', N'2a95342a-c893-4281-b7bd-8d673ad43103', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Zeineb', N'b17c64fd-c07e-4ab1-3f9c-08d849467e19')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [LastName], [DisplayName], [idImage]) VALUES (N'969630fa-a02a-4ee5-b471-65ce9a837416', N'malek', N'MALEK', N'malek@test.com', N'MALEK@TEST.COM', 0, N'AQAAAAEAACcQAAAAEOgWJzxM9Vkv+hsU3Jp8M/NMfTdow3GsflEubc+cVP4J0IqZjQR/vjEh1/XHSxgprg==', N'5FZ2PNUVMYH33T56TEIIKMIGSQKWRIHJ', N'c7ff8928-5da5-449f-b9c3-a88c627c0ce6', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Malek', N'90a99b92-48be-4784-4716-08d8494744ea')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [LastName], [DisplayName], [idImage]) VALUES (N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06', N'tom', N'TOM', N'tom@test.com', N'TOM@TEST.COM', 0, N'AQAAAAEAACcQAAAAENDyVErS2Tc3SmbAklIxukcldSLIRa+uW7SVqyX9tQzeNmiCxM/jQkxks1E4hN/QJg==', N'DTJXLKZWGPTOWET7EDB23VJNU3R742OW', N'2928db7e-320a-4540-9899-29698fe4b8b9', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Tom', N'c01f46ed-c2c5-4e16-4719-08d8494744ea')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [LastName], [DisplayName], [idImage]) VALUES (N'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4', N'bob', N'BOB', N'bob@test.com', N'BOB@TEST.COM', 0, N'AQAAAAEAACcQAAAAECv0JQPITgdxIk2fYCtWM5KL4k84IcP8OfK3h6LJVDvey/wze4CLYn5rnqFjaoG3fA==', N'35B5HUOJWM3U4KMIR3RO5VH3XTXOJPBX', N'd0aeb924-e901-4218-83cd-78b06e7291b7', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Bob', N'4f043eed-4dc5-4770-4713-08d8494744ea')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [LastName], [DisplayName], [idImage]) VALUES (N'bda78790-e1ff-42eb-9db1-a93298c6866d', N'fahd', N'FAHD', N'fahd@test.com', N'FAHD@TEST.COM', 0, N'AQAAAAEAACcQAAAAEE6tPxsFCbFKWer8xII85Z2JsUZ1JGju6XZj5MCqADzNjwXjfWyKwMkzWOAdSdy1sQ==', N'TLTSW4FM475JLFTIYNNBFX5RFKDX3QMP', N'de36dab4-5bda-4728-a82a-069ea09670ad', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Fahd', N'bb0271fe-a0b9-45a4-4714-08d8494744ea')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [LastName], [DisplayName], [idImage]) VALUES (N'd33ae2d8-599c-4d3a-884f-b61badc9c77b', N'oumayma', N'OUMAYMA', N'oumayma@test.com', N'OUMAYMA@TEST.COM', 0, N'AQAAAAEAACcQAAAAEKFSQm5kSIv6G8c3kzfgedUQqmKyG01MSpmddKKKMdR+LFsfM4w6TrDndOQcfR3vDA==', N'KGS3PFUV34MLSUVRJBOBHILQIPATUYUK', N'2b5ef5b1-334b-4298-9219-0e4bbb10f9dd', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Oumayma', N'362e4c88-97b8-4bb2-4718-08d8494744ea')
GO
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'f3103738-3774-4ffb-8813-0b2a0a2545e7', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097672', N'4', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'e09cf3e5-0152-4ae1-b931-0b5c1eb2ef1c', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097674', N'4', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'e1074cdd-c344-4d08-9e21-11ae74ba4f05', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097676', N'4', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'1c9f3e99-195b-465d-ade6-1329e210dd5e', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097676', N'3', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'd4050718-bbec-4987-b091-2b9b9e0b2daa', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097673', N'0', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'6f8137c8-330f-4393-82bb-38677a924e56', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097673', N'3', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'1b87ff2e-b8d4-42ad-aed3-3f41e69fd8f8', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097674', N'0', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'cfc66687-d60c-423a-b10f-5bd923122971', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097676', N'1', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'f3ab61bb-a699-4f40-adf9-74fc12442f78', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097674', N'1', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'4fc04ac3-9b2e-4311-bfcd-81ad7f0d7e47', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097675', N'4', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'31b320c0-d6a5-443d-a93c-9a12642089ed', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097673', N'1', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'ef4fcbcb-477c-42b9-a97a-a6902490af66', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097673', N'4', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'99bc2aff-edda-4628-ae83-bb17b8b6aa2a', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097675', N'0', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'4d26c64a-aab9-492f-a353-c01912ff6474', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097672', N'1', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'802e1527-79c7-431f-ad54-c753f347fd63', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097672', N'4', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'e0a9ed42-837a-4e5f-be79-c971a73983b0', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097675', N'1', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'9138e1a9-394e-43eb-91c5-cc43292f54cb', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097675', N'0', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'f347ec02-9a95-4dce-900c-f8765dc453ec', N'738e4819-ad4e-4838-9892-644cfb30fb09', N'b8d2a485-d3ef-4a09-8f1f-751ccd097672', N'4', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'd10f229f-6b19-450f-84c9-fb9fd1fb259a', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097674', N'0', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[CAMarks] ([Id], [CAId], [CategoryId], [NoteCA], [ConsultantNoteId]) VALUES (N'34b16d23-a090-4299-be82-fc7e88ff68e9', N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'b8d2a485-d3ef-4a09-8f1f-751ccd097676', N'0', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
GO
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryTitle]) VALUES (N'b8d2a485-d3ef-4a09-8f1f-751ccd097672', N'Attends meetings regularly and on time', N'Group Participation')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryTitle]) VALUES (N'b8d2a485-d3ef-4a09-8f1f-751ccd097673', N'Accepts fair share of work and reliably completes it by the required time.', N'Time Management & Responsibility')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryTitle]) VALUES (N'b8d2a485-d3ef-4a09-8f1f-751ccd097674', N'Displays or tries to develop a wide range of skills in service of the project, readily accepts changed approach or constructive criticism.', N'Adaptability')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryTitle]) VALUES (N'b8d2a485-d3ef-4a09-8f1f-751ccd097675', N'Problem-solves when faced with impasses or challenges, originates new ideas, initiates team decisions.', N'Creativity/Originality')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryTitle]) VALUES (N'b8d2a485-d3ef-4a09-8f1f-751ccd097676', N'Positive attitude, encourages and motivates team, supports team decisions, helps team reach consensus, helps resolve conflicts in the group.', N'General Team Skills')
GO
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d216', N'Assiduity and Punctuality', 5, N'1473186f-a2b9-4887-8122-771cfcb6d276')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d217', N'Understanding of the problematics and stakes', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d218', N'Mastery of technical skills', 5, N'1473186f-a2b9-4887-8122-771cfcb6d2a8')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d226', N'Motivation and dynamism during training', 5, N'1473186f-a2b9-4887-8122-771cfcb6d276')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d227', N'Presentation structure', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d228', N'Responsiveness and analytical skills', 5, N'1473186f-a2b9-4887-8122-771cfcb6d2a8')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d236', N'Integration into the team and teamwork', 5, N'1473186f-a2b9-4887-8122-771cfcb6d276')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d237', N'Clarity and relevance of the message', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d238', N'Stress management', 5, N'1473186f-a2b9-4887-8122-771cfcb6d2a8')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d247', N'Time management', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d257', N'Oral communication fluency', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d267', N'Achieving training objectives', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionFA] ([Id], [CriterionField], [Mark], [ThemeFAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d2b9', N'General appreciation', 5, N'1473186f-a2b9-4887-8122-771cfcb6d2a9')
GO
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d217', N'Understanding of the problematics and stakes', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d218', N'Mastery of technical skills', 5, N'1473186f-a2b9-4887-8122-771cfcb6d2a8')
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d227', N'Presentation structure', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d228', N'Responsiveness and analytical skills', 5, N'1473186f-a2b9-4887-8122-771cfcb6d2a8')
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d237', N'Clarity and relevance of the message', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d238', N'Stress management', 5, N'1473186f-a2b9-4887-8122-771cfcb6d2a8')
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d247', N'Time management', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d257', N'Oral communication fluency', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d267', N'Achieving training objectives', 5, N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[CriterionJA] ([Id], [CriterionField], [Mark], [ThemeJAId]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d2b9', N'General appreciation', 5, N'1473186f-a2b9-4887-8122-771cfcb6d2a9')
GO
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'ea4c5f9a-4e4e-469b-abf2-045aace2e175', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d247', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'43948cba-e435-4b85-8be7-17ae83484c4a', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d216', N'', N'4')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'f91fe888-2841-4f17-8c62-21e7facd9549', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d226', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'ea793944-2b29-424c-8c14-2aec84cc53c1', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d228', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'53187bc0-7d7f-41ec-b032-31a30ba58063', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d227', N'', N'2')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'070e7245-e90e-4614-97c5-3c52f9f83767', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d257', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'9344ec6e-ed15-4b55-a9a4-51e009023e5a', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d237', N'', N'2')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'2622c73d-2dfa-4aae-82b9-5634b7a02204', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d226', N'', N'2')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'b7bf609d-40df-491f-8bb2-56aec097ca92', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d267', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'9e112fc5-7bc6-4cc2-b379-6ee419d3760a', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d216', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'd1a9fd07-9bc4-4269-bf7e-832105b60f3b', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d2b9', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'cd8120ac-f4e1-410a-8627-8edc36b6afae', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d217', N'', N'3')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'f96a3e7c-b6b3-4a60-b267-8f15d2af2749', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d227', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'c16f6bdf-1df1-4a6f-9106-9cd726700c41', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d247', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'cec577bf-a5d5-41e5-887e-9ff2227fc0e4', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d228', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'08461fed-b1f4-408b-8766-a9e30b14e74d', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d217', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'45b73b72-991e-4202-aa06-adb6da8afcc5', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d218', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'996068bb-2948-4367-9f10-bbc7078b671b', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d267', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'8acbe438-3c3d-4dcd-83d3-bcb854603970', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d236', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'ea0eaed5-b1a5-4287-91ec-bed49b1b3b91', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d237', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'aab4d9d2-9933-4d43-abd4-c07d5583a5cd', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d238', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'2c1856f4-dec0-4b62-9ee1-db359e49e14c', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d238', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'73032dae-b43c-4ee3-a5e7-df95ca4d1b55', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d236', N'', N'3')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'580ac3ac-a7a2-4dae-92cf-e835965298ae', N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'1473186f-a2b9-4887-8122-771cfcb6d257', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'fc456b2f-6bce-4c4a-98f9-ec3098b133a7', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d2b9', N'', N'0')
INSERT [dbo].[FAMarks] ([Id], [FAId], [CriterionId], [comment], [NoteFA]) VALUES (N'd391965d-8ca3-4e17-a3d8-fa4351e7d556', N'4960b718-faa7-495d-a954-b229bc197d13', N'1473186f-a2b9-4887-8122-771cfcb6d218', N'', N'0')
GO
INSERT [dbo].[FormerAssessments] ([Id], [UserId], [GroupTrainingId], [Date], [TFAId], [consultantName], [Comment], [status]) VALUES (N'fe3d09e0-bc96-4541-bcb7-8df7fae9d20b', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', N'50f33216-51db-446d-abb7-3c015d7aab0c', CAST(N'2020-07-30T09:21:15.9336628' AS DateTime2), N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'Malek', N'', NULL)
INSERT [dbo].[FormerAssessments] ([Id], [UserId], [GroupTrainingId], [Date], [TFAId], [consultantName], [Comment], [status]) VALUES (N'4960b718-faa7-495d-a954-b229bc197d13', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', N'50f33216-51db-446d-abb7-3c015d7aab0b', CAST(N'2020-08-10T12:28:42.1115650' AS DateTime2), N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'Nawress', N'', NULL)
GO
INSERT [dbo].[GroupByTrainings] ([Id], [GroupId], [TrainingId], [status], [code], [endEvalDate], [startEvalDate], [location]) VALUES (N'50f33216-51db-446d-abb7-3c015d7aab01', N'9e727b1c-6e06-4dd9-bb12-558199158659', N'a5b90560-5365-422f-830c-3ed64e8af1d3', NULL, N'111', CAST(N'2020-08-01T18:00:00.0000000' AS DateTime2), CAST(N'2020-08-01T08:00:00.0000000' AS DateTime2), N'salle 1')
INSERT [dbo].[GroupByTrainings] ([Id], [GroupId], [TrainingId], [status], [code], [endEvalDate], [startEvalDate], [location]) VALUES (N'50f33216-51db-446d-abb7-3c015d7aab02', N'9e727b1c-6e06-4dd9-bb12-558199158656', N'a5b90560-5365-422f-830c-3ed64e8af1d4', NULL, N'222', CAST(N'2020-08-05T18:00:00.0000000' AS DateTime2), CAST(N'2020-08-05T08:00:00.0000000' AS DateTime2), N'salle 2')
INSERT [dbo].[GroupByTrainings] ([Id], [GroupId], [TrainingId], [status], [code], [endEvalDate], [startEvalDate], [location]) VALUES (N'50f33216-51db-446d-abb7-3c015d7aab03', N'9e727b1c-6e06-4dd9-bb12-558199158657', N'a5b90560-5365-422f-830c-3ed64e8af1d4', NULL, N'333', CAST(N'2020-08-15T18:00:00.0000000' AS DateTime2), CAST(N'2020-08-15T08:00:00.0000000' AS DateTime2), N'salle 3')
INSERT [dbo].[GroupByTrainings] ([Id], [GroupId], [TrainingId], [status], [code], [endEvalDate], [startEvalDate], [location]) VALUES (N'50f33216-51db-446d-abb7-3c015d7aab04', N'9e727b1c-6e06-4dd9-bb12-558199158658', N'a5b90560-5365-422f-830c-3ed64e8af1d4', NULL, N'444', CAST(N'2020-08-29T18:00:00.0000000' AS DateTime2), CAST(N'2020-08-29T08:00:00.0000000' AS DateTime2), N'salle 4')
INSERT [dbo].[GroupByTrainings] ([Id], [GroupId], [TrainingId], [status], [code], [endEvalDate], [startEvalDate], [location]) VALUES (N'50f33216-51db-446d-abb7-3c015d7aab0b', N'9e727b1c-6e06-4dd9-bb12-558199158651', N'a5b90560-5365-422f-830c-3ed64e8af1d2', NULL, N'555', CAST(N'2020-08-29T18:00:00.0000000' AS DateTime2), CAST(N'2020-08-29T08:00:00.0000000' AS DateTime2), N'salle 5')
INSERT [dbo].[GroupByTrainings] ([Id], [GroupId], [TrainingId], [status], [code], [endEvalDate], [startEvalDate], [location]) VALUES (N'50f33216-51db-446d-abb7-3c015d7aab0c', N'9e727b1c-6e06-4dd9-bb12-558199158652', N'a5b90560-5365-422f-830c-3ed64e8af1d2', NULL, N'666', CAST(N'2020-08-30T18:00:00.0000000' AS DateTime2), CAST(N'2020-08-30T08:00:00.0000000' AS DateTime2), N'salle 6')
INSERT [dbo].[GroupByTrainings] ([Id], [GroupId], [TrainingId], [status], [code], [endEvalDate], [startEvalDate], [location]) VALUES (N'50f33216-51db-446d-abb7-3c015d7aab0d', N'9e727b1c-6e06-4dd9-bb12-558199158653', N'a5b90560-5365-422f-830c-3ed64e8af1d2', NULL, N'777', CAST(N'2020-08-30T18:00:00.0000000' AS DateTime2), CAST(N'2020-08-30T08:00:00.0000000' AS DateTime2), N'salle 7')
INSERT [dbo].[GroupByTrainings] ([Id], [GroupId], [TrainingId], [status], [code], [endEvalDate], [startEvalDate], [location]) VALUES (N'50f33216-51db-446d-abb7-3c015d7aab0e', N'9e727b1c-6e06-4dd9-bb12-558199158654', N'a5b90560-5365-422f-830c-3ed64e8af1d3', NULL, N'888', CAST(N'2020-08-31T18:00:00.0000000' AS DateTime2), CAST(N'2020-08-31T08:00:00.0000000' AS DateTime2), N'salle 8')
INSERT [dbo].[GroupByTrainings] ([Id], [GroupId], [TrainingId], [status], [code], [endEvalDate], [startEvalDate], [location]) VALUES (N'50f33216-51db-446d-abb7-3c015d7aab0f', N'9e727b1c-6e06-4dd9-bb12-558199158655', N'a5b90560-5365-422f-830c-3ed64e8af1d3', NULL, N'999', CAST(N'2020-08-31T18:00:00.0000000' AS DateTime2), CAST(N'2020-08-31T08:00:00.0000000' AS DateTime2), N'salle 9')
GO
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158651', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158654', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158656', N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158652', N'969630fa-a02a-4ee5-b471-65ce9a837416')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158655', N'969630fa-a02a-4ee5-b471-65ce9a837416')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158657', N'969630fa-a02a-4ee5-b471-65ce9a837416')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158651', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158654', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158656', N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158652', N'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158655', N'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158657', N'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158653', N'bda78790-e1ff-42eb-9db1-a93298c6866d')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158658', N'bda78790-e1ff-42eb-9db1-a93298c6866d')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158659', N'bda78790-e1ff-42eb-9db1-a93298c6866d')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158653', N'd33ae2d8-599c-4d3a-884f-b61badc9c77b')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158658', N'd33ae2d8-599c-4d3a-884f-b61badc9c77b')
INSERT [dbo].[GroupConsultants] ([GroupId], [UserId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158659', N'd33ae2d8-599c-4d3a-884f-b61badc9c77b')
GO
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158651', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5a3')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158651', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5a5')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158651', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5b3')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158651', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5b5')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158652', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5a3')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158652', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5a4')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158652', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5b3')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158652', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5b4')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158653', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5a4')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158653', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5a5')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158653', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5b4')
INSERT [dbo].[GroupPlanings] ([GroupId], [PlaningId]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158653', N'008d0d05-f98c-4d45-ad08-3fb03b2ff5b5')
GO
INSERT [dbo].[Groups] ([Id], [CreationDate], [Name]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158651', CAST(N'2020-02-02T19:58:47.1234567' AS DateTime2), N'group1_training1')
INSERT [dbo].[Groups] ([Id], [CreationDate], [Name]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158652', CAST(N'2020-02-02T19:58:47.1234567' AS DateTime2), N'group2_training1')
INSERT [dbo].[Groups] ([Id], [CreationDate], [Name]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158653', CAST(N'2020-02-02T19:58:47.1234567' AS DateTime2), N'group3_training1')
INSERT [dbo].[Groups] ([Id], [CreationDate], [Name]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158654', CAST(N'2020-02-02T19:58:47.1234567' AS DateTime2), N'group1_training2')
INSERT [dbo].[Groups] ([Id], [CreationDate], [Name]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158655', CAST(N'2020-02-02T19:58:47.1234567' AS DateTime2), N'group2_training2')
INSERT [dbo].[Groups] ([Id], [CreationDate], [Name]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158656', CAST(N'2020-02-02T19:58:47.1234567' AS DateTime2), N'group1_training3')
INSERT [dbo].[Groups] ([Id], [CreationDate], [Name]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158657', CAST(N'2020-02-02T19:58:47.1234567' AS DateTime2), N'group2_training3')
INSERT [dbo].[Groups] ([Id], [CreationDate], [Name]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158658', CAST(N'2020-02-02T19:58:47.1234567' AS DateTime2), N'group3_training3')
INSERT [dbo].[Groups] ([Id], [CreationDate], [Name]) VALUES (N'9e727b1c-6e06-4dd9-bb12-558199158659', CAST(N'2020-02-02T19:58:47.1234567' AS DateTime2), N'group3_training2')
GO
INSERT [dbo].[Images] ([Id], [Name], [FileType], [DataFiles], [CreatedOn], [idUser]) VALUES (N'b17c64fd-c07e-4ab1-3f9c-08d849467e19', N'zeineb.jpg', N'.jpg', 0xFFD8FFE000104A46494600010101004800480000FFE202A04943435F50524F46494C45000101000002906C636D73043000006D6E74725247422058595A2007DF00010014000800120034616373704150504C0000000000000000000000000000000000000000000000000000F6D6000100000000D32D6C636D7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B64657363000001080000003863707274000001400000004E77747074000001900000001463686164000001A40000002C7258595A000001D0000000146258595A000001E4000000146758595A000001F800000014725452430000020C00000020675452430000022C00000020625452430000024C000000206368726D0000026C000000246D6C756300000000000000010000000C656E55530000001C0000001C00730052004700420020006200750069006C0074002D0069006E00006D6C756300000000000000010000000C656E5553000000320000001C004E006F00200063006F0070007900720069006700680074002C002000750073006500200066007200650065006C00790000000058595A20000000000000F6D6000100000000D32D736633320000000000010C4A000005E3FFFFF32A0000079B0000FD87FFFFFBA2FFFFFDA3000003D80000C09458595A200000000000006F94000038EE0000039058595A20000000000000249D00000F830000B6BE58595A2000000000000062A50000B790000018DE706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B6368726D00000000000300000000A3D70000547B00004CCD0000999A0000266600000F5CFFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080080008003012200021101031101FFC4001C0000010403010000000000000000000000060304050700020801FFC4003B100002010302040305070205050100000001020300041105210612314113516107223281A1142342527191C1B1D115246272F01633344482B2FFC400190100030101010000000000000000000000010203000405FFC40023110002020202010501010000000000000000010211032112413104132232511461FFDA000C03010002110311003F00BF6B315B62B2B028D6B315B5656351AE2B2BDA09E37F68965C2B19B6802DD6A446D1737BB1FABFF6A68C5C9D203692B6194B3C5044D2CD22C71A8CB339000F9D096A7ED378574D254EA22E1C7E1B642FF5E9F5AE7EE23E33D5F8827692FEF649133B44BB22FE83A50BBCE589CE4FEA6BAA3E9E2BECC93C8DF83A225F6E1A0248152C6FD87E6655503EA688343F693C3FAE4EB04572239DBE1473D7F4AE55E73D4AE3D41A7964CDCE00E65CF461D453FF003E37A427B924765452A492395604606E296AE5BD37DA0F1370CBA46974648D08F724F7D597CBCF1FA55F5C13C73A7F19E9C6583EE6EE303C6B72D92BEA0F715CD930CA1BE8B4269E8263FF00903FD9FCD298A4FF00F607FB3F9A52A23998AF6B2B2B04F3359CD4D7C427A1ACF10F9D3502C759ACCD35F10D6B2DC2430BCB2372A2296663D80DC9AD46B0738FB8C1385F48C40CBF6FB804420EE1077723D3B7AD50769A3EABC51712CEA71116264B99C9DC9EBFA9A249E5B8F687C673C8CCCB6ABBE3F2440FBA3F53FDEAC18B4FB7D3ECD2DE08C2220C002BA22F82A5E4551E6ED95941ECE6D79732CD7131F30022FD6BC97802D41F763541EAE58FD0558EC00DA916401B38AD6CAF14566FC0318258BF228F2A6C749B3D3C73AC6EC14FC4DDEACA9A1F1DB90FC3DC7A5426B7A7092DA4C0C74C7FCF9D5232272822B7D6658A708D1A72728C02297E13D7AEB87B5B8351B4389236F7D3F0C8A7A83FA8A6DAADBF80E633DB351B09E43CFBE50EE3CC7FCDEAE9A7A673C953D1D87A5EA96FABDA5B5FDABF3433C21D7D37DC1F50723E5521CC3CEAA0F63DADF8B15C694EF9E55F1A0FD0FC43F7C1F9D5AD938E86BCFC98F84A8BC25C958E79879D6730F3A6D939E95EE69286352597070322BC069A2C85C8CCD8C8CD2B1B02325811E7468162FCD407ED5388974BE1A3611B81717C79081D447F88FCF61FBD1AC92C51A9676C28192735CD5C7FAECDC41C5571E093265BC18546FB7C200F9FF5A68AD99869C00F6DA4709B6AB701CC97F333A85524F22FBABFD09F9D4FC7C4561A8398E19BEF3F2B8C1A4AE351D1B84F47B1D1A69D4DCC16EA9E1C60B31206E70327AE68661BFD23589C5DD8C88648CEF8D88A694F45211D85FCF939276AC69A31B3328FD4D37923922B447EBCC3343F2E9835690C934EC91A6DB311BD229F6CA38847E240E731CA8C4765604D35D4A0692D5C0190CA704543DBF0EE9D1CA0C572E641D097DEA7218678A2F0E47F113B13D455D4A2D5A22D34549C491B24C243D39B7F9D4142C1265C8186F74FFCFA51FF001869BF74EC1762363EB55D2B73A119DF383FDFFA55613E88E4856C34E00D55B45E2BB262FCAAB2F2124F546D883FB835D2E92BC8A5B031DB06B91E2918A457299F110FBD8F4FF86BA5B85B5B5D4B876C6E94F319231CE7C986C7EB52F50AEA4838FF000271CC7FB578AE725794EC719A6CB721885F7811DFCE9689FC461927AD72D1522A1B29DF72A131DD8D6FF669CB1E51EE8EF9EB4EB94B0C163FBD78B128C74ABEC87240EF1578D69C3D7D73CDC9E15BBC9D7C81C5531ECE3483AAF178BA994B456682E189EED9C20FDF7F955CBC496B2EA1A66A96C8011259C8573FED200FA5571EC7E45326B3113EFF002C4C01EA1497FE6B36FB290A6136A9A6C02E66B8B5B50B732E7C49636E576CF5C93D47A50CE85C0D1D9EA2B7290CB085C8C34DCDCC0F518A3ABA2A9212C76A5F4B962B9591D4E421C73636A5FF000E8AA57435BE8C2C0910FC2B8A0DD4AD184A8924EC965CE5E545E61CFF00E9E61BA8A33B960EEC7B66A339E2371C81873775F4A67105B2B6FF00A7E63AD4F7163AA416D0C92168D23762CA3B0F23477A37F8CA4221BE686E02EC264CA923D54F7A9B8ED60039C44BCDE78A50200DB0A0F62A8A5E080E21B41369F282BDB3544CAC61BB71F8798822BA0F5B754B397276E435CFF7D0B99E5930790B100FAD68BA609C743FD3E40CC6327671B6FDEAE8F639AA3B595F69723826DD84D1A93D9B63F502A86B49591863CF6F43565FB3DD405AF17E9D312047780C2FDB723FBD59D4A34417C597D4D348CB190B973D5430016BC7948E55556DFA9CE715EAF2F5C8CD6F85CE76A8F046F718AA24AC8CD2466303A7AD3712B16954E3947C2477DABCB0D696FB08FCBCAD9008A8EBC6974DF1F18243ED9E9834B0E49F1619D35C91A6AF23C1E3B45BFF009660479ED547F03EA034AF69973641B11DCC4D028FF50C32FF00423E75745ECAF35B0798F21922E806C41AE71BD3756BED194DA0FF00322F63F0816C02DCC3033D81E94F20E3745BFABDDCD757E965093CF277F21E752F099F49D3A3B64E436EB19CB7E32C4E734CF53825B4BD37B676E934FCA71196C06C6F8CFF0034B4536ADABE9F1DD41A7A0475CB46D200E87BA91D8D7345DDD9E837697E10B2F10CE87961B4FB41CEEBCDCB81485DDD4F73345782DDADD22F8B9BA91DFA5399175284AF368572149E505066B59A7965B525F4EBC45C6E5A2DBF7AE88ED79272693B2620BC56894AB0208C8229CC73061E755DE93AA31F105B33CB6B925411BA1CE08FD28C6C656789589DFD6914FA6692556865C53232D8381D5862ABFBBD17C4D15402063321C6E58797EFBD147B40D50586925830F10EC83D7B55591F12EA9FE1AD0FDA3FED8088FCBEF00D9CEFF2A04E4D766AF0A4571E123F372F5A9ED0EE9A09A2914E1A0996507CB707F8A18D3FE26277CEE73DF7A9BD31D7ED4EA4ECCA76ABC5D4483DB3AC2DC2CBE1B0042B8073E86A45ED215427E103BD4070B5EFDA787F4F6E72CE6D93391DC0029EDEDC3B4F1DBE4F23ECC077A83936CCA092227495F7B96380A84DFA54CEAD602F6D958B8889039988A7FF006D807407A765AD27BA8A485D086DF23A5694EE5C9194754C13BD95648523460C238F939877C5737F1C40E78B6E0428C6470A55546F9C5744C2AA8920450373F3AA738BAEAD2C6F2E05A857BE97DD926C7C0BF957CBF9A69B49060AD935ECCF881A4B41A16A1306BCB70CF065B2593A95CF72A7E87D28D6FEF25B3916E6DA610F40E31EEB8FF5573AC1A8CFA55F437F6D272DC43209118F98F3F43D2AFCD3758D3F89B428751B7202C8B8923CEF1BF753FA7F4C5495AD9D50924E99A4DC5AE5DB9DEDB914E50095860FEDBF7A692B0D6939263CD6A0E444179507A7AF4AF25D22D1DF9C7BBEB4E92386D6105A4D80EA4F4ABC67483358D7D50C1ADA182E54471855E5C600D85386BD8AD22691D82AA8CE4D0F6AFC5D616B318616334E7658E31CCC7F6A81B896F75623ED87C387B40A7FFD1FE2A2E5BB11CB431E22BC7E21BC370D9FB1C44AC43F39F3FD287A0D165974AD4EED258163B628591E4019B7FC23BF5A2E9EDD561E5C6C06D40DA8C67EDAC541C31C01462F6465B32DCF244CFE7B0A7FA74BCB751EF519210A1114EC07EE4D3AB538BA5FD71F4A77202474BFB3DD57C5D12DAD9D1311447EF075D8D114F7D09BF8D848395483CD8A02F66B3A9E157982932F3B424E76A398F49BD9E25668154E37CB50F8BD8766CD725677425B0278E3F930CD7B1DC990C2A4B65CCC0EFDD69BC8A4DC4C77C8BAB73F415B5BA9135B83DA6B904F9501411E29D54E8DA23BA1FBC972A0F955257A26BB9D822C934CE7988452C7E956A719C906A30C704330660A1971DC64D55FA7EA371A0710ABFF00F2E0F75CD2CFE52B290D468159D8BCADCDF876C53CD175DBFD12F4496970D1A48CA254EAAE33DC7F3469AD705C7AF5D3EA7A15D5B8331E692DE66E4C37720FAD4327B3EBB4606FF51B3B75EE222656FD8607D6B36A80AFC963DEDC9834B8EF23BB621D0315700E33E58A11BE1ACEB181713C96D6BF971866F976F9FED5350CF1C1690DB5B0697C20144B26EDFD8522C59892ED9CEFD6A77455C9B236CF4DB7B14C5BC7EF1F8A43BB1F9F7A7A89CA33E7D735B72ED93BD6CA84EE0E285D88253A7DCB3F9503EAF1B2B8C7C449DFD28F6E14883948DCD0D5FDA1927E98555DCFAD522C5608124C9BF6A7F6C3EF1587E656ACD42CCC4E6451B677AD6D18657CB38F953AD80B9FD94EAE238EF34E7FCE2E107E9B30FE9571DA6A914F272A928C36E5276AE64E1AD4E4D2B5BB7B98F1CC1F041E8C0EC41ABE6DE30D64FA92273AB0F19486DBF4A3C57666ECF755D6A0D28CED732E18981E38C0F79F037C5026ABC5FAAEAD249656045B44C5DD9FA98D18E373EA4E00EF43B7BA8CD713992691A591BBB1C9A9FD1B448DB4C17F22FDFCCD9EBD14642FF26BA73625871727B6431CFDC9D746BFE176EF630DAABB78D08C2DC0396E63B9CF98CE76AAF38BF4FB8B7BC49648F13C4E12551DC1E8C3D0D5C369649161801D70BB77F3A11F6996682D6160305AD5B27BECC0826BCE8C9DDB3ADAE807D27567B5E46079A33B32E714540C7770F8B1C6A41DFDE24D579A79325CE0FC4464EDB558BC396A56CB2E3DDC9A9E68D3B45313BD312F7B383818EC36AF09C3633BD65D4CA2E9821D874A45492C7F9AA2DA27254C554EDBF5F5A56100FF004A45727627A9C52C8FC8C55172DD33D85101B5CB050576CF9795468B7371315519001CFAD3BB80506E72C7A93DCD3AB1B6F060791876A65A0029AE5A8E560ABEE8DA856DCF2BB21AB264B48A50FE260AB0EB9E942FA968D6ACC64B3B88FC61B940E0E6A911188C41A4B632A7BC6304B283D477C7D2AEAE07E34B74E1F65BB70E79014880F8DBA1C7903B13EB9F3AA3ECA77849232A54EEBF422A4747BEFB1DF8404F83CFCCAB9F87CFE46AAD29698B67FFD9, CAST(N'2020-08-25T23:30:38.4366659' AS DateTime2), N'617bb4b2-a41f-425a-8b42-7e2c176600b4')
INSERT [dbo].[Images] ([Id], [Name], [FileType], [DataFiles], [CreatedOn], [idUser]) VALUES (N'4f043eed-4dc5-4770-4713-08d8494744ea', N'bob.jpg', N'.jpg', 0xFFD8FFE000104A46494600010101004800480000FFE202A04943435F50524F46494C45000101000002906C636D73043000006D6E74725247422058595A2007DF0007000D000E00320001616373704150504C0000000000000000000000000000000000000000000000000000F6D6000100000000D32D6C636D7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B64657363000001080000003863707274000001400000004E77747074000001900000001463686164000001A40000002C7258595A000001D0000000146258595A000001E4000000146758595A000001F800000014725452430000020C00000020675452430000022C00000020625452430000024C000000206368726D0000026C000000246D6C756300000000000000010000000C656E55530000001C0000001C00730052004700420020006200750069006C0074002D0069006E00006D6C756300000000000000010000000C656E5553000000320000001C004E006F00200063006F0070007900720069006700680074002C002000750073006500200066007200650065006C00790000000058595A20000000000000F6D6000100000000D32D736633320000000000010C4A000005E3FFFFF32A0000079B0000FD87FFFFFBA2FFFFFDA3000003D80000C09458595A200000000000006F94000038EE0000039058595A20000000000000249D00000F830000B6BE58595A2000000000000062A50000B790000018DE706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B6368726D00000000000300000000A3D70000547B00004CCD0000999A0000266600000F5CFFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080080008003012200021101031101FFC4001C0000010403010000000000000000000000060204050701030800FFC4003D100002010303020404030604050500000001020300041105122106311341516107142271328191152352A1B1C124334272162562E1F082A2C2D1D2FFC4001A010002030101000000000000000000000001030002040506FFC40027110002020103040104030000000000000000010211031221310422234151053261713381B1FFDA000C03010002110311003F00B47AD23F9CE96D42DD13F7AB07884FD883FDAB9A75A8F3C2A1FA577B11C8519E2BAC2FAD3C6B1B88599984B03478F4E2B97756C5AC2D3BA9FAA710B2FAA843B87FEEA5F4D2A4D124BB93050027B0CD7BDAA48AD9C36687E6124909CED40772FDCD343321C901867DF35A7606E68C1C76AF73E95BCDC7006491EE05784DDB0718F6A9B0773460D642B1EC09A72F701B2A501F438ED4EE044F95980914C84A807B9C1EE7DB1EB41B2F183645EC7CE369CFDA962DAE0F68253F6426A7F4AD2965F98BDBA6B8482DC2C8B81CBAEE03BFDB9A968229A27824B5B9966B595FEA3805803DB00FD8D2DE48A7459E19B5710316D2E9B3B6DA638F48CD65ACEED0166B6980C672633562B4E91FF94D2BB720836F9191EE1AB7A4B7022DC747BB78B6F1247228C7E4D83475C588F2A74D15CA693A94A8192C67653C8210D27F675F6E0A6D65DDFC3B79FD2AD08AFAC56DD23167AA1C20C811A93DBD41A6AFA969514EB1CD697716E19CDC7D27F3CD4524C3E48AB68AE7F67DEE01F9498F1C7D06B02CEEDC0616B2FDF61AB492E349932AB951B431DF2F607FF4D79DAD5114AC7148BB7298BA1923EDB686B5F031472345F12B333378672514E571DC9ED5CC3D576DE0D8DA42DF8DA7B891FF00DDBC2FFF001AEA2556591CB36727238EC2B9C7E2246B1F5118148FA1A461CF0374AED9A474DF75159FA05BA6BA7BF6E0BF428C4C31864756C61B3DB6F9E4023D88A6173A4BDA5E4904AC70A7E961C061E4466AC0F847A7C9A95DEBD6AADB36C0B2C726DFC32ABE573EDFF7A8FF00885A6B693D44C0C3E196559428E40DDDC7EBFD6B4A97769070C0B6B28909DCE47A648A6B20895FE8CB0F7ADD7331270A7B8F218E2B4C11BCB3A222EE663802ACCB7BA2574CD0E6D52E3116D842E376E38A2BB6E86B8B98D0497888D1E42344BC9F6CD2BA762B0D35BFC5DDC3B88C3A96C91567E9B690C90092075910F208AC193364BA46B518A408699D0D70DA5DCC33CF2CDE32E76B0C2EEF5E286EEFA57A97A72D9CB5A9BBB5E184B0B7D51819EEBE9CFBD5CF6B1B89829202F7C93C54A5D2968F74650F1DC0AA2CAD7214E9EC529D17D4C21B76B796D2191DE63E1CF3302412391EDF97BD1E3F505D2CA214D2ACE57DA3202A82493E409E47BD02758683F2D7F3B69B0B207759AE23880C819E481F719FCCD6DD0B55B68E32D2587CDCB11116C572324900367DC76AB37A96A409C5721F5AEAD74D0BB8B6B289D4F29E12B0F5EE284FE215A2B75BD84C91AA89AC159B60C0279F2FCAA550DBDDDF2B41149014DBE12EEE159880D9FE2CF159EBEB1FF9E6912AF223B30B83E7CB51C52EE465CDFC72FD31ED9E856A7A7AD671B11DA204823BFBE6B7DA74B44423C9E115EE55864E3F3A7DA23C07A72D0B61D914F1827904D6C5BD6746910ED5071B31C63D89C1CD094E49B43F0F74135F0174B2CA9704042D1F864938F3AA2FAC7458B58EB198C7712248CE519368C0C28618CFA961FCEAF907EB618F3F3AE5B83596325FCAF3DE1B96B89C872E36005BFD23D700023D3B55F0276DA131D17DFC075F01908BDD6D8A9EEA81B3DF939A20F8A3D3FF003B6F3DE2EDF14C2A1429C13B09273F70D8A86F8110816DA84D9FC727A790CD157C53B992C7A765BB0EAAA9137E25CE4E4718F7C8A65B597615916C730CA54CAE533B73C67BD4D74A5AADDEB011D8AAEC6C91DC5436D261673FC58CFA9A27E8785E6D465112E5CAE07B5372BA8B6371AB90582DB4987FC3DA5ADB33201BB715CFEADE744FD3D3981D2054318C90AA0F1F6FCAA187425D4F6CD6CCA12DE595657D8C036E19F63EA7BE7CA89B45D222B3EA48A312338C995A3278538038FD3FAD637355C9A1FC1297B398270A4348C4648CE00A90164B756A8A8D3D9DC05CA90703EF83DC57BABFA7A5D5EC5A5B16912650C0A47E648C06038C91DF19A61D3FD39A9C5636225BC9C4B04652567428B2F3C65493C81C6E1DFCEA97DB7604E2CAEFE24DE5DE8FADD9CE1F69B8B7314A17B1DA79FD73519D397AAF7D04027755DEB102C4638C14247AF954CFC687F97D5B4A8C6D24C5282186E18200ED55E68D32AC1726539F0364839FAB83EB5A31C6F1D97D5BD174C11AF832A82B2F880AC8CAD9DAA182823CFCB38F6359EB58191B416693C43F2E232E3B3633CD39D2C33E951AC4D302C049E3A5B3E4FA0C8EE39F4358EA88646D074679232AE9B83060411861EBF7A5415491932BD5092FC3FF00073D26A65D09D4073B267418F3EC7FBD3C6D2AE14011A2951E6CC334D3A35ED534C9A3BB98AA1B8255016C365573DBED533341A5A47FBB966DD8ECB29207E7432A5AD97E927E28FE9135737CB135DAF20C5117EDDF0B9AE51B94F0C4A140F3279EC4F26BA8B5C648F45D66523916D264F6FF0041AE5BD4372EF5233B40CD69E978919F23EE48B7FE06855D2AE1C6725998F1DF1C53CF8EF73E0F47DAC40733DD053F6033FDA99FC1E9D2DFA566755FDE2A48C73D89C8C7F5A6DF1EE761A3E8B11ED24CEE4FD907FF00AA15E519229220AD92E71867C8F5EDFD28C3E1DCC915D5D023EBFA4834192021139C8A9DE92B9483576C9DAACA70299995C197C7F7A45F9657AA6D0B16FC22872C3A826B5EA4771A7CB2215CFCC03B949FE1C7706A3A5D763B3B18C1059E4190A3D053AE9ED76D7F684B753DDDBC72041B413909EBCF6AC3156B7352835E8B17A6FA97F6EC77130D3AF2D044FB596E63D85BFEA03C87DEA75EED02F03F5A1EB1EA7B7B98CC6D344C5FF0BAB03BFF004A71713FD39078C551ECE90BD09EECA5FE35DD1FF88EC361195B7619F3196FFB5577A639F9A93232A632187A8E288FE246ADFB43AAEE2152AE90288C363904727F9D0BD8CA90DC65C6E0548C5743146B1A4C5EAF22DCB7FA77A9F545D1ADA38EEE658E34118024E001C0E7F2ADD79A9EA1A815F9ABC924556076B65B8C838193C76A1AE9394BE9050F1E1C8C842F9F39071F9D4F01C9FAB9CD31628734703AAEAF3C334A09EDFD133A4EBEFA543244B6D14859F3BA4EC41C7E95AAF7A86EDE4DAB12A44573B4B31C73D81A8DCA8E0FE7E95938741F48E479F1C5478A0DDB42A1D6678C74C645A7D5231D35ACFD5826D24E47FB6B98AF80092E49276F635D4B796B1EA36DA844AEB24771018C05C1072A477AE56D5894DFBC9272473DFDF3FA523A67B3476E6BBD32D9F85C7C2E9248D4E04A4EEC9E725C71FA0A86F8E172D30E9E8B9DA2DDDCE4F9FD23FA0A9DF867047174959392B99A755247AEEF3F7A05F8B3AAA5EEBB67651B97165032B923FD4CE4E3F2016AD15E41B2E4036CF80BF57058F14BB3B836B771CCA7F09E69054FCB87DA00DDDF3C9A496326C50A06D18181DF9CF34E7BA05B4D34591A1491EB30E24459367D2AA7FF0039A9C834EBAB4D42016FA4DA5D4249DDE2A12545555A46AF75A35D896127DD0F00D1CD9FC5596D645DD6A19477DA7159258669DC7836AEA135F05A0BA469CE8B74D631C172BC868D029FB71DE93ACEBB0699A64B717122A220C64FAFA557B79F173C7B7F0E3B760E47E33D8509EBDAEDF752C2D33868AC2DBEAC7F11271FAF3548E1937DC55C935760F5EDDBDE5DCB74DC34AEC49FB9CFF7AD313056C9E7CBF95209EEA0F19ACA8CE7D866B7FE0C69EF61EF484E648A5843673890F3CE48C7E9C514EFDCC3BE4F3FF86803A52EBE5AFA0DA1BF791BA313C0E0E463D68D4CAFCE323827B761422FD338FF00528566D6BD8F830E727279CE6B0C576E304023BD361365B96231F5609CD6D59CC81959BB1C0DA3BE4516CC29A6E869D2FF0012F5F92CEE5A7922660E021F042AA8C7962837AA1C5C4B35D4AE4CF34859C000024F39C0FED53D36C4C46A14291D871C1A0CD5EE636710C6DBCAF0C7DE9704AED1E8139395B2D2E97EA2D3B49E88D364BCBF8A348E6CBE0E58601C00A3927F2AAB3A8B528F58D7EF2FE20C2399F2BB860E318ED5167939F3A511C8FB518C1276686EC56D6319E785E704FAD7A01BA741EF5851B891EDC56159A36575E083906ACF8226934C3BB2D0AD753B55F193EAC77EC4529BA021C1D9339E3B93C8FE5527D25790DFC0AD0FE35C078FF84FFF005561D868D25D0DC23C28EE6B9AF264836933A791E397752600E8DF0C6CA793C4BA794C439E4E33ED4CFAAB4C516D7EB062285D8F85120E024285BFAD5B32DACB6B66FE1A6D0A38AAF3AF4C3A5E956A93B63C7B69827AB31C647E7C0FB1352139CA6AD8AEDA7B514F77A5A9382067B1CFDA93E75B2052CCFB719084F3E75D230455B0A7A76DDDDADD98676A964F2EF45053071F49393C13401A7DECB68E6488856906D0B8CF6E718F7A25B2D7E1BD74866410CE002467E963EDEFED4545D5983EA382726A7CD13CACC32700F18EDD8FAD66594847C60803276F99A671DC22C8518F3CF9703DA9135DB2217C9DA704E3B50FD9C751760DEBBA998E310236D9D946EC1FC22860F201CE734A96579A5692462CEC7249A4F9628C551E912A546294338079EFDE935B139318C81938EFDAA164663FF301C67923029071E183E60E3BD6DC049DC30C6D27B7AD611330B379671F9F3462AD967C50E74AD56F744BE4BCB197648BDC119561E84798AB7F45F8E1A7A5AAC5A9E953C2E072D6C43A93F63823F9D52F161818C9E7CA92460F23B549F4D0C8AD8233712E8D6BE35697259C91E9BA6DDCB230C03395451F7C124D551AEF516A5D457493EA33EFF0D76451A8C246BE807F7EF51C71B785AD75558218BED4496494B9320F6A52604B8EFF006A40F4A5A7D322F2073DFD2A11726E760A9F406037E726BC4832139FC5496C78AC8480BDC739F2ACAE166665C63CB34FC2FD0727214E95A8B4DB6DE760D285FA5B81914FA400A1F41C7AF341F0C843EF5183E5ED447697C27B6E40DE300AFB9F3A99615DD1E0E5753D3A8BD71E00FC57BB6696318EDCD20AE01AA35474E84F95673C8CF9563CAB35401B1C00CEB8C10D4B8D80419F7CFBD607D4188393B073E98AF4608453EFC134DC3C9796DBA10E4821C77ADC00917E90338AD72720F6A4C6C01209E0D314B4CA9FB28630549A41EF4E4A6F1F48C91DB14DD810C41E0D2F2468947BCEBC7935EC71EF9ACE38A5308A756C8DDDC8069231E758F3AF0AB2D88F763A808C1623E914FED67F06652482A78271CE2A315F6C58CE7CF1EF4F107EED080338390456A4D38D3269D4A8FFD9, CAST(N'2020-08-25T23:36:11.9960721' AS DateTime2), N'a8bd2eac-6e05-4e3a-a9fb-c03cda25e4c4')
INSERT [dbo].[Images] ([Id], [Name], [FileType], [DataFiles], [CreatedOn], [idUser]) VALUES (N'bb0271fe-a0b9-45a4-4714-08d8494744ea', N'fahd.jpg', N'.jpg', 0xFFD8FFE000104A46494600010101004800480000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080080008003012200021101031101FFC4001B00000203010101000000000000000000000405020306010700FFC4003010000201030302060103040301000000000102030004111221310541061322516171321491A133425281071524B1FFC4001801000301010000000000000000000000000102030004FFC4001F1100020202030101010000000000000000000102110321123141221371FFDA000C03010002110311003F0095EDE2DA40780D8C2AFB565A695EEA624F7A9DDDD3DD4C4939CD4A14D074D4B24ECD155B251C6163383802ADB687CE2E63249519C7BD56F22E0E57145F4CB4138D515C20949C0456F50F9A9436CCD909ADE68551DD0857E28196E21B705E470B8F7A73E2C16DD1EC9337ED3CCA02B230E0FC1AF2BBEBF9AF6563237A73B0EC29FF003A9196D1A2EA3E2A82360B6B17980776D852693C51D48B9649163CF60BC5286C915591DCD53820A4341E24EA68C585C9CFCA8ABE2F15DEF99AA558E4F7DB1485FEEA21B15B820D1BDE93E20B2B990ACCFE5484FE2DC7EF4E2521D8E08C76DEBCB0649CD3EE89D75AD25F2EE57CC89B6C93BAD2B8D2D0BC4DAC2DE54E555F231CD5DADB517C8DA821389195D62C83C10699279063D4E833D81351AD8133E8239AF6E163505D8F0077A723F4D1C4914963E44C3632AB1FE45031AE903432827DAA7AAE5D0124BE0F19A78B4BA03D9E7897B70830666C9E6AE8EE6F9A40434A73C1AEE11DC88A3D183CB559A258D935DC0C76C551D19B07B89AE836266704F7F7A27A68492555964934EACB15D8E3E0D7D2191B4AF942553BE7DA879C1451FD879D2295527A40EF443C477EB77D40C50339823D975B64FEF494C7FCD122279A5F4A9C934FA2F0B4CF12BB1D208E2A89168C75464CC44E7033553E318208C7BD6A25E82D0360BED4BEEFA61C00BCF735AEBB29C188986E0E36A83020E699374E70704D41AC24F6A0A4AC1C581213CD4F183458E9F2839C66B8F6522A92451B42D3353E14BBF3ED9AD9D8878C647C8AD180ADCB602F7AF3CE813FE9BAB445890AC74B63BD7A03BEA1841E91CE3BD464A993922DF346A0493B7045111F5083820A3FB83CD2998330051B8145588B6116A76905C03956D8AFD7DD0A168CC4F24A662AE9820E3E6AA99CAA6CB9EE77A7128CBCD2CA06B6624E477A09A3567CE9C934AF2243C71B93D0258BC92484EA6083B62BB784BBB1C11DB34E2280456E4A2EF8DF6A7B79E1BB51E078FAA45166596D8B924EE18498C8FF0055484D4B6071A9198E8FD3C4D3C5ABDF35B290048C28EC29374087CB504EEC07ED4C6E242BCD742E8AA17DD45AB3914AEE211A4ED4C679D8F06975CCC749DAA5245E2C4F3A7AB635158CF7AB5F49E6AAD401D854D21A4DD132808AA99706AC57CAD56FCD53A2562D45587A8C4E47A44809FACD7BCC9D63C16631A6C949D23F1848AF0AB843FA84DB922B60B2A089147231BD73E78B956E845271367349E1AB8CBC3D32561DC282314B2F57A3C516BB38E7590B6F1BEEA05235EA3708D852403FE271525BA9A53A481BFBD2C235DB16526FC067824B8B870C4AAE7738A322E9EB100C082476A28C6A8F297718CE4015D79945B2952093DA933748D8DBF0125497D415300706B59D42F0DA7FC6FD26DB0A659E07014B019F5927EEB2F14EF939518C7B535EAF32374AF0FDCCBBC56B14A48F76D5B7FF0069F13F91B872C94CE749857F442400825738F6AAAFC7A431603EE8AE9176B75D35E608546718359DEB1379B72412C546C0035DB7A4C751A6D136F2C939753F46819D57500B4A6E9A289F04BAB7DD7D6B2B3365242C3E6A52B28AAE82648B7C9142BA02D80718A26794AECC77A552C8EC48D58FAA588D3A419E5EDC802AB7500641A0C05C7AA4627EEAE88FB1C8A7644B94C71DDC324835283C62B490CB148462300637159C2AAF1100E1FB53C83524684A6A1819CD249592C8A958798D02065C7D57C21237E47C54A0B88970AD0641EF9DE8E1221C6980E3D850D11E4C40F331B8946AF8A656891E84CEAC776A512A849DCC9F89EE28C8BA9CB6E8A91B02A0E46D51CBE1D387DA34171D2A768DE5589A38114659CEE4FC55F79642FBC2105BC6D96D52007DB8ACDC9D56F2E75192791B9233C5693A54DE5F8760673FDF26E7EC55716E22C9B5913603D05644F0E22B8C3AB3291F46955CAAC7704CE9A90D686D5B16D818DC93B1A02F20F3149C559BF954592B93B335D62F3F5B7D0DDCA12468C00405003638CE2868479F7AD3F92230E725546C289BCB5589F2DB51960D1BC785C1F8A5B1F8A4F42CEA4A8BB01BE297F4F952DEE96678D650BBE87E0D32EAFA8CE70B8DA96A636538C9AC98271DECB125559EE24F2E3225040047E23E2A84874704D191DB8CE6BB2C640E302B582504B6516D133DE4200DB3B9AD3E91C669374C46693D2B9A7D1DBBB019033599CF93C4542325861F714446AE1B3E71C7B51296C10670326A4D122B69D3B9EF40899EB84632BE41D3ED518ADCCA46838CF1475C8324EF81839E2AB283CB565F43835CD9BC3AF03A4C3563314223980071B1229CA46A7C2E8B91F9C9C7FAACDDC755C218EE40661C639A47D4BC477B2C6BD3ED2430C0A493A7924F3BD5F145A891CAEE7A363D298C761202DA82B6D555D5E2AC472DBD09D293F43D15232C599F2EC49CE49A5F7A1DC1D24E0D55AA545E1A4033C92DFCC5533A738269FF004CB6E9F0ADBEA94AB8FCC11C9A5365710C6E9112AA7E7BD117465453A1148E41CD0A1D4DDDA0CEAF05AF9E5D0FA4D65EEA28C444A3E5F3918AB27B8BA9574BE7143959110B10A00E4D2C62C39277D16DBDD1D215F66AB2E27D40014BD5CCC72071C55E4938C9E28D1352B43FE8ABFF00999F3824D370CDFDB20A0FA4C4B1D8C618649DCD1DA23D58098A0FB39A4F65996D86A19F7A8C84B37F54645750A64FA08F9AADCC44FE26B096CCA5EF8A44F72EF04062463B12726945CF57BB918A99DF49DF00ED4B4BE4D7DAB2704EFDAAAA111F63C7BC69EDE3998E5FB9A0F58FFB48FF00C642066A36EDAEDDA3F639AA2752CBB1F526E2B35E022E99E813CBA22F2C1FC76A00CDA8118A12CFA88BEB55974856E1941A8195A39339DB34BE1D29FA5F0C11B5C0675C8CD696D44967103025BCF082098E54072076F7A41069910BAD49EE25D074B15614243C1ABD8FAE2EECA459193A358C7293B10A70BFEAB3DD5246B8C19F400060222803F8A124BABACE0CA77A1E476232C493F3415D8D3704B451E941B6D54DC5C08D7E4D72693193D8509202CDF14E959CD2952A2D87AA5D58CDAE099941EDC8AD05878C3385BB8867FC978FDAB2AE41538ED542E41F8A2E289F67ADDB5DA5E442584A3A1EE0D5F223E00118DEBCAAC3A95CF4F9FCDB790A1EE33B1FB15BFE8BD7E0EAB18D6DE5CEBF92763F2297A15AA3CC09F5735C6CE73ED5F71DAA457229C60BB36024233C8AB1C05973D8D516DFD51F557CA371ED580D1DB69CF4FBA3DE193F8A77AD5D750DC1E2930559E128C2AB8A79ACCE97CB47D8D2B43C27E31EC33BDB39C1C8F6AB9AFD31B8A54974B2AE41E6BE6936C9C1A42FFC0E92F236E06E28392E0B9C0A1F3A9BD854279D208F6E4F028A42C9D91B97F52C6BB9277A893F91F6AAE156DE5933ADB8F8A9B9023F9354488376CA63F53B0EC4550C086E78DA8A8061F38A1DC626707619DAB00E707DC55D14AF0B878C9523822A00A819353CE4718A213FFFD9, CAST(N'2020-08-25T23:36:12.6843052' AS DateTime2), N'bda78790-e1ff-42eb-9db1-a93298c6866d')
INSERT [dbo].[Images] ([Id], [Name], [FileType], [DataFiles], [CreatedOn], [idUser]) VALUES (N'94104fbb-0a02-498b-4715-08d8494744ea', N'fatma.jpg', N'.jpg', 0xFFD8FFE000104A46494600010101004800480000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080080008003012200021101031101FFC4001C0000010501010100000000000000000000040203050607080100FFC4003D1000020103020404020804040701000000010203000411052106123141132251613271071423428191A1C12472B1B25292A2E11533436273D1F0F1FFC400190100020301000000000000000000000000030400010205FFC40023110002020202020203010000000000000000010211032112310441135122233261FFDA000C03010002110311003F001EF1E24D42E0ADA293E33EEE73F78D23EB738D818A31EC29DBD8945FDC93DE57FEE343346A3B53348E3B7B3E6B895BE2B83F202986707E2791FE66964283D29271ED5A489623C99C88B3F3AFB9CF6402BD2475A0B50D420B080CB33607603A9AB22563D24ACA0925401D49ED51373AF5AC1B19C31F44DEAADA8EB375A9391CC63873B22FEF40A8DB036F5355CBE862387ECB70E22B42C39B9C29EFD3152306A366F13C8F729CABD18B63359FBC79C85036EA49A1DF3CA42B67E5D2B2E6D1AF813E99A543AAE9923F2ADCA13F3A938FC32018CA91ED58EA4AC87AE08AB4F0FF00103C6EB04E4953D0D48E452ECCCFC771568BE900D248AF9183A8653B11D7D6BD3F3A20B0D30A421C48314A7200A679B0E2ACA27EF97F8EB8DFFEABFF0071A1180C77A90BF51F5DB8FF00CAFF00DC68171ED4245BEC61863B53321E5ED44353120CA9ADA2802EEFD2D2169650C1577AA16A7A94BA8DC99652797EE2765152DC53A934F742D81DA3F888EE6AB87D6B327E8770E3A5C99F736DE9EB4FDBC6663E504FA0143E3271D4FA55FF0082B405993EB52A647441FBD0DBA56C638DE9113A7F06DEEA5CAD27D9C7D8115327E8E19612C25CEDD856A167A705887977C54B41A7A18F0CB9F5A5A599D8C7C314B6730EADA3CDA75C3C5229057A6D435B44C41700EDFD3BD6DBC7FC390B583DC46803AF5DAB2FB5B454B77DBE16C1F91A670D4F60269C744DF0BEAC654FA94EDF6A83284FDE1FFBA9F92420EF54368244F346591C2F3AB2EC7D0FED49D3B5CBCB3BD09712BCD013875739207A8F7A3BD7629930DFE512E6F29343BC841CD2E0B1935659E6F15D638E428A91BF28C000E7F1CD0B7BA7BDAD8BCF1CF21E4C6398E79B7C75AD262D4592EEF99751B943BE267DBBFC4694B3ACBD37A025308BCBC49CB96F1E43EDF11E94C3CFE1A623DDBFC46855A235B2524E45F89D57E6680BEBC82DED6593C4C95527CA3A9ED51124F296C962680BE99E488479382DBD692D1A842E4915A999A7B9766C96277F9D7CC98CE17A7F5A914B4E453215DCEF5EBC491A9CEF81BE7D4D5711F6E8134EB26B9BD8E30325980FCEB75E1DD212DAD238D57CAAA0564DC3AA89A846EC01E5FD0D6E1A25C29B58C81D46295F21D2A41B06F649C50E36A93862C274ED42F8C831B0A6AE35ED3F4F8D9AEEEE38801CC43360E3E548D3630DE88FE25B2171A65C291D54ED58ABD9F81773C0411CD9EFB7FF006D5AA6A9C79A2DC412C36E279DC82078719C1ACDB57BB8E5BD6B9851D36070CB820D743C5528AD8BCE7175444121228E53F71F07F94F5FEBFA50579603C58A455EB21538F638A93B841F55BDC0E996C0FCE9AD3251A81651BF2F9FF11834EE9E81B5FACB56950359C93DAB29E59225957F99763FE93FA555AFD668669213CFE0AB929FE1C7518AB3F1319B4ED56CE781DA367B646041EFB8A621D4A2BC8CC7736B1972301E3F2FE2474359FF004E5A7EC77514FE36E265F346D339E65DFEF1EB41119AB6704DA4177AB84B941247F5CB8F2B6E3676C66AEFAEF06E95AAA7890C69697207C51AE01F98FDE969668C5F1615C1BBA315962CF6A0E784294C8CE41C7E82AD5AC6817BA35CF85751614FC320DD587CEABB7E035FDBC3D95327F13FED464D5682F8B1B9D1137EEB0BAC6A7E119C7CAA3E497C9BF527A7F5A55F4E25BE90AE0A8246DE94CDB40F7B7491290327A9E95A6C626B7458F4FE1DBB516F7EB2F91972394F7F7AD5F86048604461902B3EE1FE1DD46C192E23BB478646FB587703971D40F51EB5AA70A5A94850C80F375A473BD318C2ABD06DDC2E63CA645433E81A7DD4C67BDF31EF93B55DE6B40D01C77AA1F11F0E5C6A9E25BCD7222B4E421515CA967C6CCDEA01ED4BE395BABA0B3EBA0EB78387D10C16D3DA87C602AC8B9FEB59D71B430A4CAB1ED98FB7AD2ACFE8B2EE69A47D4B55B6C72911BC230C1B6C1CF7E951BAC685A8E8E9E05EDD8BB893CB14A7AE3B034DE1A52D4AC5E57C7688886E04D33A1C72CB074F7C62A3B8627F0753857B34BCBBFA118A45A5C18AF9075E52CBBD0FA5F9353465E827247E74DA7B40AF4697C6881E3D2245DFF872BF91155DB7043035789F4C6D674FB46405BC1520E3DFFF00CA8A9B436B7C961CA06FBED5519A4A8E74955A0EE02B8CEA92818E64D52E13FCC4D6C12B9B5220650D33004F97E1FF00EF5AE7AE15D76D748D77546BAB98E10BA899579F3BE1DB38AD8F50E30FABA8B8655B88A603925B6B2B899181E809518CFB6694CD07269A1B4A9C89BBDD263BDB730DD426589C1CAB6FBFA83DAB9F78A960D378B75182DD8BC50C239091EDD3F5ADD9B882DADA0B53ACDBEA4A2E1D5221F50758F998E154AA9620FF0037E55857D265CC5371CEBF2C5851CEB08C7A8001FE95AC1169D30F8D28BB4508B119F56DB3572E0BD0E5BB9CDC72F9401DBD6A9B046D7370A8BDCE07CBD6BA0780F454B7D2229645C1932DCA7B0EDFA62B79B2718D84C71E52B64869DA37836285D7181BED53FA4C401E651E51B0A1EE59A47F04128877247A7A51BA7EA564B13471BC6E633CAC5581E53E86B9F26E43544ACA7C355CF71434B024C37506BE7BD86F872248A19463AD0F633BEEAE36048CD0ABE8BAD086D2E1E63F66BF80AA97D20E928DC3D24C8839A3DF18AD07233ED55AE3328741BB0C70BE19A2626D4D329AB47303B72CE48DB7268FD2E0F17528D40F89C1FCCE68209CD72C0FAE3F5ABB70170DDD6BDAEC91DBC45845E667CE0276DEBAD1D2B673E5F46DFC0DA240DA109660C599B620E36C67F7AF788B845F560B1432F25B279A44C79E53E80F6156AD234F5D2F4B82CD5B9BC3500B7A9EF47D2B7BB37F145C699C41AB4BCBAF5F903A5D4BFDE6AE1F473ADE81A66A125CEB76D773C8BE687C2979113E6011927F2AA8EA71789C417C9DBEB5293FE735E02166291EC06DB535156804EBD1B6EADC6BA36B656F217D552E6D8E6D50DC05851BA06F0C0C12067739358D7105CB4978EA4966762EE4F5C9FF006A3ECE75B74795DB644200F56350179378B2166F88F5A8E2A2B45C1B7B61DC3E11F568A36190E42D748E9B324363185F28000000AE60B1BA6B2B982EC0DE370F8F500D74DF0FCF69AAE8F6F751382924619483ED4A793FCA63981F68998608E684F88A1B9BA8A45B70E69E8B2787108B9CE5993A93EE7BD3337FC4A001EDFC078875E6C86C7F4A447AD49092678AED077023E65FC0806944A5E86126C7ACF8334EB1BF96F2D9DD2697FE638DD9FE66A4A78E3B48942741EB50C759BA9017B58AEA5F6921E4503F98E29505C6BD720F8D636A919E844F938F963F7A924FD91A689017AAC09045679F48FAD14B05B44279E53BE3D2AEB2C0B6D6E5A4704E327158D71A6A2B71AAB22B67901277A2F8D0529D83C92A89478957EBF9EB97247E1577E05E3C3C18D7531B44B986E02971CDCADB138C1AA12732B33B764200F9D116DE1CF0C91C937859C72B72161B76DABA749AA1196B66F56FF4F5A3C8A3C5D2AE91BB8591587ED57AE17E33D2F8B6091F4F322BC58E78E50030F7F95726CBA45CDBCC15648275D8F3412061F9751F955DFE8D38A6D386754BF6BFBD169CD084896581DD5D891D794823181F99A14B12AD2331CB2E5DDA28D7FF0065AB6A529EA6EA5C7CB9CD47C0E79C9DC93B9C548EB114D3EAD7C9046CFF00C4CA0E06DF19EF4DDB40B62AEF74A39F1844041DFDFDA8A93AD11FB18BA9DD5153A63B7BD4786CC9ED4B95CBBB64F539A694E2414372B6112A54113802DA223B12A6AE9F479C6E740B95D3EF64C584AD957276898FAFFDA7F4AA7BC266B5C8EA3F5CD0414F2637CD54E29AA611695A3B0AC6E63B9803C6430236C1F5A4CD1321261561CDD4072A2B0FFA2BE36BCB2B81A55D734F6CAB98CE72C83D3DC7A56E16FAD59DD461A39D0FA8CEE3F0AE74F1CA0F43109DF4330C39983DC273107605CB6F5232DC7247DBA74A1A7D66CEDD0B4B2A0F9B567FC63F499A7585B4B6FA7CAB7178C30026EA9EE4FED54A129BE8D4A7ED8CF1D71841A5472411CC1A76FBB9E95924B33DC177762D248F8663FAE3F1C546DF5CDC5DDD35CDCC8CF2B9CF98F7F53445ABAF85D3A0C927F3CD74F16350542B27C99E5D8F0E2232398F9BA7415ED9A735ABE0123B7B57976C59C173B92338EC3D29EB06060913A93BD16B6064ED032C8F1B9009C8F7A3A3BD2EA16755957D1C67F5A06550AC3D714B41BFE3569B4C0C9264EEB52B2EB537200AA2E655C2EC3E2355DD4256F1645CEDCD561D5139B54BD27AADD487FD46AB372C24B871EBD3E745CCEB1A48247B0439043636AF186F9ED4E26E793BFA1A75540241191E829348258FDB3936E4A9C11803E748B8448C0914639B6344DB439D2E79029CACC98DBD8ED435E292D1C0A32546FEC6B7E8974D5133C0C7C2E228A62408D4EE7DAB44E21E26E1E891945BC973718C7D96DBFF00356556D985308C573B1C36E69722CCD8312818FBC4565624F6CB53A1CBFBF92EA667CBAC79F81A46207E668653CE4185799FFC446C0FB5136DA3C971247E21672ED851EB5699345B6D36D5A59F0AB10FF31AD3925A44BB451DE222621CFB9268962A96CCC771DBDF143DC4A659D980D89C8AF6F5B9238E24E98077AD2D2B25E81649DA48B27E23D4D3FA7CE46D9C508C06700ED9C8A54070723A66B2A4EC8D2A256E87990EFBD7D1E081F89A595138872C46F8D85112584B6F10947DA4247C6074F9D1DC25FD7A167D1FFFD9, CAST(N'2020-08-25T23:36:12.7024995' AS DateTime2), N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Images] ([Id], [Name], [FileType], [DataFiles], [CreatedOn], [idUser]) VALUES (N'90a99b92-48be-4784-4716-08d8494744ea', N'malek.jpg', N'.jpg', 0xFFD8FFE000104A46494600010101004800480000FFE202A04943435F50524F46494C45000101000002906C636D73043000006D6E74725247422058595A2007DE000C001F001300170034616373704150504C0000000000000000000000000000000000000000000000000000F6D6000100000000D32D6C636D7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B64657363000001080000003863707274000001400000004E77747074000001900000001463686164000001A40000002C7258595A000001D0000000146258595A000001E4000000146758595A000001F800000014725452430000020C00000020675452430000022C00000020625452430000024C000000206368726D0000026C000000246D6C756300000000000000010000000C656E55530000001C0000001C00730052004700420020006200750069006C0074002D0069006E00006D6C756300000000000000010000000C656E5553000000320000001C004E006F00200063006F0070007900720069006700680074002C002000750073006500200066007200650065006C00790000000058595A20000000000000F6D6000100000000D32D736633320000000000010C4A000005E3FFFFF32A0000079B0000FD87FFFFFBA2FFFFFDA3000003D80000C09458595A200000000000006F94000038EE0000039058595A20000000000000249D00000F830000B6BE58595A2000000000000062A50000B790000018DE706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B6368726D00000000000300000000A3D70000547B00004CCD0000999A0000266600000F5CFFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080080008003012200021101031101FFC4001C0000020301010101000000000000000000050603040702010008FFC4003310000201030302050302060203000000000102030004110512213141061322516132718191B114234252A1D107152462C1FFC400190100030101010000000000000000000000020304010005FFC40023110002030002020202030000000000000000010203111221043122611341143251FFDA000C03010002110311003F00DA2B19FF0096BC41E66A3169714BFCB8177CA01FEA3D33F8AD47C47ACC7A1685757EF82634F403FD4C7803F5AFCC3ADDD5C5FDDCD34AE5A69E425DABC6F1E1CA5A5CDE22B9990C8D36EF483D7FB8D549669269308A493DCD7D24AB2158A11E95E371EFF6AB7691AC7EA037313E9F9AF4730436D90476BB0EF99BD5EDDABD67EE06055CB88F1C3B2E3E0E6A84A40FA4E40FC5727A7661346E010CE0903A7C9AE5A7324B96E71DBDAAA34AE792FF00A547E63630A28944C6C242E3736D1F93514EA24E40C28AAD1926AE005A319E01FDAB330ED2B4798C67DF8AF83944279C907153840E41EC4E07DBB9AE2550CED8FA7A0AE3492CDE4618F31941EDEF442454D988C177EEFD4FD80E94362420039C71D7E28BD9A971E4C609661CE3B0A09335205B0601C118EFB49CD554804CDB3BE6AEDCB112038C123A7C57BA5DAB5CDD854ED5ADE2D092D786E9FF002BDF40FA1C36AB3A93E7A96453CE067AD6172C86569941E573FE68A4974F72B23492333752CC7393420C8AC8F2A2E406FD4D26AAF82C0A52D2AC2A3701D87F8AB925C88D1768443D8F5355A2F4B79607D67926BC64691C84E83AB1E94FF628E8B06192F8CF7C55778DB3C38615308F3C1739F8A88C03760331F8A20591F94F8E4D7A23C724D486D9C77FB735C18675EA322B74CC3B49141F48DC7E7A54A662CBB49E0F5C5542481823152C7B9B040C7EF5D869614B670472781F02AC983A46076C935F5BDB9072DC9EC28ADB58CD73848533CF24F4A5C987140F8AD1DD91554B16E8A3BD38E87A43C6372A82E7EA73D07DAACE93A0C700DCDEA73F531A6586258942A8007C54775BBD22CAEACED9876A0648B5ABB8E439F2E574FD0D14F0DDDADB5F34AEA5976741553C46813C57AA7B79CD5CE8996B8555EACA6AC6B6BDFA254F2DCFB2F10C96923007038A39A2E8965378456F6773E6199F6AFC823FF94225B956F404C8FEDA70F0FDA47A878423556C15B870EA3FA724522E9351DFB1DE3C539E3142F6CA2FE1DA6801FE5B618E282323145453DFB77AD4EEFC3096FA65F4884C8BE49DA98E59A81E81E0BB997171791941D555BAD642F8A8B6CEB6AD9E21256D67272035585B3B96C7A73F75AD366F0AC6BD076CF4AA377A59B48B2B1F03DAB3F95BE8D5E321185ACB1AFAA120FC0355DCBAF1B5BF229866D48432947089F2E6BD8F53B493D2D2C073D9BD3FB8A6C6C93FD012AA2BF62C1C752413F6AB967613DC1062039EE39A253DAD84D31F47965874EC7E41AE74C864D3EE95C72B9C7078346E7D00AB6984AC3C3D2B3832648EE29AAD34E10A845503B541A5EAB1CB21528148E99A326EA1887A98735259293E995C2318AE89E0B6655E071523215233436E3C55A75A1F2DA51B8761CD5393C5965244ECB20E14919E39C52BF1CBDE07F923E8CB3C473097C45A9CAA720CCD8FDABAF0DF3AADBFC1342AE25323BC8DF548C58D1DF0A41BF530D8FA109FC9AF4A5F1AB3E8F3A3F2B77ECB5142A629B6F0E837538F80B53B3B3D2EF0CF866926036F52063AD2C3E95241A6DB5EBC985BC0CD1A8E0ED1C649A37E16D35B4E035361B867E8EC57BD4F7E3834369D534C75BB7516FB55F7191B0A57B81CD59B797722A9EB432FAE43794F181F4E401DB35634E7E37B0C7C540D7457BB20A2C7E664E2A9DDDA92A5766E07B5128183D5D5B5475C92297A38CAF54D36DD27DB3C4429E81C74FB1EE287DA68F69657E9791247347D1E09006561EDCF4AD5750D2ADEE6168E440CA47208A4CBDF08A876F224755F6155557F1F6C5594A92F423EB4AA2F5DED6D84303B6E11236421CF6AB1A5C17134A2361956A638BC200480C8598E7B9A60D37C3E90302546734567909AC46429C604B6D19A1652C4E4F142758D4ADA07300B8DCC8704AFBD6977361B2D9C81EA54241FC5626FA1CB7576CC25CB679DC3AFDE8BC7973FEC0DD1E2BE25EB4B0B0D524F324BA9076E3000A9758F0E49A759B5D433F990A8C9CF5C5119B4E487458C58D8086F836FF311BD23DC60F254FB1AEAEC4F3E956B6D342C37EEDD1FC81C0FB64FF8AA1CB1E459328EC5B923339D0ABA9DA40ED9A65F0F48D66A5F1CBF26A66D0D376EB81EA8C6DC67A550777B393CA24ED3F49F8A294D4D710630E2F91AAF89F478AF7408ADAD9407B300C007B01823F22A2D39D1B4F58C0E3CA1FB55F69CB296CFDA844D22DACC0A9011B231EC6A4B62DC46D2D7225460F301B861540C668942C5517D34B16F71BAE70589A628496838E38A458B0A21D9761BE087938E688C7AA0C0E697BCAC0DE685EA1AF259131AE0B8A08C393E86B924BB1BEF35986089999C0C7CD2C5DF8A99DB6DBC4CDCE3776A051DCC9A9CA3CD66DBEC7A51758AD6DE1C6E1BC7238EE29BF8D47D98A69FA182C5AEC44AF2C5C9A3D6F165413C1A5FD27C5B61740413623987055863F43DE9856589D77C4DC7C525C71F616E93DDAE616EF95359D4FA1BB4C66B660AC7B5680D2318892334B5673E2EE5B69862456FD41A6D7B1F463C654B4B2BC11EDB8D9B4770BCD45A847B275551B4ECE64FEC14E0B0A18F90293357B9865D42783CDC88C8568D46493D79A753B29F64DE4E46BE80DAAC68F17F110A9DA3D27BB38F7A59BCB559D307F069AA695A17CB213230C2A7F68A05776E617678773C23EBF75354CA3DEA26AEC59C643919B6C786ED42A46FE225643F49EFED5D4B74186DE735EDBC5852C7BD7240680E2B8782528D80F1B60FFBA6AD36EFCC8F93CE296B5BB7D8EB76A38FA5F1FE0D75A5DF9420671ED48BABD5D155360E48FB9F667834A9AC69125C5FDC98725C72A3DCE28CDB5D969B9E9DAADDA0F32EE463FD553C25C3B2871E7EC51D3252B1EE9A09939284E32323AD1BDB1CA0BC72EE623A7438A34FA6AC9234F0AAF9B821A36380DF3F7C55C1A6E9FAA5C880A185A1418DC36EE27DBDF146ECD7A628A8AC66697B6D2452EF50579CE299FC39E2130A2C375328047059A8ECBE139FF8425D95D7B230C9FD685CBE047F5831946FAB3B8714DF8CD63031C5EC586A7F15D8429E5F9A2490F185E71F734BD717AC75C8EE830DB27A4E3B62804A2D0DB31B6679369D9828464D4BA4C575753AC5B4F971B65988EF5AE092314E5B86967504B6D39AE257C2221627E0564571A8CCBAA4B7EA4EE95C965CF5C9A6DF135F795670D806CEF1BA4E7B0E83F34A12C4197040C7D40834FF001A18B93FD937953D7C42F6F7D1DE425D33E61E0B13F4D42E303681FCA5393FFB1A001DEDD95A36C77C8E9F9ABD0EACB90B2A918EE3A1A738FF0084C82365742761B8F3DC7B51B4236E33C52946C6270EBD7B8F7A2B05EEE0003D47068302D0ACD1A4F1346E32AC314A651F4FBD685BB1CA9F714C02ECA9E6A0D4ED96FED77C6079A9C8AC6B7A61C5E3D24B3BD5DAA4E41F7A61D3999DB763D359FDBDD32908C31B4F20F634FF00E1F9639E350301B1DAA1BA1C5175566842599ADFD6074AE7FED2DAE93CA9821E71C8E9FEA88C9622642075C639A52D5F49B9B790BAC6F8CF55A5578DE0E936BB435437F7B0C68B6F389A35E81FD5FE6A9EA3A96B378AF1131C31382A762F241F9FB5265BDEDEC6F84660F9E298A0BDBB96DC09FA6393DEA8716852945BF44234F8A18555146146107CF735ECD7F6DA2D9E7D2D2F2553B93FEA82EA9E216591E3B700B2F1B8F45A00F2C93E6591CB49BBA9EF4DAE972EE5E84597A8F51F6792DFCD73772CB73973236E3F1565137C65801BBB73541FD3EAC0C37E953413329E474F6EB56E62E885B6DEB2792D808813B467823E6A9984800E338E94582AB70C0007A1355E481B05B2300E3A74CD726710EF0C0906BE4631B8CB100F5C55749A394F3E96FDEA62C472DC8F7140704946541DE4D59B6976B60D0982E4C7853829D8FB5486F9236E393EC285A0D327D5F4B2DFF936FF005FF50F7A8B45D664B0B85121602A39F50BA993607F2D3D97A9FCD4904514ABFCDC6C0BEA66A09C538E3195C9EF468BA7EB71CE88D9C67B55E5BB8E6E5C8C375ACAEDEF5A0988B491A4887763FB55E4F163407648AE08FCD46FC692ED15AF223E99A04F616649708B9F702816BB731699A7C8EA4066F4A8FBD078BC65124678763D862A084DCF891AECCA3D0B112807456EA28A34CB765E8C9DCB323EC5D93D4D91DF939AECB3ECDBDF3ED5F4A004190413C62B8CB632B8C115E81E7B3E3EA0B91C75E6B8180E109E739C8AE8B152B8E57A91DABD60CC72463E73448C08DB4898F5723A633D6A53E5B13B5085519C1342E094890F738EE288195766ECAB2E7ED58CD47FFFD9, CAST(N'2020-08-25T23:36:12.7179438' AS DateTime2), N'969630fa-a02a-4ee5-b471-65ce9a837416')
INSERT [dbo].[Images] ([Id], [Name], [FileType], [DataFiles], [CreatedOn], [idUser]) VALUES (N'dbb3dd37-3990-4e24-4717-08d8494744ea', N'nawress.jpg', N'.jpg', 0xFFD8FFE000104A46494600010101004800480000FFE202A04943435F50524F46494C45000101000002906C636D73043000006D6E74725247422058595A2007DF0003001600110025002D616373704150504C0000000000000000000000000000000000000000000000000000F6D6000100000000D32D6C636D7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B64657363000001080000003863707274000001400000004E77747074000001900000001463686164000001A40000002C7258595A000001D0000000146258595A000001E4000000146758595A000001F800000014725452430000020C00000020675452430000022C00000020625452430000024C000000206368726D0000026C000000246D6C756300000000000000010000000C656E55530000001C0000001C00730052004700420020006200750069006C0074002D0069006E00006D6C756300000000000000010000000C656E5553000000320000001C004E006F00200063006F0070007900720069006700680074002C002000750073006500200066007200650065006C00790000000058595A20000000000000F6D6000100000000D32D736633320000000000010C4A000005E3FFFFF32A0000079B0000FD87FFFFFBA2FFFFFDA3000003D80000C09458595A200000000000006F94000038EE0000039058595A20000000000000249D00000F830000B6BE58595A2000000000000062A50000B790000018DE706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B6368726D00000000000300000000A3D70000547B00004CCD0000999A0000266600000F5CFFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080080008003012200021101031101FFC4001C0000010501010100000000000000000000040203050607010800FFC400421000020103020305050504060B000000000102030004110521061231134151617107142281913242A1B1C11523D1E1525392C2F0F124253462728283A2B2D2E2FFC400190100030101010000000000000000000000020304010005FFC40020110002020301010101010100000000000000010211031221310451411342FFDA000C03010002110311003F00A145C3DA8EBB762DB4DB492E26C67950741E24F40285D6B8575AE1D28BAAD84B6FCFF658E0AB7A30DAB6BF648F6A34BBF50545CF6AA5FC79797E1F967356DE30B1B4D5384B53B6BA5529EEEF2027EEB282C08F98AF325F4CA33AAE15E89AA3C9F8EB9CFCA925571D5A94F22F3640C7CE8B4B39E4D225D4561CDB452885E4CF462320559BAFE8AD582606300B1F5AFB14B4950919DAA5F55D2EE348B95B6BB8BB394C49285C839561907E945B2BA335756428527A0A5F647BF614FF00292D8032DF4C5337173EEE793E02DDF819C56D9DAFE890A09C0615F1423D286123487208045161BB208D8F84F515A751D8A1796454452CCC70001924D59AE7D9F712D8E9C750B9D2674B755E663B12A3C4A8391562F64B636D3F15C37570A85628E468738DE4007E20366B7B9278790AB11CA46083D31DF50E7FA9C27AC46C61CF0F1E3A0048CB570003BD8D58B8974A6B0B8174220B6778F24968723E28C3900D44D8DAB5EDE456D1006495C22E4E37271564269C761728B4E80B1BD7796A66FED0E99A94D672346CF0B98D8A90C320EF83DF46DBD8F696DEF7C83B10DC85F6C736338A745DAB16D57055AEB5A868729BCD36E9EDE710B6197073D0E083B1A6F57F68BC4FADE9D258DEEA2CF6D26CE8B122730F0240CE2859C73423CE271FF69AAEF515164C716EE8A31BE096F88E763E95F0279702BB8DABA88CCC1514B331C00A324D6D9B4363208F1A91ED192DD9989661B0C9EFFE5433C12DB4A52789E391704A48A548F0C835C21AE1E1B653BB381EB938A38D7A634FC1DB4B7BABA7096B1C92C84E3E119A9A4E02D6DC2F6D6E50919C356A9C19A05B693046CB10320EA71566BE25DC9C64526599D70AE1F2AFFA301BCE13BAD3E2E79011DC702A1242E2464208C7956EDAA5B09DB95A304778C5651C55651DA5C73C7184C920F2F4ADC399C9D303E8F9D415A23B4DD42EB49BC86EAD25686EA2F891D7A8AB26A3ED2B8A753B27B3B8D4C88645E5758E344E607BB2066A8F13E240C49A288DFA53278A2DDB44D193A1C92679400CC4E3615C88B23023AD206453D18248C53629500EEC32D2DFDEA700EE5BBC8AF42DBFB25E174B48832DD9728093DB0DCE37EEAC5B43D2AE45E5A3CD6D324533A847642036E3A1EFAF543C6AC177C72F4A7C6551542669D9E31791A4D3B285B9D9C95C7539A001EEA91B76E66881C90AEA7CF39A8C2EACCF86E8C474F3A89BDBA510676A6385B578B43E23B3D46E2133450B1E655DC8C82323CC67350C0F98A567276228251D938B1B1953B45BB8FF0089ECB89AF6D67B3B7923114651A4954067DF206C4EC3F5AAF70FC02E35E80952C22F8F94779EE1F53414C7E155A9CE038FB6E2E82062476A8CA08EE2067F4A2841431D2F11CE4E591366B70EB7ABE9E81A4D1D7B0E5C1912504FD31465E6BAD1E9CF73120E665C80DE351177C1324B7514AB35F332B67B4F7AC67D462A52FEC228B87DA3E5E6092A8CF8D25D7F0BE1B76CA8CF7924D99356D7D2D838F86D5182B11F2DEA0756B21736322A4C6742331C84E7A79D5EEDB856D6F0A4B0C7680E798C8F173B827AEE4D03C4B636FA7D83431F28E5C9D801935BB7940383A7662ECA57E468D424AA9F1A1EED40B808AC093BB63B8F8539036508F03563EAB3CD5C743E31E145594A90DD452491874470CCA7A3007247CE830696ADBD725C3ACDA6EFDA1D9F103E9BA759DA4E85AF21399B9708030D8007E5E95B48F8FF00A583E3D2BC6B15EC968E93C2EC92C6C19594E0A91D08A9C1ED1789F9403AEDF9FF00AE68F162508D445E496CFA54259D92308AFF001320277C1029A8D11637904C99CF4CEE7CE9262786E5D260C1846723BE90AC7DDF973D091D28638ED18A54EC2067943FDD6CE0F8E2BAA77C53509CDA2027A3B63F0A2E3B66F775B825795895033BE452E51A743A32B436572D93D28FE1FBD3A5710D8DEF745302DFF09F84FE068748898C36362457D730F66074E98AE5E505DF4DE6FF008B63B7B65580F3CAFF0008029ABDD4ED06932DBCD3724830595BAE71DDE5598E85ACDAEA3D85ADD4861BE4202C99D9FBBEB570BB8EE6E6DDD2EA784B46719101E61E19C1F0F2C54EE0D3A3D2C79775711BB0D7A4B66778B9BB0070236EA3CEA3F893586BBB49243B46A85BD6A3AE118CCB0A4B27660E5B6E5E6F975C542713EABDA2AD9420040A39C8EFC741FAD6C616E80CD95C62ECAEDAA735C203DFD69C8E3625D17ED671D6B96E42C81A9503E65CF8B66AC3CA4494290028CF117DF94AF69824F8F4DA8A7B158243CC8EAC370ADBED49B27B6F7A595ED9182027E3E84F9EF538F7692D94C26B7B042C8023C6801073E3F87CE8946FA0ED4BA572EED122B7CF2BE76EFA0520692558E389D9C9C728193F4AB25EF6B75C9FE8F658E9F090BD07AD57D652FA8BC92F2E07C1B9006DFE54D8AD50129293E0C5DB99E77B9914024608076DCD0283F76DE1CDB1F1A90BB8FDDE4685E48C480E08CE706A53559A6BAB21864655604858C29071E5F3A56E93E04A2D95E819D508538E56CE7D6B48D03D9CF117105BC7DB4696366D8713CEB824792FDA3D7C879D4AFB17E1682FEE6F75ABC8564482458A08D8654C98C9639EB8C8C799ADAE56519C7DED81EA5BD056B8AF583B57879BF5DD04689A97B8B4BDA3AEEE797940F95573523BE7382483CBE03BAAD7C77AB4771C59A8DC0C15121551E3CA00FD2A8CECF33A9724B33731A425D2A6EA23127C33647735695A56AF15EE930C57D034D222E12656C363C0F8D673226656F0CD58787AF1A17ECB720F4AECB1B566E0938C8B15D988295811973D4B1C9AA5EAB09F7BF2236ABCB412CEB909D7A546DFE8B24AC022E4E291095329C91D914C1132A1AE221CE40A9FB8D264B388B4C50EE3607A66A6745E0E975080BC5346AE0E7B19011BF519F0DB7154295A249429D152499917055B718DBFC6F4F73C93C5DA29185600E719AD2ED383F5868BDDA290411B1CB00FDA8CF711B641F9D46716F039D0B48B6BDED607C388E4650DCCE589209CFA1F9628E32153894FB759A62C3F75919203360D474C862BA955826558E790E467D6972DCCAADD8A459EE385DC9A6144DDA1E586467077508491EA29C9BA12D5003C6CD2B37713E35230DE491A140DF09FBA4ED4584836C463E94AECE1FEAC7D2A6792FD454B1D7F4DCFD8DA28E05CE002F772F311DF8E5FD2AE77AC52D2E5F243F62CF91F7460E00F5AA87B26643C1051401CB75282079F2FF1ABADC945425880A4B3B1FF00757614FBB8A267C934796752B595ACFF006849F667999233FD2C753F52054447F6D6AFFC7BC3F36951451C4FDA5B46C1D547DCE7CE47E5543542BB9A4AF0A1BB38C433671B9CE689D3A7305D21EE26832B91E869D8D4961E26B5AE1D174CD934B78EE34F42133919AFA5B3772446A003DF4BE11D32EDF49827EC83C520FB4A46DEBE157AB3E19691876EEA89D711FC44FCFA547A49BA48F41E5C718DB652F4EE0B5D66786193FD9926592E1BC546FCBF3381E99AB66AFC3E1A6179A7F2C37E83000D9255EBCADE9DC7BAACA91416310820454507A7EA7C6BE8D54AF68FD02E493F53FA55B0C751A67979736D3D900697AADACF65831086ED4F672407660DD31FCFC01AA0FB5BD565834AB748E40076E3240EA71926AD2208EE35CB9D4A3F8423765195FBC06C49F9E7E86B35F6A57E24BCB5B7EBCB9723C3FC6FF4AE72746C629B2A7A5EB1C3F61A8C77D3DA5E34F1B732F291CA0FA6691A7F10E9507106A77D7905E3C1724F66913E0819CFC5BEFD054148399C9E99A6F97E74D5F4B4924BC05FCE9B09EC243F77F1AE885F1D063D690B23B6C73F5A26288BF49547A9A8CA6CDA3D8E311C3BA844DD52E83019F141FC2B43963ED22645C7C6150E7C0924D66FEC754A586AD19756FDE46C3073F75856981724776E3F5AAE1D8223C9C9B33ED7F42935F98ACB041656C5B086593E272C7941E5F2DB6EF26B25D43872E6D2FA6531F6914529884883E12E3A8AF406AD0C5143CEFCAF22A47CA31BEC09FCC52B52D0ECEEE078BB0410C80B72A8C633939F5C9CD2941DF06FFA7F19E65B9B5685C1E5215B7C51BA6E992DDDDA88E26DF6418EA4D6CDAB703DBDDD9BC4AA0C9B9ED0A8CEDCDDF45F0FF08DBE9DC839473A9E5071DD9FE55CD4BC094A3E87F07D835B6911DB3A8E545CE08F2CD5A1DBB28DC2939C1C7D07F1A66DADD6D60C01BF2FF769539E6E619C0C9FCD453631A42252D983962F738CEC18F4F23FFCD35AD4C62D2E5851B0CEA1171E24851FAD3D6879AE198F41BFE39FD6809C7ED0E208A027F756F8793D40DBF127E95D2F28C5E8F344B6B62B1468000A0FE1FC33FDAAF3FF001C5D7BD712DC93203D9E1318F99FCEBD07A8249242E721415249F0CEFF00FAD79A35A904FAC5EC8324199B1E99C52B20FC24690A075FC29A247753ACA479D34C33E54A1C18B1EC36A5AA64FD93F4AEADFC60603FE74A37E8DB0931E7CA6855FE1B71FD355F632D9B8D5E1C9526389806DB382C3F5AD619153779500F5F3AC77D9020BAD62FAEDA422082DC23E36C963B7FE24D6C063B65650B6E5DDBA0E5E62079D578DBD3A459AB7E10DAD2BCB1E6DE58C954C729EFC64607C8D48695771EA1A45BCCA77E40AEA7AAB0D883F3A2A785B94F2C7186DF6555CE71D327CAABFA7D9B59CF7971656D749DA3F6932CD2655881B903A02401D3AD62E3B07D44E48AA5CEDB60FE4D5F72AF6871D79BBBD4D056BA8457D1168DC86190CA762080410451AA3E3CF9FEB4C04E8CB2FCBFBA29177208636638D8EFFDB14EAE07C27A74FC855775CBCED255B5438E6C163E03998FF0A194B541423B3A0EB7BC4F779A62708001CDE1D0511A3C05229EEA5B72D2DDBF3315707957B863BB6A134AB35D56246287F67C641C90313107BBC541EFEFAB0CF0249805F607030A36FC28636FA14A97087D563BAB881E1B4B67477EB248C005DFFCAB04E3FE1E5E1EE20EC6065759A1598F29FB2C49047D467E75B4F13FFABF4D79E2965CA0CB04948207979ED93E95E77D76FA4BDD56E25F789275E6C2C921C923BA867D198B9D00CB83B28CF98A4B4920EE51FF0028AE76A3940C127CF1486947F57F8D2B57F83F68FE9FFFD9, CAST(N'2020-08-25T23:36:12.7214633' AS DateTime2), N'5336787f-349e-4c71-815a-e9c1090a14bd')
INSERT [dbo].[Images] ([Id], [Name], [FileType], [DataFiles], [CreatedOn], [idUser]) VALUES (N'362e4c88-97b8-4bb2-4718-08d8494744ea', N'oumayma.jpg', N'.jpg', 0xFFD8FFE000104A46494600010101004800480000FFE202A04943435F50524F46494C45000101000002906C636D73043000006D6E74725247422058595A2007DD000C000B000E00390009616373704150504C0000000000000000000000000000000000000000000000000000F6D6000100000000D32D6C636D7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B64657363000001080000003863707274000001400000004E77747074000001900000001463686164000001A40000002C7258595A000001D0000000146258595A000001E4000000146758595A000001F800000014725452430000020C00000020675452430000022C00000020625452430000024C000000206368726D0000026C000000246D6C756300000000000000010000000C656E55530000001C0000001C00730052004700420020006200750069006C0074002D0069006E00006D6C756300000000000000010000000C656E5553000000320000001C004E006F00200063006F0070007900720069006700680074002C002000750073006500200066007200650065006C00790000000058595A20000000000000F6D6000100000000D32D736633320000000000010C4A000005E3FFFFF32A0000079B0000FD87FFFFFBA2FFFFFDA3000003D80000C09458595A200000000000006F94000038EE0000039058595A20000000000000249D00000F830000B6BE58595A2000000000000062A50000B790000018DE706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B6368726D00000000000300000000A3D70000547B00004CCD0000999A0000266600000F5CFFDB0043000503040404030504040405050506070C08070707070F0B0B090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F13172224221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1EFFC00011080080008003012200021101031101FFC4001D000002030101010101000000000000000006070304050801020900FFC4003A100002010303020404040406010500000001020300041105122106311341516107227181141532912342A1B108242533D1F05282A2B2C1E1FFC400190100030101010000000000000000000000020304050100FFC40023110002020203000203010100000000000001020003112104123122411351617114FFDA000C03010002110311003F00E868A30476CD4DE163DABDB71DAAC9184CE39A06F2696666BC78CB790AAA4C32ABEC6562A70403DAB4655C21AA3F8281638A41185727208E3BF7AC9E53108710D7D93D9C388578F7ABB1C3C0AF628F68518EC2A74009031577197AD6044B9CB4FE48805ACCD48EC82593D326B68E15338A0CEBED66CB4DD167125EDBC533290A8D2A8639F6CE6BB7E71A9ED4A36970AFC938C9C91E95A5048ADC671EF4B5B3EADD2179FCDAD80F3CBF6FBD12E93ABDB5FC3E25B5CA4AA7FF0006A0AD1B1B116581F216875C57B1B2F6AC45B8381C553D4B5FD3B488BC6BFBD8EDD31DD9B93F4147D0C1EE01855C7B57CB1E31421A6F59691A859BDDDBDEA88A3196327CB81EBCD6647F13FA65CB67528D141C0273CFBFD2B856316C10FA568C29355830D990793CF342F6FD67A1EA444763A8C333B7F2A9E6AF3EA5095003F6A4329CC72B8C43DB75C62A720EDFAD4700F947153B0EDC55CE7506559A2F1232A4919F315521B69A3952379BC541FA723E65FBF9D699041F2A8C0FF31B9B002AD65F257B617FB094E27D918E7B50CF5375FF004C74E2917F7CA66E408A2F99B3EF8ED437F13FE220D1A296CB4F6896765204AFF30FB7BD7395F4D777F7B35EB096E2E25624E57273EBC56B555F6FF246F6E0EA333AFF00E366AFA9A49A7E8710B08245285D7E699C1E383D97EDCD292F2F25DE4CE374ADE44966FB9AD28B46BC8ED9EEAE5444B8C6F7FD5F4515917526D6912DC300A70CCDDCD548ABF510589F6571BDB33BB1857C863935ABA35D6B02449F4E792368BB303C1AC9489A79238C23316E000D9FDEB6A3966B506DADA588A463748E73C1F4FAD0D84013A90D74AF8AD7B631341AB59F8EF18C6E56C12681BABBAB2FBA82F9AEAFE510C3C88E18F9DA2B1EF98B4CCB3B6771CF0306BCBCD3D60B41782E1648DB82157B1FAD02850611CCF9FCC5238C2C11CACBE659B8FDAACD8F546A162D9B6F09370C1564041F6E6B1DEFE28461222ED8EEC38A8CC97571974645C79018AE3007D9C04C2197A9AFA49D6E1E382DDD4EE0D0A0539FB515693D7BA8EA7756F6FBE28517FDC773CBD295E795DBE67C30ED9A8CCCE01CB30653CE0F14B6A837908399FA3B6FD85583826ABDB76153AF26976196CFEDB96A0BEB9BB682097F0ED2031F2FB4E4B7B5175D5C0894818DC4606683F5CBE8ADD0C0105C5CCBCAC6BC163FF1505ABD9840638139FB59D2B5FEA3D61E78ADE75B6793687B85DB83E7ED8A24FF004BE9BD34E9B62E8F376B89CC7904F9807D28AF557BEFC334536CB8BA9810B1C03E5841F21E64FBD2FBA934A91DEDB46D3944B7F392F32AFF00273C0357A59DF0A7C9215C41ED6C437370257BC793393B429DB9F61E42B12E6D412CB26523EEA9E6DEE68D6F7A4DF42831A84799DE32E09C9E3FB509DE222CCC4B0DCFC6D0A41C55A8CB8D4020C8743B59AF6794A5CA5ADA449FC794B638F418E49AFABC586EA616BA6C2EB6101CCD2960A0FD4D797B2EA97622D2A078D630373247B4051EE7D6A86A72A2C69A7DBB82A9CCA48C166F3FAD29864E61AFEA57D5A48A6BC11DB29DA3E5247F37D298DD21D10B7FA4A35D6EF0C8DDB738C564FC3CE98FC65CC7777316101F941A7DE8DA5C6B68B1A20C05EC0D6672EF73F1AE6971E8503B3C4B7527C3DB44B671046410095279A53B5BFE1B50685D4B188915D73ABE92A6170413C1E315CC9D536515AF55DFC08EA42B16C03DBEB4BE1DD6762B6187CBA53A865105E16FF5096DE78C10C78F6CD50BD052575C92CA76F6C71F4ABCEAB26A4D22E172A4F04F1553546494092357E47CCD9C827F6AD6073A9944627E8E5B9C2FD2A643C66AAC4DF21A9727C33838E2A4B5B72E13CB9F0A28249DF19231B88CE282B539ADA59651090AF8C171FAB1E9EB5A5D53E38B5282F1626642C199B038A4EC4D16873DD5DC975F8ABA9240637965F98FAF1E9520219C88A731870E8EB0413DD8B8717041DB91C2E7E94AED0DE0D53AC1B4BB5F91D66325C5DB8E5B6F719CE7159DD6FD6FABDFCC63B2BB6B6B50986DBC1CF980739AD2F87F6B6769D3D7FA95FB482E2E6331C52670406C8C8F7AB2BABF1AF66FB88C863083E224EFA969D19D3C2DD4708642C887606F7269546068EE504D0E65C1DDBBB67CB14CDE9AD721D1AC1B4ABEF19E0652E37F603D4B67B67CB14BFD6650353B8D41E650A58B2EE19CFB0C53F8E48C8309C4CBD448B4B616F6EB1AEFFF007240DF313E7DBCBEB5074AE8C6EF5A2278FF004F3B48E0D5BBB85AE6E6D22252333B07CB36011FF35BB05E695A4EAC92DC4AB6A0C7875209DA7ED5CB7B1185874850D968CBE8CD1F3028545C2F6C2E28EAC2030C640653C7AD2D7A775DD32F2CB717D62E2D587786D9E389BEFDCD79D41F95496C64D1EF66B2993B2BB30FEF52A51D065C1CCA8DC58E161EEAAEE22650067040CD72E6A6887AB35CFC5856B805B0C06147B538B40D57537B709777F1DC95E33BB26945F10C7E55D6B7175328786E57BA83FF007348AC8361023EC38404C04BB012E001952CBF5CE7DB9ACEBA468ED92266DCF924AE3B55FEA36983C73C20C71F75EE4FEF54EEE66BC28E158ED5C019F3AD1071329B6713F4510E1457F5E422E2DFC22CEA0FFE2706A2563F28AB01BF48A92D6F919775D4CEBDD2DAEFC3B79550A0FD2CE77114BCF899D29696308B9221642DF2A88B7484FB629AEA49B919EC0555EA896DA3D06E9EE4A84F0C8E719248EC335271BE6598FD1816A6A720DC4B6F3DE871004815F90EF82F83CE69850F510B9D15A2B48A3B7860D870464051EB81437A9D969B625D5ECD77C9B98A2BFCCA0F61F4A9F409DD7A42E120F90172A5DF2720F903835A6EE1D448D41125B6B9FCD3449D6691AE2E6F2E709215DB841D8826B07A961B787508ECADE3CABC8A8594100FAF3E7CFB51D4245A694BAB08D9258600A1C9E07F6A18E883A66A3D70D26AF207748D9E3576232FE4323CE96B6FA4466279168F6FA86B5725B13C5671A850582807F619FF00F2B37ABF431612586AAAFE386601E261F203E407B55FBDD472DA85E0B6779E6BA08412E5114718ED83F73477A0E810F5268C63BA40A401E1E470A4577FE935B298E5A4329CC16B3B1D6751B94F0E5315B000151FA40F41E43EF56B48B1B95D4AF20D6E5BFB3B411B185E3D9807CB1B47CC7EB8A6C69BA3A595995B9D3AE73DF7C29BD4FEDCD65EB171A3C4877DBDD311FCA6D9867FA578F22C19247B3AB42B622C174BBA361717A75416B3459314AC4217C76C83DF3E949BEA7EA1D535DD47FCF08BC48F287C35C038F3C7AD3F2E3A7AF3A835B334AB2D9E9F8DBBDC11B17CC283DD8FAF61405F1A740D2F42D634C9F4BB6586D517638419C8F53EA6852D45601B64C3B12C6048F0457806EA316934BB0E7F86643E7E9ED5561B57B7BB16F33A60372632083F422B57A9A2B1951E58275727F481E5593148D6EF1C92812103014F9D3F3D849000A773B7EFFE27740E9F2EDB9EAAD373DB1149E27FF106AA1F8D5F0D51C67A96261EAB04840FFDB5C4065390370C7957D78CE472D8F6A23C352724C01CB7C793B51FE3B7C3786491FF00399E4C7E911DA39CFEE282BAFBE3AE8BA91169A31B89E06C1226B509CFB1273FD2B98C48C541241AB16FB9DC051CD72AE0548BD4407E4BB46AEA1ADDBCF7C2E27DF99146632739CFFF00544178047A4ACB1E4C31C6A522DB85DC7B9C669456D312F147B87EA00961DE9B335E46DA5C5689E12CAC8A18EEC0DA07F4A5F26B15750276A62DECCBD77AB6FEE74A8E0B8510440ED48C2FCADEE6A2E99D2E58E1935AB8F08B265D033E39F2E2B3BA8604BBD7A08049B9225048FD4AA0510EBBAA4763A10B38FC5FC54EBB9A35C6D50781C79714031A0BF7180FD9999D0F72756BCBFB495259EE1E5F1142E362F3927FE8A7474D5C36981130369E47A573F7C3CB86B2EB3512940DBFF97B7F4A7CDD0F15119324119FE1F91F7A879C0A38025FC53D961B0EA5296D99195140EE4F143979AAEADD41BD74A94C16AA70D3630CDECBFF003417D47A8196F60826697F0CAA5A458C125F1E58A2AE96D68CFA746FA7683A84900C867544C8C77F9776EFE95EAC3D83729C05F26B5BDD68B66891DCDE4AEE3870CA49CFD4D2FF00E35CFA13E8E7C39D19DBF4A9C706AE75D758C4B03DBAE9D7F176DDE259B29C1FA8E2923D43771EA3A9BB3ACD6A76E555D7963E5C79579683D86635FE29994BA935284E809190BE21F94103BD0BE8F61A86AD73F87B3B79AE662A488D149381C93C7A5686A50B5C48630A4A40B81B7CDA9EBFE143A3B4ABCD0B56D5F5087F112CAC6D766E60163232C383E7572B05185FB993666C79CD59E063BFB9AF55B271516ECF3918A9148238AD29992741BB00568DB811C607C9BBCC9AA768360DFB8827B54EACC73939A21A104CB314EB148B231231CE07028FFA7F515D4A05BCBB4D9696C036CDE33211FD69613C848DA3273C62B46C26B886DB62CA403DD734AB105B1887A88789742EA795B4F814F88483E58F6E6BE34C822B8BDB8B6BFF0018332E55B3BB071E59ACBE83BE6B6D58232EE597E53B8E00F7A68EBDA2C7A7E8F2EA2632CE4AC4EE87F4EECF231F6A8AC535B6BC9556439C7DC58A69D3DA6A125D4126E303E781DC5383A635CFC6E9684E0305C1E6B26CB41B3FC0E634525D7971E754EDE16D1EE498D89898E0AD47795B863EC4BE95290CF44811F5E8EEA740C36919F2AB7AE37E4976F7B6BA849A587E44B145BA373E41C790F7AAFD2D7905DC581264F96DEE6B6F53B75BAB378198723073E9E94BAED35832B423B64C12D77E2FEBE9A7C968BF934B32283E39466C91ED9C50AFC3FF0087FAAF5C6B6FA94D792CE25CCB7974E980A49E1067B9C7D8543D4DA3695657E0A408BF3649AE91F85516931743D8FE51247240CBB99D3F99FCF34D56373000CEF29AA1A440221E1F8457B375CEAFA35BA95B5814344ECFFAC30E0923EFC53BFE1EF47D9F4674EAE996ACEECC77CACC7BB1F4A2B8ADA281A4640774ADB9D89E49A8E7EC69F4F1BA1EC4E6465B38189F9A0A46467B55AB7557209E00AAB1F97AD5B4251063EF5A69310EA5912027E5CE3B57D09005F3AAC8C3BE4835E3B82BDE88B6A700DC9A1FE2CC3233CF6CD6B2A613B2FB60D66D805C125727D735A4BEEA057506B33CC77377A5631F890F827040AE90D3ED12FF00A25A19E3055E062589C9E3201FE95CF5D3B6D2C16B15C11857720123D2BA2BA2AE2397A64094AE36327EF923FBD44EFA653FB12A4015D1C7A0183CDA53E9DA5C72DB31B98027F1100F9E23EBEEB42FAC4CBB5990EE1DC1F5A3DD5526B3D38EA1A77CDB23FE20C67701C9FB8FEC6856E2FF0041BF844B75A2DCACA4677DA4A029FF00D3E552DF4216CD6657C5BDEEAC5857FDC7A0C0A8F51BDB19BC6818A907B03DE8B65D7B50B3E97FCDAEA1088C391BFE6E735424D434F81C2E99A4049C9C096E49761EE076FBD69754DA24DD0DB19E59A43B1A43EA5837FDFB57952A64F97B987F96C160C697FB14FD45D4CFAC48EB0B346BCE09A697F856EBD8B4DBF9BA57539C476F39325BB31E15BB91ED9EF482BD260B974C9051883577465B8B899A6B6F11140F9CA0E6996A2D6B9593A3BD8FB9DA579F16BA3ECFA8F52D1AFAF0DAFE00856B97E6391B192AB8C92452D7AF7FC4015DF6DD27A6704605E5DAFF00558C1FEE7ED48B9E3955B749BF04646E1827DEA19D329844218E7911FC98FAFAFBD47F9D8FDCAC8FD4FFD9, CAST(N'2020-08-25T23:36:12.7306596' AS DateTime2), N'd33ae2d8-599c-4d3a-884f-b61badc9c77b')
INSERT [dbo].[Images] ([Id], [Name], [FileType], [DataFiles], [CreatedOn], [idUser]) VALUES (N'c01f46ed-c2c5-4e16-4719-08d8494744ea', N'tom.jpg', N'.jpg', 0xFFD8FFE000104A46494600010101004800480000FFE202A04943435F50524F46494C45000101000002906C636D73043000006D6E74725247422058595A2007DF0006000E001200070011616373704150504C0000000000000000000000000000000000000000000000000000F6D6000100000000D32D6C636D7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B64657363000001080000003863707274000001400000004E77747074000001900000001463686164000001A40000002C7258595A000001D0000000146258595A000001E4000000146758595A000001F800000014725452430000020C00000020675452430000022C00000020625452430000024C000000206368726D0000026C000000246D6C756300000000000000010000000C656E55530000001C0000001C00730052004700420020006200750069006C0074002D0069006E00006D6C756300000000000000010000000C656E5553000000320000001C004E006F00200063006F0070007900720069006700680074002C002000750073006500200066007200650065006C00790000000058595A20000000000000F6D6000100000000D32D736633320000000000010C4A000005E3FFFFF32A0000079B0000FD87FFFFFBA2FFFFFDA3000003D80000C09458595A200000000000006F94000038EE0000039058595A20000000000000249D00000F830000B6BE58595A2000000000000062A50000B790000018DE706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B706172610000000000030000000266660000F2A700000D59000013D000000A5B6368726D00000000000300000000A3D70000547B00004CCD0000999A0000266600000F5CFFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080080008003012200021101031101FFC4001C0000020203010100000000000000000000050603040102070008FFC4003F100002010302040206070604070000000001020300041105210612314113511422617191A10732425281B1C115236392A2D124253334435354626472F0FFC400190100030101010000000000000000000000010304000205FFC4001F1100020203010101010100000000000000000102110321311241042213FFDA000C03010002110311003F00E7BC9EC35EF0CF91AF02DDCD6727B934A6C291AF847CABDE09F2ADB27CEBDBE37346CD46BE037956A6DE4F2A19AB6A1259E1230399BBB6F4126D52F265E569481FF68C66B28DECC1FBCBC8ACD80775273BAA9C915AA6A76529C09C2EFF0068114AE49AC575E102C728A48267E58EE222DE5CE2AC0B76FBC9FCC2916AE5A6A335AB8F58BC7DD09ACE21B1BBD19B3D57F9857BC03F793F9AA95A5D45791968C9C8EAA7A8AB58A5DD18C9831F6D3F9AB4310F35F8D6DCB9AC72D6D04F2AA83BE0FE352AF27FF1A882EF522C75ACD44B8AF62B602B3CB468D66B8DAB476088CC760064D4D8A17ADCFE169EEA3EB487907EB47C805CBFBC7BD9DA43B27451E42AA0527A0A939D476CD58B481EE65088BD7CFB574DD2324DBA4546523B1AC729EB8A262DE23318DE408B9FAC6A59AD1679561B35E68D7AB1EE6B9FF4474B1B03806BD8229B2D3869FC2E67FAD556FB87E5850C98037DF7E95CACF1BA1AFF003CD2B025ADCC96B3091091BFAC3CC537C32ACD1248BD1864526BC455881B81DE8D6877870D6F230F5774CD75256AC4AB4E83958E5AC78A9DC8AC78D1FDE1F1A59D1B01BD4A2A0F48887571F1A9D086008DC1A2064E16B25456723CC568CEA0F519F7D7760A32452EF12960907964D1F32293804507E208BC4B00E3198D81F8ED593D85AD0B11273C817A669A343B5589092376DBF0A5BB45E6B85A63B559E460B14A235EE71BD2F337C1DF9D7D196CB45B4724B5BA30639F58671EEA3916996B142046B129FBAA00A4D31C36F0F37ED79D48EBCA76CD49A75D32B9CDD3CC18EE4F5A925175765719EEA86C36AA3D98A0FABB58344D1CB347E5B9ABB79A8FA3D9897958AE3734952B2EA7378AEACB0E7000EFDFF435CE3836CEF264F28AD7D1DB08F10CB1B67B035534650F7EE187D83576ED74F30AF856AC85D72AEC0FADED159D16DBC3696620EF855FD6AD834A3479F9136EC29E0AE3BD60C0B521703AED5B67358E28ADE888CDB8ABB1285503CAA3153478C575F014331E1E8D150BDDC0A594300D1B6707F0A52E24D321B1D6B4D67BE8040E70F2AAB62301BA918C9EBDA9E78A6365D360F0DD91BC180E54E0D2DFD20689058F0DE8D721AE1AE27F59CC8E197EA8271DC75159BD852B17A78AC20E2944FDAF6925AC9181E931F318C123A1DB23E159D56C6C6CF5B8D65D46D6EEDE5B624BDA9320CEF807A60D2E3C402ED53DAC2239D0B01E759B4958C8C1B3D6D6CD0CE320E0E707CE99ED2D4490040BBF73552E3C392081914064CF31F79A3DA38568C311BD4B9277B2BC58E9D15068B09B6F0DD4E727D60704838C827B8D855F8EC9EE2E0CA428380B9550A303DD46BD054C6AE40C1AD072063CF958946E54753E5497924F43D628A7650BDB432D9490AAF300BDE97EC2155B592D994B412302CBD891D323D94F367A869F0D849E9104B1990EC66C02052A7896E2E246B78D97F7C3979BED03D76AD16D59DCA2A4C8A7D1D6E8460B90918C28EC0790A057DA7DCA7A63C1CC63B78F9A421B18058007E269EEED112124100819AE7DAECA6497662327700F5A6E09372D93FE984547459B0D2A79EC60B99189561CC3D7DFAFBE890428307B559D3979744B35FE10F9D6241545EC85C28A925C450E3C47099E9935E5D46CF1FEE23F8D07E23C05B75F32C697F7A628DA14DD33BCF158FF000F6ABFC3807F4D0CFA5370740E1C8360CB6E5C8F2D94518E308F0605FBBE08FE8A01F4A09CA9A5AF2B8E5B353BB64751D3CBA52E5D1D8D70E6EF16CFEC19AB022DD3A6703F2CD6EB18669C019C2FF7AB1E1812C633D580FE9AE1B298C4962476570B904A11B771457479C88541EA2A1B588F3C80647AA3E759B0C23B2791A4C9686C5D490CAB7A440467A8AC0BA8F93C3E6000EB9EF55210A54AB1ED5241A74687C4E40EC7724F7A5249747F49E468DD37391EEA03713A412B1CA820F7ED4C2F7ED6E81174CE6206ED91BD00D4565BA94B34090A139EB935DD234AAB445737D23DB9C9E83B528DEB78B2F351EBF902DBF84BF58ED4B9CDCECE7CB34FC51AD91E4936D263D5AAF2E996A3CA15FCAA39455BE4E4B5857CA351F215564AED31535B15F894FEFADC792B1F9D01A35C48737B18F28FF53416A88F0925D3E86E318FFC6A279326DEE4140BE948937D6F098F90C56318EB9CE4934CDC6B1B7ED90AA9CC7C60B8CE3EC0A59FA4C407886E50737A96E8BEB367B676F8D23274A30ECE7F0216BE910775FEF56655E59A1CFF00CFC7CB159B25FF003693FF005A9A74CBDB6D9CCE4FCE95F4AD703BA369CF7D72218C1E690AA8FEFF000AB7C51C372685AA78F12B1B29F0636FB8DDD4FE74D3C03A6B3ABDE32ED8E5427E74F3A868F6FABE9B2595D2E6371B11D54F6229D187F3B25CB95FBA5F0E18AE400C2AF5ADDE0E09AF6BBC3B75A2DF3DBC9CD8072ADD030EC450465B84F2353CA08A2392433CD79032018C1EF4BFA8DC0653C83A552965B83B9F91AA9278F3646FCBDE8471A61966925A458B2B22D7315D5D4798592578C67A945EB8F2CD29C032ADEDDABA4BE9970740B3D423848B58ED665671BE095C8CFBF7AE790C78E514F8E90A74DA68E873AE1147928FCA87C8289DD2EF8F2DA86CBDE8234FA27F111FF3203CA21FAD07A2DAF1CEAB20F2451F2A1354C78452E9F4F713A07E2120FF00D581FD349FF48485F8C352DB03600673F605396B997E25C7FE5671F2FD69638A2CAE352E32D4F95000B70559B3903000A4E456CA3F3B49DB106C6173A9CDC8A59B0B850373BD39E93C1E2E5A092F99B96325BC353D4FB4D19D178720B362F1C7CD33FD690F53ECF75364765E043CBCBEB75268287D34F337A45DD22D52D2CE38E3455006C07614623427A9A13A74BCCBCBDC5178CE314E5C267D07EBDA0DBEB36062997D65DD5C0DD4D718D42C24D3AF65B3B852B2A1EFD187623D95F40A1CED4A9C47C2F67AF5D242D76B04B11E61284E62A3BA9F3CFB697971FA5A1D872F87BE1C627B518C815043699C93EDAEB7AD7D1C595B68D2DC58DC4F3DCC285CAB800381B9C01D0E37AE731C5FBD0A46054FE5C1ECB3D4722FE4EA3C07A5C173C05656F750A491CB0959118643024EC6B98F16FD17DDE85ABB4BA6AFA469CEC197D61E24409FAAC3E383DEBB3F0BC634FE1CB08F6C780ADCCDB00319DE866A1A88BFD59BC5CFA291E12B63A8F33F8EE2AB9579208B6A472CD42129230C5069948CD74FD43424695A199067B30F2EC41A4CD7B419F4A9473A9313FD47C5252A1EF27A395EB4DCDAB5C1F2207C850DA21AB6FAA5D1FE211543BD511E134BA7D39ABACB271034D1360C7331C11DF231F954A968F34AD2CA4B3BB16663F689EA6ACDADA1272DB93B927A9A310DA80B9C507B76629DADB08B071BD168543C4CA715108B1EEA9E01CAF8EC76A0604599F0AF193B06228EA48BF0EB41E1426FA638E8C68C0852680961938D876AD10B237BB91FD4B71B9FF887A0F75496D66913072725BEB13DCFB6B0879ED9481EB26D5346E3F035D2390945142F1E393D5C72B2E7B795711E27D15B45D72E6D803E1E4B447CD0EE3FB7E15D9A298C4E37DBB1FD0D04E3AD09757D0DAF6DD73716A8CD81D5931B8FC3AFC6B89C7D21B872789169E144E142AA32890205F80A096304734851D41523041A3173372F06DA107FD586251EDC804FE55434C88860E4516B62FE18B8B372B1DB3119427C290F71F74D7AE34C8B56D2A5D3AE9009946539A8B4B1ACB1F2B0C8AA928730B447FD65198641DC8ED468167C9FC47632D86BB7D6F32F2BA4CDB7B3391F2A0CD5D2FE976D146BD06A11AF28BA8B0E3C9D4EFF009D738923023460E0B1EABE559059FFD9, CAST(N'2020-08-25T23:36:12.7337529' AS DateTime2), N'97ba7c94-1fb8-463d-9559-cf8b9bdd5b06')
GO
INSERT [dbo].[JuryAssessments] ([Id], [UserId], [GroupTrainingId], [TJAId], [consultantName], [Comment], [status]) VALUES (N'e82656a6-12f6-4904-b415-b7842b05c44e', N'617bb4b2-a41f-425a-8b42-7e2c176600b4', N'50f33216-51db-446d-abb7-3c015d7aab0d', N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'Fahd', N'', NULL)
GO
INSERT [dbo].[LFormerAssigned] ([UserId], [TrainingId], [Date]) VALUES (N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', N'a5b90560-5365-422f-830c-3ed64e8af1d2', CAST(N'2020-07-27T18:18:52.1466667' AS DateTime2))
INSERT [dbo].[LFormerAssigned] ([UserId], [TrainingId], [Date]) VALUES (N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', N'a5b90560-5365-422f-830c-3ed64e8af1d3', CAST(N'2020-07-27T18:18:52.1466667' AS DateTime2))
INSERT [dbo].[LFormerAssigned] ([UserId], [TrainingId], [Date]) VALUES (N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad', N'a5b90560-5365-422f-830c-3ed64e8af1d4', CAST(N'2020-07-27T18:18:52.1466667' AS DateTime2))
GO
INSERT [dbo].[LJuriesAssigned] ([UserId], [TrainingId], [Date]) VALUES (N'617bb4b2-a41f-425a-8b42-7e2c176600b4', N'a5b90560-5365-422f-830c-3ed64e8af1d2', CAST(N'2020-07-27T18:20:40.4066667' AS DateTime2))
INSERT [dbo].[LJuriesAssigned] ([UserId], [TrainingId], [Date]) VALUES (N'617bb4b2-a41f-425a-8b42-7e2c176600b4', N'a5b90560-5365-422f-830c-3ed64e8af1d3', CAST(N'2020-07-27T18:20:40.4066667' AS DateTime2))
INSERT [dbo].[LJuriesAssigned] ([UserId], [TrainingId], [Date]) VALUES (N'617bb4b2-a41f-425a-8b42-7e2c176600b4', N'a5b90560-5365-422f-830c-3ed64e8af1d4', CAST(N'2020-07-27T18:20:40.4066667' AS DateTime2))
GO
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'cd05e7cc-c409-43b3-ae2e-2b465ba86b17', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d227', NULL, N'', N'0')
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'65a1ffdd-0160-4194-a697-559ef4ca5d93', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d228', NULL, N'', N'0')
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'd54d91e2-4725-4ea5-a366-5bf6a95b332a', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d267', NULL, N'', N'0')
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'8cd35403-a994-44fc-a0d4-78539568c3ab', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d217', NULL, N'', N'4')
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'fc4a4e44-ca20-4aba-9a9a-9309f588e3bb', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d2b9', NULL, N'', N'0')
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'2478b5d3-92a2-4e7f-b5b2-9b4a78e0f72a', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d247', NULL, N'', N'0')
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'fdb217b8-896b-4cea-9eab-c3ec6069e75f', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d238', NULL, N'', N'0')
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'a3145913-72d8-4d3d-830a-c9f44b04e561', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d218', NULL, N'', N'0')
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'866dcd3b-9160-4977-9b9b-cf9834b99ff8', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d257', NULL, N'', N'0')
INSERT [dbo].[Notes] ([Id], [JAId], [CriterionId], [CriterionJAId], [comment], [NoteJA]) VALUES (N'9c961daa-6043-4ac7-a9f4-e1b393416a43', N'e82656a6-12f6-4904-b415-b7842b05c44e', N'1473186f-a2b9-4887-8122-771cfcb6d237', NULL, N'', N'0')
GO
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5a3', N'a5b90560-5365-422f-830c-3ed64e8af1d2', 111, N'salle 1', CAST(N'2020-08-14T12:00:47.1234567' AS DateTime2), CAST(N'2020-08-14T08:00:47.1234567' AS DateTime2), N'seance 1', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5a4', N'a5b90560-5365-422f-830c-3ed64e8af1d2', 222, N'salle 2', CAST(N'2020-08-21T12:00:47.1234567' AS DateTime2), CAST(N'2020-08-21T08:00:47.1234567' AS DateTime2), N'seance 2', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5a5', N'a5b90560-5365-422f-830c-3ed64e8af1d2', 333, N'salle 2', CAST(N'2020-08-22T12:00:47.1234567' AS DateTime2), CAST(N'2020-08-22T08:00:47.1234567' AS DateTime2), N'seance 3', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5b3', N'a5b90560-5365-422f-830c-3ed64e8af1d2', 1112, N'salle 1', CAST(N'2020-08-14T18:00:47.1234567' AS DateTime2), CAST(N'2020-08-14T13:00:47.1234567' AS DateTime2), N'seance 1 aprem', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5b4', N'a5b90560-5365-422f-830c-3ed64e8af1d2', 2222, N'salle 2', CAST(N'2020-08-21T18:00:47.1234567' AS DateTime2), CAST(N'2020-08-21T13:00:47.1234567' AS DateTime2), N'seance 2 aprem', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5b5', N'a5b90560-5365-422f-830c-3ed64e8af1d2', 3332, N'salle 2', CAST(N'2020-08-22T18:00:47.1234567' AS DateTime2), CAST(N'2020-08-22T13:00:47.1234567' AS DateTime2), N'seance 3 aprem', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5c3', N'a5b90560-5365-422f-830c-3ed64e8af1d3', 444, N'salle 1', CAST(N'2020-08-14T12:00:47.1234567' AS DateTime2), CAST(N'2020-08-24T08:00:47.1234567' AS DateTime2), N'seance 1', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5c4', N'a5b90560-5365-422f-830c-3ed64e8af1d3', 555, N'salle 2', CAST(N'2020-08-21T12:00:47.1234567' AS DateTime2), CAST(N'2020-09-21T08:00:47.1234567' AS DateTime2), N'seance 2', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5c5', N'a5b90560-5365-422f-830c-3ed64e8af1d3', 666, N'salle 2', CAST(N'2020-08-22T12:00:47.1234567' AS DateTime2), CAST(N'2020-09-22T08:00:47.1234567' AS DateTime2), N'seance 3', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5d3', N'a5b90560-5365-422f-830c-3ed64e8af1d3', 4442, N'salle 1', CAST(N'2020-08-14T18:00:47.1234567' AS DateTime2), CAST(N'2020-08-24T13:00:47.1234567' AS DateTime2), N'seance 1 aprem', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5d4', N'a5b90560-5365-422f-830c-3ed64e8af1d3', 5552, N'salle 2', CAST(N'2020-08-21T18:00:47.1234567' AS DateTime2), CAST(N'2020-09-21T13:00:47.1234567' AS DateTime2), N'seance 2 aprem', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5d5', N'a5b90560-5365-422f-830c-3ed64e8af1d3', 6662, N'salle 2', CAST(N'2020-08-22T18:00:47.1234567' AS DateTime2), CAST(N'2020-09-22T13:00:47.1234567' AS DateTime2), N'seance 3 aprem', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5e3', N'a5b90560-5365-422f-830c-3ed64e8af1d4', 777, N'salle 1', CAST(N'2020-08-14T12:00:47.1234567' AS DateTime2), CAST(N'2020-09-14T08:00:47.1234567' AS DateTime2), N'seance 1', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5e4', N'a5b90560-5365-422f-830c-3ed64e8af1d4', 888, N'salle 2', CAST(N'2020-08-21T12:00:47.1234567' AS DateTime2), CAST(N'2020-10-21T08:00:47.1234567' AS DateTime2), N'seance 2', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5e5', N'a5b90560-5365-422f-830c-3ed64e8af1d4', 999, N'salle 2', CAST(N'2020-08-22T12:00:47.1234567' AS DateTime2), CAST(N'2020-10-22T08:00:47.1234567' AS DateTime2), N'seance 3', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5f3', N'a5b90560-5365-422f-830c-3ed64e8af1d4', 7772, N'salle 1', CAST(N'2020-08-14T18:00:47.1234567' AS DateTime2), CAST(N'2020-09-14T13:00:47.1234567' AS DateTime2), N'seance 1 aprem', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5f4', N'a5b90560-5365-422f-830c-3ed64e8af1d4', 8882, N'salle 2', CAST(N'2020-08-21T18:00:47.1234567' AS DateTime2), CAST(N'2020-10-21T13:00:47.1234567' AS DateTime2), N'seance 2 aprem', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
INSERT [dbo].[Plannings] ([Id], [TrainingId], [QRCode], [Location], [EndDate], [StartDate], [Name], [FormerId]) VALUES (N'008d0d05-f98c-4d45-ad08-3fb03b2ff5f5', N'a5b90560-5365-422f-830c-3ed64e8af1d4', 9992, N'salle 2', CAST(N'2020-08-22T18:00:47.1234567' AS DateTime2), CAST(N'2020-10-22T13:00:47.1234567' AS DateTime2), N'seance 3 aprem', N'3b77b74e-fe0f-4e97-9e7e-8b635d7807ad')
GO
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a10', N'Le volume horaire exigé est raisonnable', N'e9136565-7b15-4525-a0b5-e8cd63070a61', 7, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a11', N'Le formateur sait transmettre ses connaissances (maîtrise son sujet, exemples pratiques...)', N'e9136565-7b15-4525-a0b5-e8cd63070a62', 8, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a12', N'Le formateur sait mobiliser les participants (donne envie d`apprendre, fait participer...)', N'e9136565-7b15-4525-a0b5-e8cd63070a62', 9, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a13', N'Le niveau d’encadrement et d’accompagnement fourni tout au long de la formation est satisfaisant', N'e9136565-7b15-4525-a0b5-e8cd63070a62', 10, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a14', N'Les échanges au sein de mon groupe ont été enrichissants', N'e9136565-7b15-4525-a0b5-e8cd63070a63', 11, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a15', N'De façon générale, les objectifs de la formation sont atteints', N'e9136565-7b15-4525-a0b5-e8cd63070a63', 12, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a16', N'La formation aura un impact positif sur la qualité de mon travail', N'e9136565-7b15-4525-a0b5-e8cd63070a63', 13, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a17', N'Globalement, je suis satisfait(e) de cette formation', N'e9136565-7b15-4525-a0b5-e8cd63070a63', 14, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a18', N'Quels sont les points forts de la formation et du formateur?', N'e9136565-7b15-4525-a0b5-e8cd63070a63', 15, N'text')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a19', N'Quelles sont vos suggestions pour améliorer la formation et le formateur ?', N'e9136565-7b15-4525-a0b5-e8cd63070a63', 16, N'text')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a64', N'Les moyens mis à disposition de la formation sont satisfaisants', N'e9136565-7b15-4525-a0b5-e8cd63070a6d', 1, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a65', N'La composition du groupe de formation est bien adaptée (Taille, Mix, …)', N'e9136565-7b15-4525-a0b5-e8cd63070a6d', 2, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a66', N'Les objectifs de la formation sont bien présentés et assimilés', N'e9136565-7b15-4525-a0b5-e8cd63070a61', 3, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a67', N'La formation est bien structurée (objectif défini, planning clair de la journée, outils mis à disposition)', N'e9136565-7b15-4525-a0b5-e8cd63070a61', 4, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a68', N'Le contenu de la formation est présenté clairement et de manière intéressante', N'e9136565-7b15-4525-a0b5-e8cd63070a61', 5, N'combo')
INSERT [dbo].[Questions] ([Id], [QuestonField], [IdSection], [QuestonNumber], [type]) VALUES (N'a9136565-7b15-4525-a0b5-e8cd63070a69', N'La durée de la formation est adaptée à mon planning', N'e9136565-7b15-4525-a0b5-e8cd63070a61', 6, N'combo')
GO
INSERT [dbo].[Sections] ([Id], [SectionField], [SectionType]) VALUES (N'e9136565-7b15-4525-a0b5-e8cd63070a61', N'Contenu de la formation', 2)
INSERT [dbo].[Sections] ([Id], [SectionField], [SectionType]) VALUES (N'e9136565-7b15-4525-a0b5-e8cd63070a62', N'Animation de la formation', 3)
INSERT [dbo].[Sections] ([Id], [SectionField], [SectionType]) VALUES (N'e9136565-7b15-4525-a0b5-e8cd63070a63', N'Appréciation générale', 4)
INSERT [dbo].[Sections] ([Id], [SectionField], [SectionType]) VALUES (N'e9136565-7b15-4525-a0b5-e8cd63070a6d', N'Organisation de la formation', 1)
GO
INSERT [dbo].[SelfandPeerAssessments] ([SelfandPeerAssessmentId], [UserId], [GroupTrainingId], [Date], [TCAId], [status]) VALUES (N'738e4819-ad4e-4838-9892-644cfb30fb09', N'5336787f-349e-4c71-815a-e9c1090a14bd', N'50f33216-51db-446d-abb7-3c015d7aab0e', CAST(N'2020-08-08T11:58:12.1551861' AS DateTime2), N'3c3b58ae-0c15-4da9-8e43-9679130fa9c9', NULL)
INSERT [dbo].[SelfandPeerAssessments] ([SelfandPeerAssessmentId], [UserId], [GroupTrainingId], [Date], [TCAId], [status]) VALUES (N'9e4ef442-dfdb-4ce0-9cd2-e4c606fe00e5', N'5336787f-349e-4c71-815a-e9c1090a14bd', N'50f33216-51db-446d-abb7-3c015d7aab0b', CAST(N'2020-08-10T14:49:22.8885542' AS DateTime2), N'3c3b58ae-0c15-4da9-8e43-9679130fa9c9', NULL)
GO
INSERT [dbo].[TCACategories] ([TCAId], [CategoryId]) VALUES (N'3c3b58ae-0c15-4da9-8e43-9679130fa9c9', N'b8d2a485-d3ef-4a09-8f1f-751ccd097672')
INSERT [dbo].[TCACategories] ([TCAId], [CategoryId]) VALUES (N'3c3b58ae-0c15-4da9-8e43-9679130fa9c9', N'b8d2a485-d3ef-4a09-8f1f-751ccd097673')
INSERT [dbo].[TCACategories] ([TCAId], [CategoryId]) VALUES (N'3c3b58ae-0c15-4da9-8e43-9679130fa9c9', N'b8d2a485-d3ef-4a09-8f1f-751ccd097674')
INSERT [dbo].[TCACategories] ([TCAId], [CategoryId]) VALUES (N'3c3b58ae-0c15-4da9-8e43-9679130fa9c9', N'b8d2a485-d3ef-4a09-8f1f-751ccd097675')
INSERT [dbo].[TCACategories] ([TCAId], [CategoryId]) VALUES (N'3c3b58ae-0c15-4da9-8e43-9679130fa9c9', N'b8d2a485-d3ef-4a09-8f1f-751ccd097676')
GO
INSERT [dbo].[TemplateConsultantAssessments] ([Id], [UserId]) VALUES (N'3c3b58ae-0c15-4da9-8e43-9679130fa9c9', NULL)
GO
INSERT [dbo].[TemplateFormerAssessments] ([Id], [UserId]) VALUES (N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', NULL)
GO
INSERT [dbo].[TemplateJuryAssessments] ([Id], [UserId]) VALUES (N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', NULL)
GO
INSERT [dbo].[TFAThemes] ([TFAId], [ThemeFId]) VALUES (N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'1473186f-a2b9-4887-8122-771cfcb6d276')
INSERT [dbo].[TFAThemes] ([TFAId], [ThemeFId]) VALUES (N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[TFAThemes] ([TFAId], [ThemeFId]) VALUES (N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'1473186f-a2b9-4887-8122-771cfcb6d2a8')
INSERT [dbo].[TFAThemes] ([TFAId], [ThemeFId]) VALUES (N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'1473186f-a2b9-4887-8122-771cfcb6d2a9')
GO
INSERT [dbo].[ThemeFA] ([Id], [Title]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d276', N'General behaviour during the training')
INSERT [dbo].[ThemeFA] ([Id], [Title]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d277', N'Collective performance during the Business Case presentation')
INSERT [dbo].[ThemeFA] ([Id], [Title]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d2a8', N'Collective performance during the Q&A session')
INSERT [dbo].[ThemeFA] ([Id], [Title]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d2a9', N'General appreciation')
GO
INSERT [dbo].[ThemeJA] ([Id], [Title]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d277', N'Collective performance during the Business Case presentation')
INSERT [dbo].[ThemeJA] ([Id], [Title]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d2a8', N'Collective performance during the Q&A session')
INSERT [dbo].[ThemeJA] ([Id], [Title]) VALUES (N'1473186f-a2b9-4887-8122-771cfcb6d2a9', N'General appreciation')
GO
INSERT [dbo].[TJAThemes] ([TJAId], [JThemeId]) VALUES (N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'1473186f-a2b9-4887-8122-771cfcb6d277')
INSERT [dbo].[TJAThemes] ([TJAId], [JThemeId]) VALUES (N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'1473186f-a2b9-4887-8122-771cfcb6d2a8')
INSERT [dbo].[TJAThemes] ([TJAId], [JThemeId]) VALUES (N'd6fd2662-c5b3-4c86-9df7-07cacc83bc2d', N'1473186f-a2b9-4887-8122-771cfcb6d2a9')
GO
INSERT [dbo].[Trainings] ([Id], [TrainingDate], [TrainingName], [duration], [Description], [EndDate]) VALUES (N'a5b90560-5365-422f-830c-3ed64e8af1d2', CAST(N'2020-05-02T19:58:47.1234567' AS DateTime2), N'ARP beginner training', 3, N'For beginners', CAST(N'2020-05-05T19:58:47.1234567' AS DateTime2))
INSERT [dbo].[Trainings] ([Id], [TrainingDate], [TrainingName], [duration], [Description], [EndDate]) VALUES (N'a5b90560-5365-422f-830c-3ed64e8af1d3', CAST(N'2020-06-02T19:58:47.1234567' AS DateTime2), N'ARP intermediate training', 3, N'For intermediates', CAST(N'2020-06-05T19:58:47.1234567' AS DateTime2))
INSERT [dbo].[Trainings] ([Id], [TrainingDate], [TrainingName], [duration], [Description], [EndDate]) VALUES (N'a5b90560-5365-422f-830c-3ed64e8af1d4', CAST(N'2020-07-08T19:58:47.1234567' AS DateTime2), N'ARP advanced training', 3, N'For advanced learners', CAST(N'2020-07-11T19:58:47.1234567' AS DateTime2))
GO
/****** Object:  Index [IX_Answers_FeedbackId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Answers_FeedbackId] ON [dbo].[Answers]
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Answers_QuestionId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Answers_QuestionId] ON [dbo].[Answers]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 26/08/2020 00:35:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_idImage]    Script Date: 26/08/2020 00:35:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AspNetUsers_idImage] ON [dbo].[AspNetUsers]
(
	[idImage] ASC
)
WHERE ([idImage] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 26/08/2020 00:35:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CAMarks_CAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_CAMarks_CAId] ON [dbo].[CAMarks]
(
	[CAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CAMarks_CategoryId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_CAMarks_CategoryId] ON [dbo].[CAMarks]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CriterionFA_ThemeFAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_CriterionFA_ThemeFAId] ON [dbo].[CriterionFA]
(
	[ThemeFAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CriterionJA_ThemeJAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_CriterionJA_ThemeJAId] ON [dbo].[CriterionJA]
(
	[ThemeJAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Documents_TrainingId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Documents_TrainingId] ON [dbo].[Documents]
(
	[TrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Documents_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Documents_UserId] ON [dbo].[Documents]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FAMarks_CriterionId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_FAMarks_CriterionId] ON [dbo].[FAMarks]
(
	[CriterionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FAMarks_FAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_FAMarks_FAId] ON [dbo].[FAMarks]
(
	[FAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Feedbacks_TrainingId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Feedbacks_TrainingId] ON [dbo].[Feedbacks]
(
	[TrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Feedbacks_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Feedbacks_UserId] ON [dbo].[Feedbacks]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FeedbackSections_SectionId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_FeedbackSections_SectionId] ON [dbo].[FeedbackSections]
(
	[SectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FormerAssessments_GroupTrainingId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_FormerAssessments_GroupTrainingId] ON [dbo].[FormerAssessments]
(
	[GroupTrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FormerAssessments_TFAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_FormerAssessments_TFAId] ON [dbo].[FormerAssessments]
(
	[TFAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FormerAssessments_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_FormerAssessments_UserId] ON [dbo].[FormerAssessments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GroupByTrainings_GroupId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_GroupByTrainings_GroupId] ON [dbo].[GroupByTrainings]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GroupByTrainings_TrainingId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_GroupByTrainings_TrainingId] ON [dbo].[GroupByTrainings]
(
	[TrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_GroupConsultants_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_GroupConsultants_UserId] ON [dbo].[GroupConsultants]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GroupPlanings_GroupId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_GroupPlanings_GroupId] ON [dbo].[GroupPlanings]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JuryAssessments_GroupTrainingId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_JuryAssessments_GroupTrainingId] ON [dbo].[JuryAssessments]
(
	[GroupTrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JuryAssessments_TJAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_JuryAssessments_TJAId] ON [dbo].[JuryAssessments]
(
	[TJAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_JuryAssessments_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_JuryAssessments_UserId] ON [dbo].[JuryAssessments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LFormerAssigned_TrainingId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_LFormerAssigned_TrainingId] ON [dbo].[LFormerAssigned]
(
	[TrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LJuriesAssigned_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_LJuriesAssigned_UserId] ON [dbo].[LJuriesAssigned]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Notes_CriterionJAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Notes_CriterionJAId] ON [dbo].[Notes]
(
	[CriterionJAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Notes_JAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Notes_JAId] ON [dbo].[Notes]
(
	[JAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Plannings_FormerId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Plannings_FormerId] ON [dbo].[Plannings]
(
	[FormerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Plannings_TrainingId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Plannings_TrainingId] ON [dbo].[Plannings]
(
	[TrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Presences_PlanningId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Presences_PlanningId] ON [dbo].[Presences]
(
	[PlanningId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Presences_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Presences_UserId] ON [dbo].[Presences]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_IdSection]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_Questions_IdSection] ON [dbo].[Questions]
(
	[IdSection] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SelfandPeerAssessments_GroupTrainingId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_SelfandPeerAssessments_GroupTrainingId] ON [dbo].[SelfandPeerAssessments]
(
	[GroupTrainingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SelfandPeerAssessments_TCAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_SelfandPeerAssessments_TCAId] ON [dbo].[SelfandPeerAssessments]
(
	[TCAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SelfandPeerAssessments_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_SelfandPeerAssessments_UserId] ON [dbo].[SelfandPeerAssessments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TCACategories_TCAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_TCACategories_TCAId] ON [dbo].[TCACategories]
(
	[TCAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TemplateConsultantAssessments_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_TemplateConsultantAssessments_UserId] ON [dbo].[TemplateConsultantAssessments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TemplateFormerAssessments_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_TemplateFormerAssessments_UserId] ON [dbo].[TemplateFormerAssessments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TemplateJuryAssessments_UserId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_TemplateJuryAssessments_UserId] ON [dbo].[TemplateJuryAssessments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TFAThemes_TFAId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_TFAThemes_TFAId] ON [dbo].[TFAThemes]
(
	[TFAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TJAThemes_JThemeId]    Script Date: 26/08/2020 00:35:06 ******/
CREATE NONCLUSTERED INDEX [IX_TJAThemes_JThemeId] ON [dbo].[TJAThemes]
(
	[JThemeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answers] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [FeedbackId]
GO
ALTER TABLE [dbo].[GroupByTrainings] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [endEvalDate]
GO
ALTER TABLE [dbo].[GroupByTrainings] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [startEvalDate]
GO
ALTER TABLE [dbo].[Plannings] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [EndDate]
GO
ALTER TABLE [dbo].[Plannings] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [StartDate]
GO
ALTER TABLE [dbo].[Questions] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [IdSection]
GO
ALTER TABLE [dbo].[Questions] ADD  DEFAULT ((0)) FOR [QuestonNumber]
GO
ALTER TABLE [dbo].[Sections] ADD  DEFAULT ((0)) FOR [SectionType]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Feedbacks_FeedbackId] FOREIGN KEY([FeedbackId])
REFERENCES [dbo].[Feedbacks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Feedbacks_FeedbackId]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions_QuestionId]
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
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Images_idImage] FOREIGN KEY([idImage])
REFERENCES [dbo].[Images] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Images_idImage]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CAMarks]  WITH CHECK ADD  CONSTRAINT [FK_CAMarks_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CAMarks] CHECK CONSTRAINT [FK_CAMarks_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CAMarks]  WITH CHECK ADD  CONSTRAINT [FK_CAMarks_SelfandPeerAssessments_CAId] FOREIGN KEY([CAId])
REFERENCES [dbo].[SelfandPeerAssessments] ([SelfandPeerAssessmentId])
GO
ALTER TABLE [dbo].[CAMarks] CHECK CONSTRAINT [FK_CAMarks_SelfandPeerAssessments_CAId]
GO
ALTER TABLE [dbo].[CriterionFA]  WITH CHECK ADD  CONSTRAINT [FK_CriterionFA_ThemeFA_ThemeFAId] FOREIGN KEY([ThemeFAId])
REFERENCES [dbo].[ThemeFA] ([Id])
GO
ALTER TABLE [dbo].[CriterionFA] CHECK CONSTRAINT [FK_CriterionFA_ThemeFA_ThemeFAId]
GO
ALTER TABLE [dbo].[CriterionJA]  WITH CHECK ADD  CONSTRAINT [FK_CriterionJA_ThemeJA_ThemeJAId] FOREIGN KEY([ThemeJAId])
REFERENCES [dbo].[ThemeJA] ([Id])
GO
ALTER TABLE [dbo].[CriterionJA] CHECK CONSTRAINT [FK_CriterionJA_ThemeJA_ThemeJAId]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Trainings_TrainingId] FOREIGN KEY([TrainingId])
REFERENCES [dbo].[Trainings] ([Id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Trainings_TrainingId]
GO
ALTER TABLE [dbo].[FAMarks]  WITH CHECK ADD  CONSTRAINT [FK_FAMarks_CriterionFA_CriterionId] FOREIGN KEY([CriterionId])
REFERENCES [dbo].[CriterionFA] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FAMarks] CHECK CONSTRAINT [FK_FAMarks_CriterionFA_CriterionId]
GO
ALTER TABLE [dbo].[FAMarks]  WITH CHECK ADD  CONSTRAINT [FK_FAMarks_FormerAssessments_FAId] FOREIGN KEY([FAId])
REFERENCES [dbo].[FormerAssessments] ([Id])
GO
ALTER TABLE [dbo].[FAMarks] CHECK CONSTRAINT [FK_FAMarks_FormerAssessments_FAId]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_Trainings_TrainingId] FOREIGN KEY([TrainingId])
REFERENCES [dbo].[Trainings] ([Id])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_Trainings_TrainingId]
GO
ALTER TABLE [dbo].[FeedbackSections]  WITH CHECK ADD  CONSTRAINT [FK_FeedbackSections_Feedbacks_FeedbackId] FOREIGN KEY([FeedbackId])
REFERENCES [dbo].[Feedbacks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeedbackSections] CHECK CONSTRAINT [FK_FeedbackSections_Feedbacks_FeedbackId]
GO
ALTER TABLE [dbo].[FeedbackSections]  WITH CHECK ADD  CONSTRAINT [FK_FeedbackSections_Sections_SectionId] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Sections] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeedbackSections] CHECK CONSTRAINT [FK_FeedbackSections_Sections_SectionId]
GO
ALTER TABLE [dbo].[FormerAssessments]  WITH CHECK ADD  CONSTRAINT [FK_FormerAssessments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FormerAssessments] CHECK CONSTRAINT [FK_FormerAssessments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FormerAssessments]  WITH CHECK ADD  CONSTRAINT [FK_FormerAssessments_GroupByTrainings_GroupTrainingId] FOREIGN KEY([GroupTrainingId])
REFERENCES [dbo].[GroupByTrainings] ([Id])
GO
ALTER TABLE [dbo].[FormerAssessments] CHECK CONSTRAINT [FK_FormerAssessments_GroupByTrainings_GroupTrainingId]
GO
ALTER TABLE [dbo].[FormerAssessments]  WITH CHECK ADD  CONSTRAINT [FK_FormerAssessments_TemplateFormerAssessments_TFAId] FOREIGN KEY([TFAId])
REFERENCES [dbo].[TemplateFormerAssessments] ([Id])
GO
ALTER TABLE [dbo].[FormerAssessments] CHECK CONSTRAINT [FK_FormerAssessments_TemplateFormerAssessments_TFAId]
GO
ALTER TABLE [dbo].[GroupByTrainings]  WITH CHECK ADD  CONSTRAINT [FK_GroupByTrainings_Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupByTrainings] CHECK CONSTRAINT [FK_GroupByTrainings_Groups_GroupId]
GO
ALTER TABLE [dbo].[GroupByTrainings]  WITH CHECK ADD  CONSTRAINT [FK_GroupByTrainings_Trainings_TrainingId] FOREIGN KEY([TrainingId])
REFERENCES [dbo].[Trainings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupByTrainings] CHECK CONSTRAINT [FK_GroupByTrainings_Trainings_TrainingId]
GO
ALTER TABLE [dbo].[GroupConsultants]  WITH CHECK ADD  CONSTRAINT [FK_GroupConsultants_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupConsultants] CHECK CONSTRAINT [FK_GroupConsultants_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[GroupConsultants]  WITH CHECK ADD  CONSTRAINT [FK_GroupConsultants_Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupConsultants] CHECK CONSTRAINT [FK_GroupConsultants_Groups_GroupId]
GO
ALTER TABLE [dbo].[GroupPlanings]  WITH CHECK ADD  CONSTRAINT [FK_GroupPlanings_Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupPlanings] CHECK CONSTRAINT [FK_GroupPlanings_Groups_GroupId]
GO
ALTER TABLE [dbo].[GroupPlanings]  WITH CHECK ADD  CONSTRAINT [FK_GroupPlanings_Plannings_PlaningId] FOREIGN KEY([PlaningId])
REFERENCES [dbo].[Plannings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupPlanings] CHECK CONSTRAINT [FK_GroupPlanings_Plannings_PlaningId]
GO
ALTER TABLE [dbo].[JuryAssessments]  WITH CHECK ADD  CONSTRAINT [FK_JuryAssessments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JuryAssessments] CHECK CONSTRAINT [FK_JuryAssessments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[JuryAssessments]  WITH CHECK ADD  CONSTRAINT [FK_JuryAssessments_GroupByTrainings_GroupTrainingId] FOREIGN KEY([GroupTrainingId])
REFERENCES [dbo].[GroupByTrainings] ([Id])
GO
ALTER TABLE [dbo].[JuryAssessments] CHECK CONSTRAINT [FK_JuryAssessments_GroupByTrainings_GroupTrainingId]
GO
ALTER TABLE [dbo].[JuryAssessments]  WITH CHECK ADD  CONSTRAINT [FK_JuryAssessments_TemplateJuryAssessments_TJAId] FOREIGN KEY([TJAId])
REFERENCES [dbo].[TemplateJuryAssessments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JuryAssessments] CHECK CONSTRAINT [FK_JuryAssessments_TemplateJuryAssessments_TJAId]
GO
ALTER TABLE [dbo].[LFormerAssigned]  WITH CHECK ADD  CONSTRAINT [FK_LFormerAssigned_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LFormerAssigned] CHECK CONSTRAINT [FK_LFormerAssigned_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[LFormerAssigned]  WITH CHECK ADD  CONSTRAINT [FK_LFormerAssigned_Trainings_TrainingId] FOREIGN KEY([TrainingId])
REFERENCES [dbo].[Trainings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LFormerAssigned] CHECK CONSTRAINT [FK_LFormerAssigned_Trainings_TrainingId]
GO
ALTER TABLE [dbo].[LJuriesAssigned]  WITH CHECK ADD  CONSTRAINT [FK_LJuriesAssigned_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LJuriesAssigned] CHECK CONSTRAINT [FK_LJuriesAssigned_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[LJuriesAssigned]  WITH CHECK ADD  CONSTRAINT [FK_LJuriesAssigned_Trainings_TrainingId] FOREIGN KEY([TrainingId])
REFERENCES [dbo].[Trainings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LJuriesAssigned] CHECK CONSTRAINT [FK_LJuriesAssigned_Trainings_TrainingId]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_CriterionJA_CriterionJAId] FOREIGN KEY([CriterionJAId])
REFERENCES [dbo].[CriterionJA] ([Id])
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_CriterionJA_CriterionJAId]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_JuryAssessments_JAId] FOREIGN KEY([JAId])
REFERENCES [dbo].[JuryAssessments] ([Id])
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_JuryAssessments_JAId]
GO
ALTER TABLE [dbo].[Plannings]  WITH CHECK ADD  CONSTRAINT [FK_Plannings_AspNetUsers_FormerId] FOREIGN KEY([FormerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Plannings] CHECK CONSTRAINT [FK_Plannings_AspNetUsers_FormerId]
GO
ALTER TABLE [dbo].[Plannings]  WITH CHECK ADD  CONSTRAINT [FK_Plannings_Trainings_TrainingId] FOREIGN KEY([TrainingId])
REFERENCES [dbo].[Trainings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Plannings] CHECK CONSTRAINT [FK_Plannings_Trainings_TrainingId]
GO
ALTER TABLE [dbo].[Presences]  WITH CHECK ADD  CONSTRAINT [FK_Presences_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Presences] CHECK CONSTRAINT [FK_Presences_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Presences]  WITH CHECK ADD  CONSTRAINT [FK_Presences_Plannings_PlanningId] FOREIGN KEY([PlanningId])
REFERENCES [dbo].[Plannings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Presences] CHECK CONSTRAINT [FK_Presences_Plannings_PlanningId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Sections_IdSection] FOREIGN KEY([IdSection])
REFERENCES [dbo].[Sections] ([Id])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Sections_IdSection]
GO
ALTER TABLE [dbo].[SelfandPeerAssessments]  WITH CHECK ADD  CONSTRAINT [FK_SelfandPeerAssessments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[SelfandPeerAssessments] CHECK CONSTRAINT [FK_SelfandPeerAssessments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[SelfandPeerAssessments]  WITH CHECK ADD  CONSTRAINT [FK_SelfandPeerAssessments_GroupByTrainings_GroupTrainingId] FOREIGN KEY([GroupTrainingId])
REFERENCES [dbo].[GroupByTrainings] ([Id])
GO
ALTER TABLE [dbo].[SelfandPeerAssessments] CHECK CONSTRAINT [FK_SelfandPeerAssessments_GroupByTrainings_GroupTrainingId]
GO
ALTER TABLE [dbo].[SelfandPeerAssessments]  WITH CHECK ADD  CONSTRAINT [FK_SelfandPeerAssessments_TemplateConsultantAssessments_TCAId] FOREIGN KEY([TCAId])
REFERENCES [dbo].[TemplateConsultantAssessments] ([Id])
GO
ALTER TABLE [dbo].[SelfandPeerAssessments] CHECK CONSTRAINT [FK_SelfandPeerAssessments_TemplateConsultantAssessments_TCAId]
GO
ALTER TABLE [dbo].[TCACategories]  WITH CHECK ADD  CONSTRAINT [FK_TCACategories_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCACategories] CHECK CONSTRAINT [FK_TCACategories_Categories_CategoryId]
GO
ALTER TABLE [dbo].[TCACategories]  WITH CHECK ADD  CONSTRAINT [FK_TCACategories_TemplateConsultantAssessments_TCAId] FOREIGN KEY([TCAId])
REFERENCES [dbo].[TemplateConsultantAssessments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCACategories] CHECK CONSTRAINT [FK_TCACategories_TemplateConsultantAssessments_TCAId]
GO
ALTER TABLE [dbo].[TemplateConsultantAssessments]  WITH CHECK ADD  CONSTRAINT [FK_TemplateConsultantAssessments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TemplateConsultantAssessments] CHECK CONSTRAINT [FK_TemplateConsultantAssessments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[TemplateFormerAssessments]  WITH CHECK ADD  CONSTRAINT [FK_TemplateFormerAssessments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TemplateFormerAssessments] CHECK CONSTRAINT [FK_TemplateFormerAssessments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[TemplateJuryAssessments]  WITH CHECK ADD  CONSTRAINT [FK_TemplateJuryAssessments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TemplateJuryAssessments] CHECK CONSTRAINT [FK_TemplateJuryAssessments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[TFAThemes]  WITH CHECK ADD  CONSTRAINT [FK_TFAThemes_TemplateFormerAssessments_TFAId] FOREIGN KEY([TFAId])
REFERENCES [dbo].[TemplateFormerAssessments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TFAThemes] CHECK CONSTRAINT [FK_TFAThemes_TemplateFormerAssessments_TFAId]
GO
ALTER TABLE [dbo].[TFAThemes]  WITH CHECK ADD  CONSTRAINT [FK_TFAThemes_ThemeFA_ThemeFId] FOREIGN KEY([ThemeFId])
REFERENCES [dbo].[ThemeFA] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TFAThemes] CHECK CONSTRAINT [FK_TFAThemes_ThemeFA_ThemeFId]
GO
ALTER TABLE [dbo].[TJAThemes]  WITH CHECK ADD  CONSTRAINT [FK_TJAThemes_TemplateJuryAssessments_TJAId] FOREIGN KEY([TJAId])
REFERENCES [dbo].[TemplateJuryAssessments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TJAThemes] CHECK CONSTRAINT [FK_TJAThemes_TemplateJuryAssessments_TJAId]
GO
ALTER TABLE [dbo].[TJAThemes]  WITH CHECK ADD  CONSTRAINT [FK_TJAThemes_ThemeJA_JThemeId] FOREIGN KEY([JThemeId])
REFERENCES [dbo].[ThemeJA] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TJAThemes] CHECK CONSTRAINT [FK_TJAThemes_ThemeJA_JThemeId]
GO
USE [master]
GO
ALTER DATABASE [Ey_Academy] SET  READ_WRITE 
GO
