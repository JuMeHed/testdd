USE [master]
GO
/****** Object:  Database [МастерПол]    Script Date: 04.06.2025 20:23:42 ******/
CREATE DATABASE [МастерПол]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'МастерПол', FILENAME = N'E:\Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\МастерПол.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'МастерПол_log', FILENAME = N'E:\Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\МастерПол_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [МастерПол] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [МастерПол].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [МастерПол] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [МастерПол] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [МастерПол] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [МастерПол] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [МастерПол] SET ARITHABORT OFF 
GO
ALTER DATABASE [МастерПол] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [МастерПол] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [МастерПол] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [МастерПол] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [МастерПол] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [МастерПол] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [МастерПол] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [МастерПол] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [МастерПол] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [МастерПол] SET  DISABLE_BROKER 
GO
ALTER DATABASE [МастерПол] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [МастерПол] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [МастерПол] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [МастерПол] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [МастерПол] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [МастерПол] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [МастерПол] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [МастерПол] SET RECOVERY FULL 
GO
ALTER DATABASE [МастерПол] SET  MULTI_USER 
GO
ALTER DATABASE [МастерПол] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [МастерПол] SET DB_CHAINING OFF 
GO
ALTER DATABASE [МастерПол] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [МастерПол] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [МастерПол] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [МастерПол] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'МастерПол', N'ON'
GO
ALTER DATABASE [МастерПол] SET QUERY_STORE = ON
GO
ALTER DATABASE [МастерПол] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [МастерПол]
GO
/****** Object:  Table [dbo].[Должность]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Должность](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Тип] [nvarchar](max) NULL,
 CONSTRAINT [PK_Должность] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ЕдиницаИзмерения]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ЕдиницаИзмерения](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](max) NULL,
 CONSTRAINT [PK_ЕдиницаИзмерения] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявка]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявка](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[КодПартнер] [int] NULL,
	[КодМенеджер] [int] NULL,
	[КодПродукция] [int] NULL,
	[ДатаПродажи] [date] NULL,
	[Количество] [int] NULL,
	[ДатаПроизводства] [date] NULL,
 CONSTRAINT [PK_Заявка] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Материал]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Материал](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nchar](10) NULL,
	[КоличествоВУпаковке] [nchar](10) NULL,
	[Описание] [nchar](10) NULL,
	[Изображение] [nchar](10) NULL,
	[Стоимость] [nchar](10) NULL,
	[КодЕдиницаИзмерения] [int] NULL,
	[КодТипМатериала] [int] NULL,
 CONSTRAINT [PK_Материал] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[МатериалНаПродукцию]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[МатериалНаПродукцию](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[КодПродукция] [int] NULL,
	[КодМатериал] [int] NULL,
	[Количество] [int] NULL,
 CONSTRAINT [PK_МатериалНаПродукцию] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[МатериалНаСкладе]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[МатериалНаСкладе](
	[Код] [int] NOT NULL,
	[КодМатериалПоставщик] [int] NULL,
	[КодСклад] [int] NULL,
	[Количество] [int] NULL,
	[МинимальноДопустимоеКоличество] [nvarchar](max) NULL,
 CONSTRAINT [PK_МатериалНаСкладе] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Место]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Место](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](max) NULL,
	[Адрес] [nvarchar](max) NULL,
 CONSTRAINT [PK_Место] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[МестоПродаж]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[МестоПродаж](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[КодМесто] [int] NULL,
	[КодПартнер] [int] NULL,
 CONSTRAINT [PK_МестоПродаж] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Партнер]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Партнер](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](max) NULL,
	[ЮридическийАдрес] [nvarchar](max) NULL,
	[ИНН] [nvarchar](max) NULL,
	[ФИОДиректора] [nvarchar](max) NULL,
	[Телефон] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Логотип] [varbinary](max) NULL,
	[Рейтинг] [float] NULL,
	[КодТипПартнера] [int] NULL,
 CONSTRAINT [PK_Партнер] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ПоставкаМатериала]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ПоставкаМатериала](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[КодМатериал] [int] NULL,
	[КодПоставщик] [int] NULL,
	[Количество] [int] NULL,
	[Дата] [date] NULL,
 CONSTRAINT [PK_ПоставкаМатериала] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Поставщик]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Поставщик](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](max) NULL,
	[ИНН] [nvarchar](max) NULL,
	[КодТипПоставщика] [int] NULL,
 CONSTRAINT [PK_Поставщик] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Продукция]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Продукция](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Артикул] [nvarchar](max) NULL,
	[Наименование] [nvarchar](max) NULL,
	[Описание] [nvarchar](max) NULL,
	[Изображение] [varbinary](max) NULL,
	[Высота] [float] NULL,
	[Длина] [float] NULL,
	[Ширина] [float] NULL,
	[ВесБезУпаковки] [float] NULL,
	[ВесСУпаковкой] [float] NULL,
	[СертификатКачества] [varbinary](max) NULL,
	[НомерСтандарта] [nvarchar](50) NULL,
	[КодЦех] [int] NULL,
	[КодТипПродукции] [int] NULL,
	[МинимальнаяСтоимостьПартнеру] [float] NULL,
 CONSTRAINT [PK_Продукция] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ПродукцияСклад]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ПродукцияСклад](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[КодПродукция] [int] NULL,
	[КодСклад] [int] NULL,
 CONSTRAINT [PK_ПродукцияСклад] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Склад]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Склад](
	[Код] [int] NOT NULL,
	[Наименование] [nvarchar](max) NOT NULL,
	[Адрес] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Склад] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудник]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудник](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [nvarchar](max) NULL,
	[ДатаРождения] [date] NULL,
	[Реквизиты] [nvarchar](max) NULL,
	[НаличиеСемьи] [bit] NULL,
	[КодДолжность] [int] NULL,
	[КодСостояниеЗдоровья] [int] NULL,
	[Номер] [nvarchar](max) NULL,
	[Серия] [nvarchar](max) NULL,
	[ДатаВыдачи] [date] NULL,
	[Прописка] [nvarchar](max) NULL,
	[МестоВыдачи] [nvarchar](max) NULL,
	[СостояниеЗдоровья] [bit] NULL,
	[КодЦех] [int] NULL,
 CONSTRAINT [PK_Сотрудник] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ТипМатериала]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ТипМатериала](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](max) NULL,
	[ПроцентБрака] [float] NULL,
 CONSTRAINT [PK_ТипМатериала] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ТипОрганизации]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ТипОрганизации](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](max) NULL,
 CONSTRAINT [PK_ТипОрганизации] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ТипПродукции]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ТипПродукции](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](max) NULL,
	[Коэффициент] [float] NULL,
 CONSTRAINT [PK_ТипПродукции] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Цех]    Script Date: 04.06.2025 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Цех](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Номер] [nvarchar](max) NULL,
 CONSTRAINT [PK_Цех] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Партнер] FOREIGN KEY([КодПартнер])
REFERENCES [dbo].[Партнер] ([Код])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Партнер]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Продукция] FOREIGN KEY([КодПродукция])
REFERENCES [dbo].[Продукция] ([Код])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Продукция]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Сотрудник] FOREIGN KEY([КодМенеджер])
REFERENCES [dbo].[Сотрудник] ([Код])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Сотрудник]
GO
ALTER TABLE [dbo].[Материал]  WITH CHECK ADD  CONSTRAINT [FK_Материал_ЕдиницаИзмерения] FOREIGN KEY([КодЕдиницаИзмерения])
REFERENCES [dbo].[ЕдиницаИзмерения] ([Код])
GO
ALTER TABLE [dbo].[Материал] CHECK CONSTRAINT [FK_Материал_ЕдиницаИзмерения]
GO
ALTER TABLE [dbo].[Материал]  WITH CHECK ADD  CONSTRAINT [FK_Материал_ТипМатериала] FOREIGN KEY([КодТипМатериала])
REFERENCES [dbo].[ТипМатериала] ([Код])
GO
ALTER TABLE [dbo].[Материал] CHECK CONSTRAINT [FK_Материал_ТипМатериала]
GO
ALTER TABLE [dbo].[МатериалНаПродукцию]  WITH CHECK ADD  CONSTRAINT [FK_МатериалНаПродукцию_Материал] FOREIGN KEY([КодМатериал])
REFERENCES [dbo].[Материал] ([Код])
GO
ALTER TABLE [dbo].[МатериалНаПродукцию] CHECK CONSTRAINT [FK_МатериалНаПродукцию_Материал]
GO
ALTER TABLE [dbo].[МатериалНаПродукцию]  WITH CHECK ADD  CONSTRAINT [FK_МатериалНаПродукцию_Продукция] FOREIGN KEY([КодПродукция])
REFERENCES [dbo].[Продукция] ([Код])
GO
ALTER TABLE [dbo].[МатериалНаПродукцию] CHECK CONSTRAINT [FK_МатериалНаПродукцию_Продукция]
GO
ALTER TABLE [dbo].[МатериалНаСкладе]  WITH CHECK ADD  CONSTRAINT [FK_МатериалНаСкладе_ПоставкаМатериала] FOREIGN KEY([КодМатериалПоставщик])
REFERENCES [dbo].[ПоставкаМатериала] ([Код])
GO
ALTER TABLE [dbo].[МатериалНаСкладе] CHECK CONSTRAINT [FK_МатериалНаСкладе_ПоставкаМатериала]
GO
ALTER TABLE [dbo].[МатериалНаСкладе]  WITH CHECK ADD  CONSTRAINT [FK_МатериалНаСкладе_Склад] FOREIGN KEY([КодСклад])
REFERENCES [dbo].[Склад] ([Код])
GO
ALTER TABLE [dbo].[МатериалНаСкладе] CHECK CONSTRAINT [FK_МатериалНаСкладе_Склад]
GO
ALTER TABLE [dbo].[МестоПродаж]  WITH CHECK ADD  CONSTRAINT [FK_МестоПродаж_Место] FOREIGN KEY([КодМесто])
REFERENCES [dbo].[Место] ([Код])
GO
ALTER TABLE [dbo].[МестоПродаж] CHECK CONSTRAINT [FK_МестоПродаж_Место]
GO
ALTER TABLE [dbo].[МестоПродаж]  WITH CHECK ADD  CONSTRAINT [FK_МестоПродаж_Партнер] FOREIGN KEY([КодПартнер])
REFERENCES [dbo].[Партнер] ([Код])
GO
ALTER TABLE [dbo].[МестоПродаж] CHECK CONSTRAINT [FK_МестоПродаж_Партнер]
GO
ALTER TABLE [dbo].[Партнер]  WITH CHECK ADD  CONSTRAINT [FK_Партнер_ТипОрганизации] FOREIGN KEY([КодТипПартнера])
REFERENCES [dbo].[ТипОрганизации] ([Код])
GO
ALTER TABLE [dbo].[Партнер] CHECK CONSTRAINT [FK_Партнер_ТипОрганизации]
GO
ALTER TABLE [dbo].[ПоставкаМатериала]  WITH CHECK ADD  CONSTRAINT [FK_ПоставкаМатериала_Материал] FOREIGN KEY([КодМатериал])
REFERENCES [dbo].[Материал] ([Код])
GO
ALTER TABLE [dbo].[ПоставкаМатериала] CHECK CONSTRAINT [FK_ПоставкаМатериала_Материал]
GO
ALTER TABLE [dbo].[ПоставкаМатериала]  WITH CHECK ADD  CONSTRAINT [FK_ПоставкаМатериала_Поставщик] FOREIGN KEY([КодПоставщик])
REFERENCES [dbo].[Поставщик] ([Код])
GO
ALTER TABLE [dbo].[ПоставкаМатериала] CHECK CONSTRAINT [FK_ПоставкаМатериала_Поставщик]
GO
ALTER TABLE [dbo].[Поставщик]  WITH CHECK ADD  CONSTRAINT [FK_Поставщик_ТипОрганизации] FOREIGN KEY([КодТипПоставщика])
REFERENCES [dbo].[ТипОрганизации] ([Код])
GO
ALTER TABLE [dbo].[Поставщик] CHECK CONSTRAINT [FK_Поставщик_ТипОрганизации]
GO
ALTER TABLE [dbo].[Продукция]  WITH CHECK ADD  CONSTRAINT [FK_Продукция_ТипПродукции] FOREIGN KEY([КодТипПродукции])
REFERENCES [dbo].[ТипПродукции] ([Код])
GO
ALTER TABLE [dbo].[Продукция] CHECK CONSTRAINT [FK_Продукция_ТипПродукции]
GO
ALTER TABLE [dbo].[Продукция]  WITH CHECK ADD  CONSTRAINT [FK_Продукция_Цех] FOREIGN KEY([КодЦех])
REFERENCES [dbo].[Цех] ([Код])
GO
ALTER TABLE [dbo].[Продукция] CHECK CONSTRAINT [FK_Продукция_Цех]
GO
ALTER TABLE [dbo].[ПродукцияСклад]  WITH CHECK ADD  CONSTRAINT [FK_ПродукцияСклад_Продукция] FOREIGN KEY([КодСклад])
REFERENCES [dbo].[Продукция] ([Код])
GO
ALTER TABLE [dbo].[ПродукцияСклад] CHECK CONSTRAINT [FK_ПродукцияСклад_Продукция]
GO
ALTER TABLE [dbo].[ПродукцияСклад]  WITH CHECK ADD  CONSTRAINT [FK_ПродукцияСклад_Склад] FOREIGN KEY([КодСклад])
REFERENCES [dbo].[Склад] ([Код])
GO
ALTER TABLE [dbo].[ПродукцияСклад] CHECK CONSTRAINT [FK_ПродукцияСклад_Склад]
GO
ALTER TABLE [dbo].[Сотрудник]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудник_Должность] FOREIGN KEY([КодДолжность])
REFERENCES [dbo].[Должность] ([Код])
GO
ALTER TABLE [dbo].[Сотрудник] CHECK CONSTRAINT [FK_Сотрудник_Должность]
GO
ALTER TABLE [dbo].[Сотрудник]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудник_Цех] FOREIGN KEY([КодЦех])
REFERENCES [dbo].[Цех] ([Код])
GO
ALTER TABLE [dbo].[Сотрудник] CHECK CONSTRAINT [FK_Сотрудник_Цех]
GO
USE [master]
GO
ALTER DATABASE [МастерПол] SET  READ_WRITE 
GO
