USE [master]
GO
/****** Object:  Database [IliskiselDBDenemesi]    Script Date: 7.12.2020 18:24:49 ******/
CREATE DATABASE [IliskiselDBDenemesi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IliskiselDBDenemesi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\IliskiselDBDenemesi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IliskiselDBDenemesi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\IliskiselDBDenemesi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [IliskiselDBDenemesi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IliskiselDBDenemesi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IliskiselDBDenemesi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET ARITHABORT OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET  MULTI_USER 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IliskiselDBDenemesi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IliskiselDBDenemesi] SET QUERY_STORE = OFF
GO
USE [IliskiselDBDenemesi]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 7.12.2020 18:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriID] [tinyint] IDENTITY(1,1) NOT NULL,
	[KategoriAD] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 7.12.2020 18:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriID] [tinyint] IDENTITY(1,1) NOT NULL,
	[MusteriAd] [varchar](20) NULL,
	[MusteriSoyad] [varchar](25) NULL,
	[MusteriTC] [char](11) NULL,
	[MusteriCEPTEL] [char](10) NULL,
	[MusteriDTARIHI] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 7.12.2020 18:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PersonelID] [tinyint] IDENTITY(1,1) NOT NULL,
	[PersonelAD] [varchar](20) NULL,
	[PersonelSOYAD] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satislar]    Script Date: 7.12.2020 18:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satislar](
	[SatisID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Musteri] [tinyint] NULL,
	[Urun] [tinyint] NULL,
	[Kategori] [tinyint] NULL,
	[Fiyat] [smallint] NULL,
	[Adet] [tinyint] NULL,
	[ToplamFiyat] [int] NULL,
	[Personel] [tinyint] NULL,
	[Tarih] [datetime] NULL,
 CONSTRAINT [PK__Satislar__80CB4CFFC9A40AED] PRIMARY KEY CLUSTERED 
(
	[SatisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 7.12.2020 18:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[UrunID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Kategori] [tinyint] NULL,
	[UrunAD] [varchar](50) NULL,
	[UrunMARKA] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriID], [KategoriAD]) VALUES (1, N'TEKNOLOJİ')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAD]) VALUES (2, N'GIDA')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAD]) VALUES (3, N'TEMİZLİK')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAD]) VALUES (4, N'EV ALETLERİ')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAD]) VALUES (5, N'KIRTASİYE EŞYALARI')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteri] ON 

INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (1, N'HİLMİ', N'YAVUZ', N'70684009194', N'5385437641', CAST(N'2001-07-24' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (2, N'KADİR', N'TAŞKIN', N'16589385746', N'5324765871', CAST(N'2003-01-10' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (3, N'HAKAN', N'GÖK', N'70674887173', N'5385976587', CAST(N'1975-03-24' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (4, N'DİLEK', N'KAYA', N'16584779681', N'5316985791', CAST(N'1975-03-03' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (5, N'UĞUR', N'ATAK', N'58165425848', N'5334768153', CAST(N'1967-11-02' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (6, N'KERİM', N'YAVUZ', N'58169558109', N'5335869147', CAST(N'1990-12-22' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (7, N'DİLARA', N'KAYA', N'16584993815', N'5356874812', CAST(N'1995-11-05' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (8, N'KÜBRA', N'TAŞ', N'45874918569', N'5385769847', CAST(N'2004-06-15' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (9, N'HALİL', N'KUYU', N'70684995718', N'5315863461', CAST(N'1985-02-09' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (10, N'HİLMİ', N'ÇETİN', N'16569441952', N'5385486710', CAST(N'2001-04-24' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (11, N'ARDA', N'ÇİFTÇİ', N'83749118275', N'5385768741', CAST(N'1991-05-06' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (12, N'EMRE', N'TURAN', N'70675889476', N'5314569314', CAST(N'1995-11-25' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (13, N'UTKU', N'KIRAN', N'68574775981', N'5365748671', CAST(N'2001-10-17' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (14, N'EMİRHAN', N'GÜNEŞ', N'16598409716', N'5385437851', CAST(N'2000-01-10' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (15, N'HAMZA', N'KÜSKÜ', N'58159439218', N'5337598715', CAST(N'1999-02-10' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (16, N'ASLI', N'ÖNDER', N'75837165847', N'5315876451', CAST(N'1998-07-24' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (17, N'SİMGE', N'ÖNDER', N'70687409671', N'5339875612', CAST(N'2003-07-12' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (18, N'SAMET', N'CAN', N'16580473917', N'5365981241', CAST(N'2001-07-24' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (19, N'NURİ', N'CANKER', N'59648305193', N'5367959431', CAST(N'2002-07-22' AS Date))
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriTC], [MusteriCEPTEL], [MusteriDTARIHI]) VALUES (20, N'KAYRA', N'AKGÖZ', N'59482184724', N'5385437651', CAST(N'2000-05-19' AS Date))
SET IDENTITY_INSERT [dbo].[Musteri] OFF
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([PersonelID], [PersonelAD], [PersonelSOYAD]) VALUES (1, N'PINAR', N'GÜNTEKİN')
INSERT [dbo].[Personel] ([PersonelID], [PersonelAD], [PersonelSOYAD]) VALUES (2, N'YİĞİT', N'ÇINAR')
INSERT [dbo].[Personel] ([PersonelID], [PersonelAD], [PersonelSOYAD]) VALUES (3, N'BÜŞRA', N'AKYOL')
INSERT [dbo].[Personel] ([PersonelID], [PersonelAD], [PersonelSOYAD]) VALUES (4, N'HAMZA', N'EROL')
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[Satislar] ON 

INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (1, 1, 1, 1, 4000, 1, 4720, 1, CAST(N'2020-11-13T23:47:35.750' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (2, 2, 16, 4, 900, 1, 1062, 2, CAST(N'2020-11-13T23:49:50.803' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (3, 1, 24, 5, 10, 2, 13, 1, CAST(N'2020-11-13T23:51:05.620' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (4, 6, 8, 2, 7, 5, 13, 3, CAST(N'2020-11-13T23:52:35.763' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (5, 10, 11, 3, 20, 3, 30, 2, CAST(N'2020-11-13T23:53:26.370' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (6, 8, 2, 1, 5000, 1, 5900, 1, CAST(N'2020-11-13T23:54:10.823' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (7, 3, 4, 1, 4000, 1, 4720, 2, CAST(N'2020-11-13T23:54:50.493' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (8, 4, 17, 4, 500, 2, 680, 3, CAST(N'2020-11-13T23:55:30.033' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (9, 5, 7, 2, 10, 3, 15, 1, CAST(N'2020-11-13T23:56:14.007' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (10, 7, 12, 3, 6, 4, 10, 2, CAST(N'2020-11-13T23:57:10.653' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (11, 1, 1, 1, 7000, 1, 8260, 3, CAST(N'2020-11-13T23:57:38.323' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (12, 2, 9, 2, 20, 2, 27, 1, CAST(N'2020-11-13T23:58:22.747' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (13, 8, 16, 4, 900, 1, 1062, 2, CAST(N'2020-11-13T23:59:12.353' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (14, 20, 21, 5, 10, 2, 20, 4, CAST(N'2020-12-07T17:49:45.437' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (15, 19, 10, 2, 6, 1, 6, 1, CAST(N'2020-12-07T17:50:58.073' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (16, 18, 22, 5, 100, 1, 100, 4, CAST(N'2020-12-07T17:51:35.673' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (17, 18, 23, 5, 20, 1, 20, 4, CAST(N'2020-12-07T17:52:05.087' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (18, 18, 25, 5, 5, 2, 10, 4, CAST(N'2020-12-07T17:52:33.083' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (19, 11, 3, 1, 4000, 1, 4000, 2, CAST(N'2020-12-07T17:53:16.007' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (20, 13, 18, 4, 300, 1, 300, 1, CAST(N'2020-12-07T17:54:12.010' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (21, 12, 15, 3, 20, 2, 40, 2, CAST(N'2020-12-07T17:54:52.410' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (22, 14, 17, 4, 500, 1, 500, 2, CAST(N'2020-12-07T17:56:08.253' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (23, 19, 7, 2, 10, 3, 30, 3, CAST(N'2020-12-07T17:56:54.987' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (24, 19, 9, 2, 20, 2, 40, 4, CAST(N'2020-12-07T17:57:26.043' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (25, 19, 10, 2, 6, 2, 12, 4, CAST(N'2020-12-07T17:57:29.980' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (26, 15, 11, 3, 20, 2, 40, 4, CAST(N'2020-12-07T17:59:00.433' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (27, 15, 12, 3, 6, 2, 12, 4, CAST(N'2020-12-07T17:59:30.820' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (28, 15, 14, 3, 10, 1, 10, 4, CAST(N'2020-12-07T18:00:02.900' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (29, 16, 6, 2, 2, 3, 6, 2, CAST(N'2020-12-07T18:00:23.027' AS DateTime))
INSERT [dbo].[Satislar] ([SatisID], [Musteri], [Urun], [Kategori], [Fiyat], [Adet], [ToplamFiyat], [Personel], [Tarih]) VALUES (30, 17, 5, 1, 6000, 1, 6000, 1, CAST(N'2020-12-07T18:00:25.410' AS DateTime))
SET IDENTITY_INSERT [dbo].[Satislar] OFF
GO
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (1, 1, N'MATEBOOK D15', N'HUAWEI')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (2, 1, N'GEFORCE 2080TI', N'NVDIA')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (3, 1, N'REDMI NOTE 8', N'XIAOMI')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (4, 1, N'BHR4269G OYUNCU MONİTÖRÜ', N'XIAOMI')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (5, 1, N'YOGA CREATOR 7I LAPTOP ', N'LENOVO ')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (6, 2, N'ÇİKOLATALI GOFRET', N'ÜLKER')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (7, 2, N'1000 GRAM YOĞURT', N'DOST')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (8, 2, N'PATATEST CİPSİ', N'LAYS')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (9, 2, N'DANA SUCUK', N'NAMET')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (10, 2, N'HİNDİ FÜME', N'PINAR')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (11, 3, N'SIVI ÇAMAŞIR DETERJAN', N'OMO')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (12, 3, N'TOZ DETERJAN', N'ALO')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (13, 3, N'KÖPÜK', N'Domestos')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (14, 3, N'BULAŞIK MAKİNESİ DETERJAN', N'FINISH')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (15, 3, N'ODA KOKUSU', N'GLADE')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (16, 4, N'BLENDER SETİ', N'ARZUM')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (17, 4, N'P1200 PRATIC KURU SÜPÜRGE', N'FANTOM')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (18, 4, N' A328-05 TOST MAKİNESİ', N'KORKMAZ')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (19, 4, N'3143 KATI MEYVE SIKACAĞI', N'SBH')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (20, 4, N'AZUR GC4552 ÜTÜ', N'PHILIPS')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (21, 5, N'96 YAPRAK ÇİZGİLİ DEFTER', N'GIPTA')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (22, 5, N'ORBIT CRAFTY WINE SIRT ÇANTASI', N'EASTPAK')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (23, 5, N'24 RENK BOYA KALEMİ', N'FABER CASTELL')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (24, 5, N'ATATÜRK SPİRALLİ AJANDA', N'KESKİN COLOR')
INSERT [dbo].[Urun] ([UrunID], [Kategori], [UrunAD], [UrunMARKA]) VALUES (25, 5, N'TÜKENMEZ KALEM', N'FABER CASTELL')
SET IDENTITY_INSERT [dbo].[Urun] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Musteri__31C49B2393B7CD40]    Script Date: 7.12.2020 18:24:49 ******/
ALTER TABLE [dbo].[Musteri] ADD UNIQUE NONCLUSTERED 
(
	[MusteriCEPTEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Musteri__72620D5695B4F5EB]    Script Date: 7.12.2020 18:24:49 ******/
ALTER TABLE [dbo].[Musteri] ADD UNIQUE NONCLUSTERED 
(
	[MusteriTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Satislar] ADD  CONSTRAINT [DF_Satislar_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD FOREIGN KEY([Kategori])
REFERENCES [dbo].[Kategori] ([KategoriID])
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD FOREIGN KEY([Musteri])
REFERENCES [dbo].[Musteri] ([MusteriID])
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD FOREIGN KEY([Personel])
REFERENCES [dbo].[Personel] ([PersonelID])
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD FOREIGN KEY([Urun])
REFERENCES [dbo].[Urun] ([UrunID])
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Kategori] FOREIGN KEY([Kategori])
REFERENCES [dbo].[Kategori] ([KategoriID])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Kategori]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Musteri] FOREIGN KEY([Musteri])
REFERENCES [dbo].[Musteri] ([MusteriID])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Musteri]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Personel] FOREIGN KEY([Personel])
REFERENCES [dbo].[Personel] ([PersonelID])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Personel]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Urun] FOREIGN KEY([Urun])
REFERENCES [dbo].[Urun] ([UrunID])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Urun]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD FOREIGN KEY([Kategori])
REFERENCES [dbo].[Kategori] ([KategoriID])
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Kategori] FOREIGN KEY([Kategori])
REFERENCES [dbo].[Kategori] ([KategoriID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Kategori]
GO
USE [master]
GO
ALTER DATABASE [IliskiselDBDenemesi] SET  READ_WRITE 
GO
