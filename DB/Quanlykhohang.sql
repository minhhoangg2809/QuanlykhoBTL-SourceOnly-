USE [master]
GO
/****** Object:  Database [QuanlyKhoDoanhNghiep]    Script Date: 08/31/2019 15:04:57 ******/
CREATE DATABASE [QuanlyKhoDoanhNghiep] 
GO

ALTER DATABASE [QuanlyKhoDoanhNghiep] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanlyKhoDoanhNghiep].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET AUTO_CLOSE ON
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET  ENABLE_BROKER
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET  READ_WRITE
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET  MULTI_USER
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanlyKhoDoanhNghiep] SET DB_CHAINING OFF
GO
USE [QuanlyKhoDoanhNghiep]
GO
/****** Object:  ForeignKey [fk_NHANVIEN_quyen]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[NHANVIEN] DROP CONSTRAINT [fk_NHANVIEN_quyen]
GO
/****** Object:  ForeignKey [fk_MATHANG_ma_dv]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[MATHANG] DROP CONSTRAINT [fk_MATHANG_ma_dv]
GO
/****** Object:  ForeignKey [fk_MATHANG_ma_loai]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[MATHANG] DROP CONSTRAINT [fk_MATHANG_ma_loai]
GO
/****** Object:  ForeignKey [fk_MATHANG_ma_nhacugcap]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[MATHANG] DROP CONSTRAINT [fk_MATHANG_ma_nhacugcap]
GO
/****** Object:  ForeignKey [fk_TAIKHOAN_nhanvien]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[TAIKHOAN] DROP CONSTRAINT [fk_TAIKHOAN_nhanvien]
GO
/****** Object:  ForeignKey [fk_CHITIETPHIEUNHAP_ma_mathang]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [fk_CHITIETPHIEUNHAP_ma_mathang]
GO
/****** Object:  ForeignKey [fk_CT_ma_phieunhap]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [fk_CT_ma_phieunhap]
GO
/****** Object:  ForeignKey [FK_CHITIETPHIEUXUAT_PHIEUXUAT]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [FK_CHITIETPHIEUXUAT_PHIEUXUAT]
GO
/****** Object:  ForeignKey [fk_Ma_ctnhap]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [fk_Ma_ctnhap]
GO
/****** Object:  ForeignKey [fk_Ma_khachhang]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [fk_Ma_khachhang]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUXUAT]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [FK_CHITIETPHIEUXUAT_PHIEUXUAT]
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [fk_Ma_ctnhap]
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [fk_Ma_khachhang]
GO
DROP TABLE [dbo].[CHITIETPHIEUXUAT]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [fk_CHITIETPHIEUNHAP_ma_mathang]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [fk_CT_ma_phieunhap]
GO
DROP TABLE [dbo].[CHITIETPHIEUNHAP]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[TAIKHOAN] DROP CONSTRAINT [fk_TAIKHOAN_nhanvien]
GO
DROP TABLE [dbo].[TAIKHOAN]
GO
/****** Object:  Table [dbo].[MATHANG]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[MATHANG] DROP CONSTRAINT [fk_MATHANG_ma_dv]
GO
ALTER TABLE [dbo].[MATHANG] DROP CONSTRAINT [fk_MATHANG_ma_loai]
GO
ALTER TABLE [dbo].[MATHANG] DROP CONSTRAINT [fk_MATHANG_ma_nhacugcap]
GO
DROP TABLE [dbo].[MATHANG]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[NHANVIEN] DROP CONSTRAINT [fk_NHANVIEN_quyen]
GO
DROP TABLE [dbo].[NHANVIEN]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 08/31/2019 15:05:00 ******/
DROP TABLE [dbo].[PHIEUNHAP]
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 08/31/2019 15:05:00 ******/
DROP TABLE [dbo].[PHIEUXUAT]
GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 08/31/2019 15:04:59 ******/
DROP TABLE [dbo].[QUYEN]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 08/31/2019 15:04:59 ******/
DROP TABLE [dbo].[NHACUNGCAP]
GO
/****** Object:  Table [dbo].[DONVITINH]    Script Date: 08/31/2019 15:04:59 ******/
DROP TABLE [dbo].[DONVITINH]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 08/31/2019 15:04:59 ******/
DROP TABLE [dbo].[KHACHHANG]
GO
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 08/31/2019 15:04:59 ******/
DROP TABLE [dbo].[LOAIHANG]
GO
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 08/31/2019 15:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIHANG](
	[ma_loaihang] [varchar](255) NOT NULL,
	[ten_loaihang] [nvarchar](255) NOT NULL,
	[mota] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_loaihang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LOAIHANG] ([ma_loaihang], [ten_loaihang], [mota], [IsDeleted]) VALUES (N'DAMTA', N'Máy đo', NULL, 0)
INSERT [dbo].[LOAIHANG] ([ma_loaihang], [ten_loaihang], [mota], [IsDeleted]) VALUES (N'DPRBS', N'Thiết bị y tế', NULL, 0)
INSERT [dbo].[LOAIHANG] ([ma_loaihang], [ten_loaihang], [mota], [IsDeleted]) VALUES (N'DQNLP', N'Máy chụp', NULL, 0)
INSERT [dbo].[LOAIHANG] ([ma_loaihang], [ten_loaihang], [mota], [IsDeleted]) VALUES (N'DUGIB', N'Máy chiếu', NULL, 0)
INSERT [dbo].[LOAIHANG] ([ma_loaihang], [ten_loaihang], [mota], [IsDeleted]) VALUES (N'ORUNF', N'Thiết bị chuyên khoa', NULL, 0)
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 08/31/2019 15:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[ma_khachhang] [varchar](255) NOT NULL,
	[ten_khachhang] [nvarchar](255) NOT NULL,
	[sodienthoai] [nvarchar](20) NULL,
	[diachi] [nvarchar](255) NOT NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_khachhang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [ten_khachhang], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'1ebea872-9ea5-4933-8792-cc679f411b9b', N'Guest Com I', N'0990909090', N'Hanoi', 0)
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [ten_khachhang], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'335ad814-8548-4ef7-ba70-a742189ff614', N'Guest Com IV', N'0990909090', N'Hanoi', 0)
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [ten_khachhang], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'510ec936-2681-49b7-9507-b073d34e8ccf', N'Guest Com V', N'0990909090', N'Hanoi', 0)
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [ten_khachhang], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'9377779d-a4ea-4114-b1cb-98c7a1fa5bc4', N'Guest Com II', N'0990909090', N'Hanoi', 0)
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [ten_khachhang], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'b923c6b2-787c-422c-863b-d807e7f93d96', N'Guest Com III', N'0990909090', N'Hanoi', 0)
/****** Object:  Table [dbo].[DONVITINH]    Script Date: 08/31/2019 15:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONVITINH](
	[ma_donvi] [varchar](255) NOT NULL,
	[ten_donvi] [nvarchar](255) NOT NULL,
	[mota] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_donvi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DONVITINH] ([ma_donvi], [ten_donvi], [mota], [IsDeleted]) VALUES (N'DTJHH', N'Bộ', NULL, 0)
INSERT [dbo].[DONVITINH] ([ma_donvi], [ten_donvi], [mota], [IsDeleted]) VALUES (N'LAQHK', N'Hộp', NULL, 0)
INSERT [dbo].[DONVITINH] ([ma_donvi], [ten_donvi], [mota], [IsDeleted]) VALUES (N'MKNOF', N'Cái', NULL, 0)
INSERT [dbo].[DONVITINH] ([ma_donvi], [ten_donvi], [mota], [IsDeleted]) VALUES (N'OMLGN', N'Chiếc', NULL, 0)
INSERT [dbo].[DONVITINH] ([ma_donvi], [ten_donvi], [mota], [IsDeleted]) VALUES (N'SQREM', N'Hệ thống', NULL, 0)
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 08/31/2019 15:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[ma_nhacungcap] [varchar](255) NOT NULL,
	[ten_nhacungcap] [nvarchar](255) NOT NULL,
	[sodienthoai] [nvarchar](20) NULL,
	[diachi] [nvarchar](255) NOT NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhacungcap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'40bfd5fa-fa4b-4701-aa97-242b5d9a2ac5', N'A Com', N'0999091290', N'JAPAN', 0)
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'439cf17c-1b43-4db2-8c27-b1a64f25fea9', N'G Com', N'0990909095', N'VIETNAM', 0)
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'44477a7d-16fb-4b44-913e-f49b9cd2f461', N'B Com', N'0990909090', N'JAPAN', 0)
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'7602d697-304d-47fc-b40d-d44c02fa3fc1', N'C Com', N'0978654431', N'USA', 0)
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'7c69e537-00f7-4edb-a759-5456ee7e8f19', N'D Com', N'0999090090', N'USA', 0)
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [sodienthoai], [diachi], [IsDeleted]) VALUES (N'b1bf0bcc-99d4-41bd-b097-450ffc3dd64c', N'E Com', N'0978654433', N'JAPAN', 0)
/****** Object:  Table [dbo].[QUYEN]    Script Date: 08/31/2019 15:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[ma_quyen] [int] IDENTITY(1,1) NOT NULL,
	[ten_quyen] [nvarchar](255) NOT NULL,
	[mota] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_quyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[QUYEN] ON
INSERT [dbo].[QUYEN] ([ma_quyen], [ten_quyen], [mota], [IsDeleted]) VALUES (1, N'Quản lý', N'Quản lý', 0)
INSERT [dbo].[QUYEN] ([ma_quyen], [ten_quyen], [mota], [IsDeleted]) VALUES (2, N'Thủ kho', N'Thủ kho', 0)
SET IDENTITY_INSERT [dbo].[QUYEN] OFF
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 08/31/2019 15:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[ma_phieuxuat] [nvarchar](255) NOT NULL,
	[ngayxuat] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phieuxuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PHIEUXUAT] ([ma_phieuxuat], [ngayxuat]) VALUES (N'241c9045-50f8-41b5-bbdd-94ba326f0764', N'4/6/2019')
INSERT [dbo].[PHIEUXUAT] ([ma_phieuxuat], [ngayxuat]) VALUES (N'3761f733-67f8-4155-9a0e-7fd55646ac16', N'8/4/2019')
INSERT [dbo].[PHIEUXUAT] ([ma_phieuxuat], [ngayxuat]) VALUES (N'3a4f7531-5795-4f24-8802-b4c7b097f219', N'9/4/2019')
INSERT [dbo].[PHIEUXUAT] ([ma_phieuxuat], [ngayxuat]) VALUES (N'3bc04c3e-d1b8-4f09-b565-c958e6e98ae4', N'2/6/2019')
INSERT [dbo].[PHIEUXUAT] ([ma_phieuxuat], [ngayxuat]) VALUES (N'4ba4b764-e200-4bbb-920c-cebb5fe8492e', N'8/6/2019')
INSERT [dbo].[PHIEUXUAT] ([ma_phieuxuat], [ngayxuat]) VALUES (N'53dee3a2-b32f-42ee-9ccd-6da577864faa', N'12/4/2019')
INSERT [dbo].[PHIEUXUAT] ([ma_phieuxuat], [ngayxuat]) VALUES (N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc', N'14/6/2019')
INSERT [dbo].[PHIEUXUAT] ([ma_phieuxuat], [ngayxuat]) VALUES (N'e3206540-08d5-464f-a6a1-0d9a288cdcc3', N'11/4/2019')
INSERT [dbo].[PHIEUXUAT] ([ma_phieuxuat], [ngayxuat]) VALUES (N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83', N'6/6/2019')
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 08/31/2019 15:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[ma_phieunhap] [nvarchar](255) NOT NULL,
	[ngaynhap] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phieunhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'104a435a-5f0f-4ddb-84e3-99fa7c614af9', N'1/5/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'1f753da8-2e21-4c82-9116-5a7fb042d1e5', N'2/6/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'247cebfd-23d0-4241-9cfa-a845c4efb10f', N'7/4/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'3b0a4c36-e5c9-46e1-82b4-93dbcd81f3bf', N'8/4/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'41ddce4b-55be-4e60-aed6-9cab63b2f49a', N'27/3/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'720c01b0-55e5-4dad-bb61-c76dc39e2290', N'18/4/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'76b11b74-294c-4430-b283-38fbf45511dc', N'25/5/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'895ef50e-09ae-4eee-99f3-42c4136f74e2', N'9/4/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'bff55ad8-f681-4000-9d94-53e6ea8cbf8d', N'26/4/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'c84f689c-7242-4cf3-bf9b-5fa9869546dc', N'25/3/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'cd578323-b3df-444e-80f3-cfe17db3fd93', N'26/3/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'd4ac8d7a-6ddb-4eab-922d-eea37c8fe0a9', N'23/4/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', N'6/6/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'e75d0d7e-53e0-4416-8524-9231ed4cd6cc', N'10/4/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'e7a54531-78e7-443f-9476-da21c3fc170a', N'28/3/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'e8448a06-9306-4203-89da-1b8b839e35cd', N'29/3/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'f93bc5b3-74e1-44f1-b983-caa961ce46d4', N'5/4/2019')
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ngaynhap]) VALUES (N'fb807632-ec9e-4dbd-8abf-124a16220684', N'15/5/2019')
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 08/31/2019 15:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[ma_nhanvien] [varchar](255) NOT NULL,
	[ten_nhanvien] [nvarchar](255) NOT NULL,
	[ngaysinh] [nvarchar](20) NOT NULL,
	[sodienthoai] [nvarchar](20) NULL,
	[diachi] [nvarchar](255) NOT NULL,
	[ma_quyen] [int] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhanvien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'0311708783', N'Giáp Hoàng', N'28/9/1998', N'0990999999', N'Hà Nội', 2, 0)
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'0578560053', N'Hoàng Giáp', N'12/11/1998', N'0974781872', N'Thái Nguyên', 2, 0)
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'3405116864', N'Giáp Hoàng', N'19/3/2019', N'0990900990', N'Hà Nội', 1, 0)
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'4211742777', N'Minh Hoàng ', N'20/9/1998', N'0978787878', N'Lào Cai', 2, 0)
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'4354455140', N'Hoàng Minh', N'10/11/1998', N'0978787872', N'Yên Bái', 2, 0)
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'4979957312', N'Giáp Minh Hoàng', N'28/9/1998', N'0978123455', N'Hà Nội', 1, 0)
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'5884216487', N'Giáp Hoàng Minh', N'10/11/1998', N'0978787871', N'Hà Giang', 1, 0)
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'7724487862', N'Hoàng Giáp', N'1/1/2019', N'0909909090', N'Hà Nội', 2, 0)
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'8563274370', N'Hoàng Minh Giáp', N'10/11/1998', N'0974787872', N'Vĩnh Phúc', 2, 0)
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [ten_nhanvien], [ngaysinh], [sodienthoai], [diachi], [ma_quyen], [IsDeleted]) VALUES (N'8843142484', N'Giáp Minh Hoàng', N'28/9/1998', N'0990909090', N'Lạng Sơn', 2, 0)
/****** Object:  Table [dbo].[MATHANG]    Script Date: 08/31/2019 15:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATHANG](
	[ma_mathang] [varchar](255) NOT NULL,
	[ten_mathang] [nvarchar](255) NOT NULL,
	[hang] [nvarchar](255) NULL,
	[dong] [nvarchar](255) NOT NULL,
	[mota] [nvarchar](255) NULL,
	[ma_loaihang] [varchar](255) NULL,
	[ma_nhacungcap] [varchar](255) NULL,
	[ma_donvi] [varchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_mathang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'0281437444', N'Máy rửa dây nội soi bằng tia OZONE', N'Ozane', N'OZ-34', NULL, N'ORUNF', N'44477a7d-16fb-4b44-913e-f49b9cd2f461', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'0334533467', N'Cân sức khỏe TT-U1', N'MS-AA', N'CAA', NULL, N'DPRBS', N'7c69e537-00f7-4edb-a759-5456ee7e8f19', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'0428442883', N'Máy đo PPP', N'ABC', N'DC', NULL, N'DAMTA', N'439cf17c-1b43-4db2-8c27-b1a64f25fea9', N'DTJHH', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'0631682180', N'Máy đo thân nhiệt', N'B Com', N'D1', NULL, N'DQNLP', N'44477a7d-16fb-4b44-913e-f49b9cd2f461', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'0741241818', N'Hệ thống điện sinh lý tim', N'HITACHI', N'HDTV1', NULL, N'DPRBS', N'7c69e537-00f7-4edb-a759-5456ee7e8f19', N'DTJHH', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'1220588181', N'Nhiệt kế điện tử', N'NKDT', N'NK1', NULL, N'DQNLP', N'40bfd5fa-fa4b-4701-aa97-242b5d9a2ac5', N'SQREM', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'1528578327', N'Cân điện tử', N'A Com', N'R1', NULL, N'DPRBS', N'40bfd5fa-fa4b-4701-aa97-242b5d9a2ac5', N'SQREM', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'1618723614', N'Monitor theo dõi bệnh nhân ', N'Vaysion', N'VS-3', NULL, N'DPRBS', N'40bfd5fa-fa4b-4701-aa97-242b5d9a2ac5', N'MKNOF', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'1685122350', N'Máy massage chân', N'MS-AA', N'U1', NULL, N'DAMTA', N'439cf17c-1b43-4db2-8c27-b1a64f25fea9', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'2001462877', N'Máy đo As-cyn', N'D Com', N'DC', NULL, N'DUGIB', N'7c69e537-00f7-4edb-a759-5456ee7e8f19', N'DTJHH', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'2706502246', N'Cone Beam CT ', N'Toshiba', N'CT-23', NULL, N'ORUNF', N'44477a7d-16fb-4b44-913e-f49b9cd2f461', N'DTJHH', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'2724527761', N'Nhiệt kế hồng ngoại', N'HN', N'N1', NULL, N'DAMTA', N'7602d697-304d-47fc-b40d-d44c02fa3fc1', N'OMLGN', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'3048581254', N'Hệ thống gia tốc tuyến tính', N'Yoshida', N'HDD1-2', NULL, N'ORUNF', N'439cf17c-1b43-4db2-8c27-b1a64f25fea9', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'3071800004', N'Máy massage cổ', N'MS-AA', N'U1', NULL, N'DAMTA', N'439cf17c-1b43-4db2-8c27-b1a64f25fea9', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'3084443545', N'Máy siêu âm', N'SA', N'Mo-11', NULL, N'DQNLP', N'44477a7d-16fb-4b44-913e-f49b9cd2f461', N'OMLGN', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'3156128232', N'Máy đo huyết áp', N'D Com', N'G1', NULL, N'DPRBS', N'b1bf0bcc-99d4-41bd-b097-450ffc3dd64c', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'3867551507', N'Máy siêu âm BZA', N'B Com', N'D1', NULL, N'DAMTA', N'44477a7d-16fb-4b44-913e-f49b9cd2f461', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'4505371477', N'Hệ thống Leksell Gamma Knife', N'Carestream', N'YL-10', NULL, N'DQNLP', N'40bfd5fa-fa4b-4701-aa97-242b5d9a2ac5', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'5336163422', N'Máy đo loãng xương bằng tia X ', N'Xmensaine', N'XM-908', NULL, N'DUGIB', N'7602d697-304d-47fc-b40d-d44c02fa3fc1', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'5454320125', N'Máy chụp X-quang răng IntraoralTakeshi', N'Takeshi', N'TK-7', NULL, N'ORUNF', N'b1bf0bcc-99d4-41bd-b097-450ffc3dd64c', N'OMLGN', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'6248824348', N'Máy đo nhịp tim', N'AI', N'AI', NULL, N'DQNLP', N'7602d697-304d-47fc-b40d-d44c02fa3fc1', N'DTJHH', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'6300113713', N'Hệ thống kiểm tra tổng thể', N'B Com', N'D1', NULL, N'ORUNF', N'44477a7d-16fb-4b44-913e-f49b9cd2f461', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'6504461833', N'Bơm tiêm điện', N'Baikes', N'BK-4', NULL, N'DQNLP', N'439cf17c-1b43-4db2-8c27-b1a64f25fea9', N'MKNOF', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'6814060816', N'Máy xạ trị áp sát liều cao ', N'Tokyo Boeki', N'CH-64', NULL, N'ORUNF', N'44477a7d-16fb-4b44-913e-f49b9cd2f461', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'7344451134', N'Máy đo xơ vữa động mạch ', N'Disaybe', N'DS-1080', NULL, N'DQNLP', N'40bfd5fa-fa4b-4701-aa97-242b5d9a2ac5', N'MKNOF', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'7514868160', N'Hệ thống nội soi chẩn đoán ', N'Dainisa', N'DN-8', NULL, N'DAMTA', N'b1bf0bcc-99d4-41bd-b097-450ffc3dd64c', N'OMLGN', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'7715053670', N'Ghế máy nha khoa ', N'Ozama', N'BG-4', NULL, N'DAMTA', N'439cf17c-1b43-4db2-8c27-b1a64f25fea9', N'DTJHH', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'7817252244', N'Máy đo chức năng não ', N'Chainayse', N'CNS-65', NULL, N'DPRBS', N'7c69e537-00f7-4edb-a759-5456ee7e8f19', N'LAQHK', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'7830682608', N'Máy siêu âm 2', N'D-Y', N'Mo-11', NULL, N'DQNLP', N'44477a7d-16fb-4b44-913e-f49b9cd2f461', N'OMLGN', 0)
INSERT [dbo].[MATHANG] ([ma_mathang], [ten_mathang], [hang], [dong], [mota], [ma_loaihang], [ma_nhacungcap], [ma_donvi], [IsDeleted]) VALUES (N'8181704884', N'Cân sức khỏe', N'MS-AA', N'CA', NULL, N'DPRBS', N'7c69e537-00f7-4edb-a759-5456ee7e8f19', N'LAQHK', 0)
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 08/31/2019 15:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[ma_taikhoan] [varchar](255) NOT NULL,
	[ten_taikhoan] [nvarchar](255) NOT NULL,
	[matkhau] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[ma_nhanvien] [varchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[IsLogin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_taikhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TAIKHOAN] ([ma_taikhoan], [ten_taikhoan], [matkhau], [email], [ma_nhanvien], [IsDeleted], [IsLogin]) VALUES (N'1227250011', N'Admin2', N'b0f560d469d355ca3d101d976f37f7ff', N'giapminhhoang98@gmail.com', N'3405116864', 0, 0)
INSERT [dbo].[TAIKHOAN] ([ma_taikhoan], [ten_taikhoan], [matkhau], [email], [ma_nhanvien], [IsDeleted], [IsLogin]) VALUES (N'3336863168', N'User1', N'5a7c599b6adf45fcba40873e58fd772c', N'giapminhhoang98@gmail.com', N'7724487862', 0, 0)
INSERT [dbo].[TAIKHOAN] ([ma_taikhoan], [ten_taikhoan], [matkhau], [email], [ma_nhanvien], [IsDeleted], [IsLogin]) VALUES (N'4823412727', N'User2', N'6d93300f7ca24730664cb043d7a40415', N'giapminhhoang98@gmail.com', N'0311708783', 0, 0)
INSERT [dbo].[TAIKHOAN] ([ma_taikhoan], [ten_taikhoan], [matkhau], [email], [ma_nhanvien], [IsDeleted], [IsLogin]) VALUES (N'5570957312', N'Admin1', N'1505fb613ff42078892c7b92d83af68e', N'minhhoangj1998@gmail.com', N'4979957312', 0, 0)
INSERT [dbo].[TAIKHOAN] ([ma_taikhoan], [ten_taikhoan], [matkhau], [email], [ma_nhanvien], [IsDeleted], [IsLogin]) VALUES (N'6205465417', N'User3', N'26cff569a3cf4d1b28100b0f8f1ad5c4', N'minhhoangj1998@gmail.com', N'8843142484', 0, 0)
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 08/31/2019 15:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[ma_ctphieunhap] [nvarchar](255) NOT NULL,
	[soluongnhap] [int] NOT NULL,
	[soluongthuc] [int] NOT NULL,
	[soluongton] [int] NOT NULL,
	[gianhap] [float] NULL,
	[giaxuat] [float] NULL,
	[ghichu] [nvarchar](max) NULL,
	[ma_phieunhap] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[ma_mathang] [varchar](255) NULL,
	[nguoitao] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_ctphieunhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'05024-1528578327', 10, 10, 10, 1500000, 1800000, NULL, N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'1528578327', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'06712-3867551507', 10, 10, 5, 1000000, 1210000, NULL, N'895ef50e-09ae-4eee-99f3-42c4136f74e2', 0, N'3867551507', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'06807-3156128232', 10, 10, 7, 1000000, 1210000, NULL, N'895ef50e-09ae-4eee-99f3-42c4136f74e2', 0, N'3156128232', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'11304-0334533467', 100, 100, 80, 10000000, 12500000, NULL, N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'0334533467', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'12230-1618723614', 100, 100, 50, 3000000, 3600000, NULL, N'1f753da8-2e21-4c82-9116-5a7fb042d1e5', 0, N'1618723614', N'Giáp Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'13154-2001462877', 50, 50, 50, 5000000, 6000000, NULL, N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'2001462877', N'Giáp Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'14804-0741241818', 50, 50, 20, 5300000, 6413000, NULL, N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'0741241818', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'15743-3156128232', 10, 10, 6, 1000000, 1200000, NULL, N'3b0a4c36-e5c9-46e1-82b4-93dbcd81f3bf', 0, N'3156128232', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'16662-0428442883', 100, 100, 20, 10000000, 12000000, NULL, N'1f753da8-2e21-4c82-9116-5a7fb042d1e5', 0, N'0428442883', N'Giáp Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'18386-2706502246', 30, 30, 20, 1500000, 1800000, N'Bổ sung sản phẩm thiếu', N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'2706502246', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'23260-0631682180', 10, 10, 5, 1000000, 1210000, NULL, N'895ef50e-09ae-4eee-99f3-42c4136f74e2', 0, N'0631682180', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'24005-3867551507', 10, 10, 10, 2000000, 2420000, NULL, N'3b0a4c36-e5c9-46e1-82b4-93dbcd81f3bf', 0, N'3867551507', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'27582-0631682180', 10, 10, 0, 1000000, 1210000, NULL, N'895ef50e-09ae-4eee-99f3-42c4136f74e2', 0, N'0631682180', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'27703-2001462877', 50, 50, 0, 5000000, 5950000, NULL, N'1f753da8-2e21-4c82-9116-5a7fb042d1e5', 0, N'2001462877', N'Giáp Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'36716-1528578327', 10, 10, 5, 1000000, 1210000, NULL, N'895ef50e-09ae-4eee-99f3-42c4136f74e2', 0, N'1528578327', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'36768-0281437444', 50, 40, 30, 5000000, 6050000, N'Thiếu 10 sản phẩm', N'1f753da8-2e21-4c82-9116-5a7fb042d1e5', 0, N'0281437444', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'36854-3867551507', 10, 10, 8, 3000000, 3750000, NULL, N'3b0a4c36-e5c9-46e1-82b4-93dbcd81f3bf', 0, N'3867551507', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'40858-6300113713', 10, 10, 10, 1000000, 1210000, NULL, N'e75d0d7e-53e0-4416-8524-9231ed4cd6cc', 0, N'6300113713', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'41335-1528578327', 10, 10, 0, 1000000, 1250000, NULL, N'3b0a4c36-e5c9-46e1-82b4-93dbcd81f3bf', 0, N'1528578327', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'54850-3156128232', 10, 10, 6, 1000000, 1250000, NULL, N'3b0a4c36-e5c9-46e1-82b4-93dbcd81f3bf', 0, N'3156128232', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'60586-0631682180', 10, 10, 5, 1000000, 1210000, NULL, N'e75d0d7e-53e0-4416-8524-9231ed4cd6cc', 0, N'0631682180', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'61675-6300113713', 10, 10, 10, 1000000, 1210000, NULL, N'e75d0d7e-53e0-4416-8524-9231ed4cd6cc', 0, N'6300113713', N'Hoàng Giáp')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'63705-2706502246', 50, 20, 20, 1800000, 1800000, N'Thiếu 30 sp', N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'2706502246', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'64043-0428442883', 10, 10, 8, 9500000, 10925000, NULL, N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'0428442883', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'71752-0631682180', 10, 10, 5, 1000000, 1250000, NULL, N'3b0a4c36-e5c9-46e1-82b4-93dbcd81f3bf', 0, N'0631682180', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'73804-1528578327', 10, 10, 5, 1000000, 1200000, NULL, N'3b0a4c36-e5c9-46e1-82b4-93dbcd81f3bf', 0, N'1528578327', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'76350-0741241818', 100, 100, 50, 5000000, 6000000, NULL, N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'0741241818', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'81221-2724527761', 50, 50, 50, 1000000, 1200000, NULL, N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'2724527761', N'Giáp Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'88267-0631682180', 10, 10, 5, 1000000, 1250000, NULL, N'3b0a4c36-e5c9-46e1-82b4-93dbcd81f3bf', 0, N'0631682180', N'Giáp Minh Hoàng')
INSERT [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap], [soluongnhap], [soluongthuc], [soluongton], [gianhap], [giaxuat], [ghichu], [ma_phieunhap], [IsDeleted], [ma_mathang], [nguoitao]) VALUES (N'88378-1618723614', 30, 30, 30, 3000000, 3630000, NULL, N'd7128ff1-0c8b-4877-aa9e-e1fc5054d9ee', 0, N'1618723614', N'Giáp Hoàng')
/****** Object:  Table [dbo].[CHITIETPHIEUXUAT]    Script Date: 08/31/2019 15:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUXUAT](
	[ma_ctphieuxuat] [nvarchar](255) NOT NULL,
	[ma_ctphieunhap] [nvarchar](255) NULL,
	[ma_khachhang] [varchar](255) NULL,
	[soluongxuat] [int] NOT NULL,
	[soluongthucxuat] [int] NOT NULL,
	[ghichu] [nvarchar](max) NULL,
	[nguoitao] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[ma_phieuxuat] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_ctphieuxuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'02042-1528578327', N'41335-1528578327', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 2, 2, NULL, N'Hoàng Giáp', 0, N'3a4f7531-5795-4f24-8802-b4c7b097f219')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'04473-0334533467', N'11304-0334533467', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 7, 7, NULL, N'Giáp Hoàng', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'04786-0741241818', N'14804-0741241818', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 20, 20, NULL, N'Hoàng Giáp', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'06385-0631682180', N'23260-0631682180', N'510ec936-2681-49b7-9507-b073d34e8ccf', 2, 2, NULL, N'Giáp Minh Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'08158-3156128232', N'54850-3156128232', N'335ad814-8548-4ef7-ba70-a742189ff614', 1, 1, NULL, N'Hoàng Giáp', 0, N'3a4f7531-5795-4f24-8802-b4c7b097f219')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'10553-1528578327', N'36716-1528578327', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 1, 1, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'11163-0428442883', N'64043-0428442883', N'335ad814-8548-4ef7-ba70-a742189ff614', 1, 1, NULL, N'Giáp Minh Hoàng', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'12072-3867551507', N'36854-3867551507', N'510ec936-2681-49b7-9507-b073d34e8ccf', 2, 2, NULL, N'Hoàng Giáp', 0, N'3761f733-67f8-4155-9a0e-7fd55646ac16')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'14232-1528578327', N'73804-1528578327', N'335ad814-8548-4ef7-ba70-a742189ff614', 2, 2, NULL, N'Hoàng Giáp', 0, N'3761f733-67f8-4155-9a0e-7fd55646ac16')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'15505-2001462877', N'27703-2001462877', N'9377779d-a4ea-4114-b1cb-98c7a1fa5bc4', 10, 10, NULL, N'Giáp Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'16886-3867551507', N'06712-3867551507', N'335ad814-8548-4ef7-ba70-a742189ff614', 1, 1, NULL, N'Hoàng Giáp', 0, N'53dee3a2-b32f-42ee-9ccd-6da577864faa')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'20043-0428442883', N'16662-0428442883', N'335ad814-8548-4ef7-ba70-a742189ff614', 30, 30, NULL, N'Giáp Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'20613-1528578327', N'41335-1528578327', N'510ec936-2681-49b7-9507-b073d34e8ccf', 1, 1, NULL, N'Hoàng Giáp', 0, N'3a4f7531-5795-4f24-8802-b4c7b097f219')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'20748-0428442883', N'16662-0428442883', N'510ec936-2681-49b7-9507-b073d34e8ccf', 10, 10, NULL, N'Giáp Hoàng', 0, N'4ba4b764-e200-4bbb-920c-cebb5fe8492e')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'22517-3867551507', N'06712-3867551507', N'510ec936-2681-49b7-9507-b073d34e8ccf', 4, 4, NULL, N'Hoàng Giáp', 0, N'e3206540-08d5-464f-a6a1-0d9a288cdcc3')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'22767-1528578327', N'41335-1528578327', N'b923c6b2-787c-422c-863b-d807e7f93d96', 2, 2, NULL, N'Hoàng Giáp', 0, N'e3206540-08d5-464f-a6a1-0d9a288cdcc3')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'24700-1618723614', N'12230-1618723614', N'b923c6b2-787c-422c-863b-d807e7f93d96', 5, 5, NULL, N'Hoàng Giáp', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'26433-0428442883', N'16662-0428442883', N'335ad814-8548-4ef7-ba70-a742189ff614', 10, 10, NULL, N'Giáp Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'27510-0631682180', N'71752-0631682180', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 5, 5, NULL, N'Giáp Minh Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'27573-0631682180', N'88267-0631682180', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 5, 5, NULL, N'Giáp Minh Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'28511-1618723614', N'12230-1618723614', N'335ad814-8548-4ef7-ba70-a742189ff614', 5, 5, NULL, N'Hoàng Giáp', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'31314-0631682180', N'23260-0631682180', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 3, 3, NULL, N'Giáp Minh Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'32617-0631682180', N'27582-0631682180', N'510ec936-2681-49b7-9507-b073d34e8ccf', 5, 5, NULL, N'Hoàng Giáp', 0, N'3bc04c3e-d1b8-4f09-b565-c958e6e98ae4')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'33238-1528578327', N'41335-1528578327', N'510ec936-2681-49b7-9507-b073d34e8ccf', 1, 1, NULL, N'Hoàng Giáp', 0, N'3a4f7531-5795-4f24-8802-b4c7b097f219')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'33661-1528578327', N'41335-1528578327', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 3, 3, NULL, N'Giáp Minh Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'34276-0741241818', N'76350-0741241818', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 20, 20, NULL, N'Giáp Hoàng', 0, N'4ba4b764-e200-4bbb-920c-cebb5fe8492e')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'35703-1528578327', N'73804-1528578327', N'b923c6b2-787c-422c-863b-d807e7f93d96', 3, 3, NULL, N'Hoàng Giáp', 0, N'3761f733-67f8-4155-9a0e-7fd55646ac16')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'38313-0741241818', N'76350-0741241818', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 30, 30, NULL, N'Giáp Hoàng', 0, N'4ba4b764-e200-4bbb-920c-cebb5fe8492e')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'41542-1618723614', N'12230-1618723614', N'9377779d-a4ea-4114-b1cb-98c7a1fa5bc4', 5, 5, NULL, N'Hoàng Giáp', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'44524-1618723614', N'12230-1618723614', N'b923c6b2-787c-422c-863b-d807e7f93d96', 5, 5, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'45072-2706502246', N'18386-2706502246', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 5, 5, NULL, N'Hoàng Giáp', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'46131-1618723614', N'12230-1618723614', N'510ec936-2681-49b7-9507-b073d34e8ccf', 10, 10, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'47351-0334533467', N'11304-0334533467', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 7, 7, NULL, N'Giáp Hoàng', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'48206-0741241818', N'14804-0741241818', N'b923c6b2-787c-422c-863b-d807e7f93d96', 10, 10, NULL, N'Giáp Hoàng', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'51321-2706502246', N'18386-2706502246', N'b923c6b2-787c-422c-863b-d807e7f93d96', 5, 5, NULL, N'Hoàng Giáp', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'54771-3156128232', N'54850-3156128232', N'510ec936-2681-49b7-9507-b073d34e8ccf', 3, 3, NULL, N'Hoàng Giáp', 0, N'3761f733-67f8-4155-9a0e-7fd55646ac16')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'54860-0428442883', N'16662-0428442883', N'335ad814-8548-4ef7-ba70-a742189ff614', 10, 10, NULL, N'Giáp Hoàng', 0, N'4ba4b764-e200-4bbb-920c-cebb5fe8492e')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'55557-0428442883', N'16662-0428442883', N'510ec936-2681-49b7-9507-b073d34e8ccf', 10, 10, NULL, N'Giáp Hoàng', 0, N'4ba4b764-e200-4bbb-920c-cebb5fe8492e')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'56418-0631682180', N'27582-0631682180', N'9377779d-a4ea-4114-b1cb-98c7a1fa5bc4', 2, 2, NULL, N'Giáp Hoàng', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'57405-3156128232', N'15743-3156128232', N'510ec936-2681-49b7-9507-b073d34e8ccf', 1, 1, NULL, N'Hoàng Giáp', 0, N'53dee3a2-b32f-42ee-9ccd-6da577864faa')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'58034-1528578327', N'36716-1528578327', N'510ec936-2681-49b7-9507-b073d34e8ccf', 1, 1, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'60277-2001462877', N'27703-2001462877', N'b923c6b2-787c-422c-863b-d807e7f93d96', 20, 20, NULL, N'Giáp Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'63252-1618723614', N'12230-1618723614', N'335ad814-8548-4ef7-ba70-a742189ff614', 5, 5, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'63725-1528578327', N'41335-1528578327', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 1, 1, NULL, N'Hoàng Giáp', 0, N'e3206540-08d5-464f-a6a1-0d9a288cdcc3')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'64374-1528578327', N'36716-1528578327', N'b923c6b2-787c-422c-863b-d807e7f93d96', 1, 1, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'66557-0334533467', N'11304-0334533467', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 3, 3, NULL, N'Giáp Hoàng', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'66651-0334533467', N'11304-0334533467', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 3, 3, NULL, N'Giáp Hoàng', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'68127-0631682180', N'27582-0631682180', N'b923c6b2-787c-422c-863b-d807e7f93d96', 3, 3, NULL, N'Hoàng Giáp', 0, N'53dee3a2-b32f-42ee-9ccd-6da577864faa')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'68626-1618723614', N'12230-1618723614', N'9377779d-a4ea-4114-b1cb-98c7a1fa5bc4', 5, 5, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'70557-1618723614', N'12230-1618723614', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 5, 5, NULL, N'Hoàng Giáp', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'71165-0631682180', N'60586-0631682180', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 5, 5, NULL, N'Giáp Hoàng', 0, N'241c9045-50f8-41b5-bbdd-94ba326f0764')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'71431-3156128232', N'15743-3156128232', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 3, 3, NULL, N'Hoàng Giáp', 0, N'3761f733-67f8-4155-9a0e-7fd55646ac16')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'71573-1618723614', N'12230-1618723614', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 5, 5, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'73776-0428442883', N'64043-0428442883', N'510ec936-2681-49b7-9507-b073d34e8ccf', 1, 1, NULL, N'Giáp Minh Hoàng', 0, N'8e8ad752-34a4-4f9d-9e80-ba99572f4fcc')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'75884-1528578327', N'36716-1528578327', N'b923c6b2-787c-422c-863b-d807e7f93d96', 1, 1, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'76463-2001462877', N'27703-2001462877', N'510ec936-2681-49b7-9507-b073d34e8ccf', 20, 20, NULL, N'Hoàng Giáp', 0, N'3bc04c3e-d1b8-4f09-b565-c958e6e98ae4')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'76614-3156128232', N'06807-3156128232', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 3, 3, NULL, N'Hoàng Giáp', 0, N'53dee3a2-b32f-42ee-9ccd-6da577864faa')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'81440-0428442883', N'16662-0428442883', N'1ebea872-9ea5-4933-8792-cc679f411b9b', 10, 10, NULL, N'Hoàng Giáp', 0, N'3bc04c3e-d1b8-4f09-b565-c958e6e98ae4')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'84064-1528578327', N'36716-1528578327', N'335ad814-8548-4ef7-ba70-a742189ff614', 1, 1, NULL, N'Giáp Hoàng', 0, N'ffb83b95-cf94-4918-8a74-c43ce2b3ab83')
INSERT [dbo].[CHITIETPHIEUXUAT] ([ma_ctphieuxuat], [ma_ctphieunhap], [ma_khachhang], [soluongxuat], [soluongthucxuat], [ghichu], [nguoitao], [IsDeleted], [ma_phieuxuat]) VALUES (N'85312-0281437444', N'36768-0281437444', N'9377779d-a4ea-4114-b1cb-98c7a1fa5bc4', 10, 10, NULL, N'Hoàng Giáp', 0, N'3bc04c3e-d1b8-4f09-b565-c958e6e98ae4')
/****** Object:  ForeignKey [fk_NHANVIEN_quyen]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [fk_NHANVIEN_quyen] FOREIGN KEY([ma_quyen])
REFERENCES [dbo].[QUYEN] ([ma_quyen])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [fk_NHANVIEN_quyen]
GO
/****** Object:  ForeignKey [fk_MATHANG_ma_dv]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [fk_MATHANG_ma_dv] FOREIGN KEY([ma_donvi])
REFERENCES [dbo].[DONVITINH] ([ma_donvi])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [fk_MATHANG_ma_dv]
GO
/****** Object:  ForeignKey [fk_MATHANG_ma_loai]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [fk_MATHANG_ma_loai] FOREIGN KEY([ma_loaihang])
REFERENCES [dbo].[LOAIHANG] ([ma_loaihang])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [fk_MATHANG_ma_loai]
GO
/****** Object:  ForeignKey [fk_MATHANG_ma_nhacugcap]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [fk_MATHANG_ma_nhacugcap] FOREIGN KEY([ma_nhacungcap])
REFERENCES [dbo].[NHACUNGCAP] ([ma_nhacungcap])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [fk_MATHANG_ma_nhacugcap]
GO
/****** Object:  ForeignKey [fk_TAIKHOAN_nhanvien]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_TAIKHOAN_nhanvien] FOREIGN KEY([ma_nhanvien])
REFERENCES [dbo].[NHANVIEN] ([ma_nhanvien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_TAIKHOAN_nhanvien]
GO
/****** Object:  ForeignKey [fk_CHITIETPHIEUNHAP_ma_mathang]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_CHITIETPHIEUNHAP_ma_mathang] FOREIGN KEY([ma_mathang])
REFERENCES [dbo].[MATHANG] ([ma_mathang])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [fk_CHITIETPHIEUNHAP_ma_mathang]
GO
/****** Object:  ForeignKey [fk_CT_ma_phieunhap]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_CT_ma_phieunhap] FOREIGN KEY([ma_phieunhap])
REFERENCES [dbo].[PHIEUNHAP] ([ma_phieunhap])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [fk_CT_ma_phieunhap]
GO
/****** Object:  ForeignKey [FK_CHITIETPHIEUXUAT_PHIEUXUAT]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHIEUXUAT_PHIEUXUAT] FOREIGN KEY([ma_phieuxuat])
REFERENCES [dbo].[PHIEUXUAT] ([ma_phieuxuat])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] CHECK CONSTRAINT [FK_CHITIETPHIEUXUAT_PHIEUXUAT]
GO
/****** Object:  ForeignKey [fk_Ma_ctnhap]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [fk_Ma_ctnhap] FOREIGN KEY([ma_ctphieunhap])
REFERENCES [dbo].[CHITIETPHIEUNHAP] ([ma_ctphieunhap])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] CHECK CONSTRAINT [fk_Ma_ctnhap]
GO
/****** Object:  ForeignKey [fk_Ma_khachhang]    Script Date: 08/31/2019 15:05:00 ******/
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [fk_Ma_khachhang] FOREIGN KEY([ma_khachhang])
REFERENCES [dbo].[KHACHHANG] ([ma_khachhang])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] CHECK CONSTRAINT [fk_Ma_khachhang]
GO
