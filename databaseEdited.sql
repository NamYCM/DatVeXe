/****** Object:  Database [QLyDatXe]    Script Date: 6/15/2021 6:26:39 PM ******/
CREATE DATABASE [QLyDatXe]
GO
USE [QLyDatXe]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Account] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Kind] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Car_License_Plates] [varchar](50) NOT NULL,
	[Car_Seat_Amount] [int] NOT NULL,
	[Gar_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[Car_License_Plates] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[Driver_CMND] [varchar](50) NOT NULL,
	[Driver_License] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[Driver_CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gara]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gara](
	[Gara_Name] [nvarchar](50) NOT NULL,
	[Gara_Picture] [ntext] NULL,
	[Gara_Review] [nvarchar](50) NULL,
	[Bus_Res_number] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[Account] [varchar](50) NULL,
 CONSTRAINT [PK_Gara] PRIMARY KEY CLUSTERED 
(
	[Gara_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manage_Passenger_Care]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manage_Passenger_Care](
	[Staff_CMND] [varchar](50) NOT NULL,
	[Passenger_SDT] [varchar](50) NOT NULL,
	[Passenger_Care_Time] [datetime] NOT NULL,
 CONSTRAINT [PK_Manage_Passenger_Care] PRIMARY KEY CLUSTERED 
(
	[Staff_CMND] ASC,
	[Passenger_SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManageDrive]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManageDrive](
	[Drive_CMND] [varchar](50) NOT NULL,
	[Trip_No] [varchar](50) NOT NULL,
	[Car_License_Plates] [varchar](50) NOT NULL,
	[Drive_Date] [date] NOT NULL,
	[Drive_Hour] [time](7) NOT NULL,
 CONSTRAINT [PK_ManageDrive] PRIMARY KEY CLUSTERED 
(
	[Drive_CMND] ASC,
	[Trip_No] ASC,
	[Car_License_Plates] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManageReview]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManageReview](
	[Passenger_SDT] [varchar](50) NOT NULL,
	[Trip_No] [varchar](50) NOT NULL,
	[Staff_Attitude] [int] NOT NULL,
	[Service_Quality] [int] NOT NULL,
	[Safe] [int] NOT NULL,
	[Information] [int] NOT NULL,
	[Convenient] [int] NOT NULL,
	[Comment] [ntext] NULL,
	[Review_Time] [datetime] NOT NULL,
 CONSTRAINT [PK_ManageReview] PRIMARY KEY CLUSTERED 
(
	[Passenger_SDT] ASC,
	[Trip_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passenger](
	[Passenger_SDT] [varchar](50) NOT NULL,
	[Passenger_First_Name] [nvarchar](50) NOT NULL,
	[Passenger_Last_Name] [nvarchar](50) NOT NULL,
	[Passenger_Email] [varchar](50) NULL,
	[Account] [varchar](50) NULL,
 CONSTRAINT [PK_Passenger] PRIMARY KEY CLUSTERED 
(
	[Passenger_SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger_Care]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passenger_Care](
	[Staff_CMND] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Passenger_Care] PRIMARY KEY CLUSTERED 
(
	[Staff_CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleOfGara]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleOfGara](
	[TripOfGara_no] [nchar](50) NOT NULL,
	[Gara_Name] [nvarchar](50) NOT NULL,
	[Schedule_no] [nchar](10) NOT NULL,
	[DayInWeek] [int] NOT NULL,
	[DepartTime] [time](7) NOT NULL,
	[TicketPrice] [money] NOT NULL,
	[AdminChecked] [bit] NULL,
 CONSTRAINT [PK_ScheduelOfGara] PRIMARY KEY CLUSTERED 
(
	[TripOfGara_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Staff_CMND] [varchar](50) NOT NULL,
	[Staff_First_Name] [nvarchar](50) NOT NULL,
	[Staff_Last_Name] [nvarchar](50) NOT NULL,
	[Staff_SDT] [varchar](50) NOT NULL,
	[Staff_Gender] [nvarchar](50) NULL,
	[Staff_Account] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Staff_CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Station]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Station](
	[station_No] [nchar](10) NOT NULL,
	[station_Name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Station] PRIMARY KEY CLUSTERED 
(
	[station_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Ticket_No] [varchar](50) NOT NULL,
	[Seat_Position] [nvarchar](5) NOT NULL,
	[Seat_Kind] [nvarchar](50) NOT NULL,
	[Is_Paid] [bit] NOT NULL,
	[Passenger_Note] [ntext] NULL,
	[Book_Time] [smalldatetime] NOT NULL,
	[Staff_CMND] [varchar](50) NULL,
	[Passenger_SDT] [varchar](50) NOT NULL,
	[Trip_No] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Ticket_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TotalScheduels]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalScheduels](
	[SChedule_no] [nchar](10) NOT NULL,
	[BeginStation] [nchar](10) NOT NULL,
	[EndStation] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TotalScheduels] PRIMARY KEY CLUSTERED 
(
	[SChedule_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trip]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trip](
	[Trip_No] [varchar](50) NOT NULL,
	[TripOfGara_no] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Trip] PRIMARY KEY CLUSTERED 
(
	[Trip_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'anhpham', N'006', N'staff')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'boss', N'boss', N'boss')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'chungnguyen', N'024', N'staff')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'gara', N'gara', N'gara')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'hoanglong', N'hoanglong', N'gara')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'huenghia', N'huenghia', N'gara')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'hungcuong', N'hungcuong', N'gara')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'huynguyen', N'081', N'staff')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'mailinh', N'mailinh', N'gara')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'namnguyen', N'129', N'staff')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'phuongtrang', N'phuongtrang', N'gara')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'sangdeptrai', N'33', N'boss')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'sanghuynh', N'171', N'boss')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'staff', N'staff', N'staff')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'thanhbuoi', N'thanhbuoi', N'gara')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'thuky', N'thuky', N'gara')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'Tuan23', N'Tuan23', N'passenger')
INSERT [dbo].[Account] ([Account], [Password], [Kind]) VALUES (N'tuanhung', N'tuanhung', N'gara')
GO
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'48A25896', 45, N'Hoàng Long')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'50F69853', 45, N'Hoàng Long')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'51F12345', 29, N'Hoàng Long')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'51F26589', 45, N'Hoàng Long')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'51H12213', 45, N'Thư Kỳ')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'51H33221', 45, N'Thư Kỳ')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'51H69857', 45, N'Hùng Cường')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'52F52463', 45, N'Hùng Cường')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'52G63528', 45, N'Thành Bưởi')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'52H66335', 45, N'Phương Trang')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'52L03256', 45, N'Phương Trang')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'53G12543', 45, N'Hùng Cường')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'53K22553', 45, N'Phương Trang')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'59G31653', 45, N'Huệ Nghĩa')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'61A25896', 45, N'Huệ Nghĩa')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'63D87452', 45, N'Phương Trang')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'63H58231', 45, N'Huệ Nghĩa')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'64A25874', 45, N'Thành Bưởi')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'65K52874', 45, N'Tuấn Hưng')
INSERT [dbo].[Car] ([Car_License_Plates], [Car_Seat_Amount], [Gar_Name]) VALUES (N'95B96325', 45, N'Tuấn Hưng')
GO
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'123456789', N'123456789999')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245371111', N'111111111111')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245372222', N'222222222222')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245373333', N'245373333333')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245374444', N'245374444444')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245375555', N'245375555555')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245376263', N'123456789123')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245381111', N'245381111111')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245382222', N'245382222222')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245383333', N'245383333333')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245384444', N'245384444444')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245385555', N'245385555555')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245386666', N'245386666666')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245387777', N'245387777777')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245388888', N'245388888888')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'245389999', N'245389999999')
INSERT [dbo].[Driver] ([Driver_CMND], [Driver_License]) VALUES (N'621726632', N'621726632222')
GO
INSERT [dbo].[Gara] ([Gara_Name], [Gara_Picture], [Gara_Review], [Bus_Res_number], [Active], [Account]) VALUES (N'Hoàng Long', N'hoanglong.png', N'giá cả ổn định, chất lượng cao', N'2243421', 1, N'hoanglong')
INSERT [dbo].[Gara] ([Gara_Name], [Gara_Picture], [Gara_Review], [Bus_Res_number], [Active], [Account]) VALUES (N'Huệ Nghĩa', N'huenghia.jpg', N'chất lượng cao', N'785494', 1, N'huenghia')
INSERT [dbo].[Gara] ([Gara_Name], [Gara_Picture], [Gara_Review], [Bus_Res_number], [Active], [Account]) VALUES (N'Hùng Cường', N'hungcuong.jpg', N'chất lượng tốt', N'2356567', 1, N'hungcuong')
INSERT [dbo].[Gara] ([Gara_Name], [Gara_Picture], [Gara_Review], [Bus_Res_number], [Active], [Account]) VALUES (N'Phương Trang', N'phuongtrang.jpg', N'nhà xe lớn, chất lượng cao', N'176438445', 1, N'phuongtrang')
INSERT [dbo].[Gara] ([Gara_Name], [Gara_Picture], [Gara_Review], [Bus_Res_number], [Active], [Account]) VALUES (N'Thành Bưởi', N'thanhbuoi.jpg', N'chất lượng cao', N'37437583', 1, N'thanhbuoi')
INSERT [dbo].[Gara] ([Gara_Name], [Gara_Picture], [Gara_Review], [Bus_Res_number], [Active], [Account]) VALUES (N'Thư Kỳ', N'thuky.jpg', N'nhà xe VIP', N'98374834', 1, N'thuky')
INSERT [dbo].[Gara] ([Gara_Name], [Gara_Picture], [Gara_Review], [Bus_Res_number], [Active], [Account]) VALUES (N'Tuấn Hưng', N'tuanhung.jpg', N'uy tín', N'348349834', 0, NULL)
GO
INSERT [dbo].[Manage_Passenger_Care] ([Staff_CMND], [Passenger_SDT], [Passenger_Care_Time]) VALUES (N'245373333', N'0123456789', CAST(N'2021-06-13T16:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Passenger_Care] ([Staff_CMND], [Passenger_SDT], [Passenger_Care_Time]) VALUES (N'245374444', N'0111111111', CAST(N'2021-06-19T08:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Passenger_Care] ([Staff_CMND], [Passenger_SDT], [Passenger_Care_Time]) VALUES (N'245376263', N'0987654321', CAST(N'2021-06-13T10:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Passenger_Care] ([Staff_CMND], [Passenger_SDT], [Passenger_Care_Time]) VALUES (N'245376666', N'0222222222', CAST(N'2021-06-20T05:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Passenger_Care] ([Staff_CMND], [Passenger_SDT], [Passenger_Care_Time]) VALUES (N'245377777', N'0333333333', CAST(N'2021-06-22T06:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Passenger_Care] ([Staff_CMND], [Passenger_SDT], [Passenger_Care_Time]) VALUES (N'245378888', N'0444444444', CAST(N'2021-06-23T10:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Passenger_Care] ([Staff_CMND], [Passenger_SDT], [Passenger_Care_Time]) VALUES (N'245379999', N'0555555555', CAST(N'2021-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245371111', N'0003', N'51F12345', CAST(N'2021-06-12' AS Date), CAST(N'18:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245371111', N'0004', N'51F12345', CAST(N'2021-05-12' AS Date), CAST(N'05:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245371111', N'0005', N'51F12345', CAST(N'2021-04-30' AS Date), CAST(N'04:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245376263', N'0001', N'48A25896', CAST(N'2021-06-10' AS Date), CAST(N'07:30:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245376263', N'0002', N'50F69853', CAST(N'2021-06-12' AS Date), CAST(N'12:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245381111', N'0006', N'51H69857', CAST(N'2021-06-19' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245382222', N'0007', N'95B96325', CAST(N'2021-06-20' AS Date), CAST(N'12:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245383333', N'0008', N'65K52874', CAST(N'2021-06-19' AS Date), CAST(N'12:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245384444', N'0009', N'64A25874', CAST(N'2021-06-20' AS Date), CAST(N'18:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245385555', N'0010', N'63H58231', CAST(N'2021-06-21' AS Date), CAST(N'18:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245386666', N'0011', N'63D87452', CAST(N'2021-06-22' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245387777', N'0012', N'61A25896', CAST(N'2021-06-20' AS Date), CAST(N'16:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245388888', N'0013', N'59G31653', CAST(N'2021-06-23' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[ManageDrive] ([Drive_CMND], [Trip_No], [Car_License_Plates], [Drive_Date], [Drive_Hour]) VALUES (N'245389999', N'0014', N'53K22553', CAST(N'2021-06-24' AS Date), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0111111111', N'0003', 1, 1, 1, 1, 1, NULL, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0123456789', N'0001', 1, 1, 1, 1, 1, NULL, CAST(N'2021-06-12T00:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0222222222', N'0004', 2, 2, 2, 2, 2, NULL, CAST(N'2021-06-21T06:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0333333333', N'0005', 1, 1, 1, 1, 1, NULL, CAST(N'2021-06-22T00:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0444444444', N'0006', 1, 1, 1, 1, 1, NULL, CAST(N'2021-06-22T00:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0555555555', N'0007', 2, 2, 2, 2, 2, NULL, CAST(N'2021-06-25T08:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0666666666', N'0008', 1, 1, 1, 1, 1, NULL, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0777777777', N'0009', 2, 2, 2, 2, 2, NULL, CAST(N'2021-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0888888888', N'0010', 1, 1, 1, 1, 1, NULL, CAST(N'2021-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0987654321', N'0002', 2, 2, 2, 2, 2, NULL, CAST(N'2021-06-13T00:00:00.000' AS DateTime))
INSERT [dbo].[ManageReview] ([Passenger_SDT], [Trip_No], [Staff_Attitude], [Service_Quality], [Safe], [Information], [Convenient], [Comment], [Review_Time]) VALUES (N'0999999999', N'0011', 2, 2, 2, 2, 2, NULL, CAST(N'2021-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0111111111', N'Nguyễn', N'Tú', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0111122222', N'Nguyễn', N'Ánh', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0111133333', N'Nguyễn', N'Minh', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0111144444', N'Nguyễn', N'Hợi', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0111155555', N'Nguyễn', N'Mị', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0111166666', N'Đinh', N'Xuân', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0111177777', N'Đinh', N'Thời', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0111188888', N'Nam', N'Pro', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0111199999', N'Nguyễn', N'Mèo', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0123456789', N'Tuấn23', N'Pro23', N'23123123', N'Tuan23')
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0222222222', N'Phạm', N'Trưởng', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0333333333', N'Phạm', N'Trường', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0444444444', N'Phạm ', N'Tuấn', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0555555555', N'Phạm', N'Tú', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0666666666', N'Trần', N'Hảo', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0777777777', N'Trần', N'Tí', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0888888888', N'Trần ', N'Anh', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0933545121', N'Sang', N'Huỳnh ', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0987654321', N'Phạm', N'Anh', NULL, NULL)
INSERT [dbo].[Passenger] ([Passenger_SDT], [Passenger_First_Name], [Passenger_Last_Name], [Passenger_Email], [Account]) VALUES (N'0999999999', N'Trần', N'Tiến', NULL, NULL)
GO
INSERT [dbo].[Passenger_Care] ([Staff_CMND]) VALUES (N'245373333')
INSERT [dbo].[Passenger_Care] ([Staff_CMND]) VALUES (N'245374444')
INSERT [dbo].[Passenger_Care] ([Staff_CMND]) VALUES (N'245376263')
INSERT [dbo].[Passenger_Care] ([Staff_CMND]) VALUES (N'245376666')
INSERT [dbo].[Passenger_Care] ([Staff_CMND]) VALUES (N'245377777')
INSERT [dbo].[Passenger_Care] ([Staff_CMND]) VALUES (N'245378888')
INSERT [dbo].[Passenger_Care] ([Staff_CMND]) VALUES (N'245379999')
INSERT [dbo].[Passenger_Care] ([Staff_CMND]) VALUES (N'987654321')
GO
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HC001                                             ', N'Hùng Cường', N'050006    ', 2, CAST(N'12:00:00' AS Time), 200000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HC002                                             ', N'Hùng Cường ', N'050001    ', 5, CAST(N'06:00:00' AS Time), 1000000.0000, 0)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HL001                                             ', N'Hoàng Long', N'050001    ', 1, CAST(N'08:00:00' AS Time), 700000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HL002                                             ', N'Hoàng Long', N'050001    ', 3, CAST(N'08:00:00' AS Time), 700000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HL003                                             ', N'Hoàng Long', N'050001    ', 5, CAST(N'08:00:00' AS Time), 700000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HL004                                             ', N'Hoàng Long', N'043001    ', 2, CAST(N'10:00:00' AS Time), 700000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HL005                                             ', N'Hoàng Long', N'043001    ', 4, CAST(N'10:00:00' AS Time), 700000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HL006                                             ', N'Hoàng Long', N'043001    ', 6, CAST(N'10:00:00' AS Time), 700000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HN001                                             ', N'Huệ Nghĩa', N'050005    ', 2, CAST(N'08:00:00' AS Time), 150000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HN002                                             ', N'Huệ Nghĩa', N'050005    ', 3, CAST(N'08:00:00' AS Time), 150000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HN003                                             ', N'Huệ Nghĩa', N'050005    ', 4, CAST(N'08:00:00' AS Time), 150000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'HN004                                             ', N'Huệ Nghĩa', N'050005    ', 6, CAST(N'08:00:00' AS Time), 150000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'PT001                                             ', N'Phương Trang', N'050002    ', 1, CAST(N'12:00:00' AS Time), 1000000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'PT002                                             ', N'Phương Trang', N'050002    ', 4, CAST(N'12:00:00' AS Time), 1000000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'PT003                                             ', N'Phương Trang', N'029001    ', 1, CAST(N'08:00:00' AS Time), 1000000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'PT004                                             ', N'Phương Trang', N'029001    ', 4, CAST(N'08:00:00' AS Time), 1000000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'PT005                                             ', N'Phương Trang', N'029001    ', 7, CAST(N'20:00:00' AS Time), 1200000.0000, 0)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'TB001                                             ', N'Thành Bưởi', N'029003    ', 1, CAST(N'09:00:00' AS Time), 500000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'TB002                                             ', N'Thành Bưởi', N'029004    ', 2, CAST(N'10:00:00' AS Time), 800000.0000, 0)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'TH001                                             ', N'Tuấn Hưng', N'029005    ', 2, CAST(N'05:00:00' AS Time), 300000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'TH002                                             ', N'Tuấn Hưng', N'029006    ', 3, CAST(N'06:00:00' AS Time), 450000.0000, 0)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'TK001                                             ', N'Thư Kỳ', N'043003    ', 3, CAST(N'20:00:00' AS Time), 600000.0000, 1)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'TK002                                             ', N'Thư Kỳ', N'043004    ', 5, CAST(N'16:00:00' AS Time), 500000.0000, 0)
INSERT [dbo].[ScheduleOfGara] ([TripOfGara_no], [Gara_Name], [Schedule_no], [DayInWeek], [DepartTime], [TicketPrice], [AdminChecked]) VALUES (N'TK0021                                            ', N'Phương Trang', N'210610005 ', 3, CAST(N'23:00:00' AS Time), 100000.0000, 0)
GO
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'123456789', N'Phan', N'Tùng', N'0999999999', N'Nam', NULL, 0)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245371111', N'Nguyễn Tá', N'Huy', N'0121300468', N'Nam', N'huynguyen', 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245372222', N'Huỳnh Phước', N'Sang', N'0933545121', N'Nam', N'sanghuynh', 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245373333', N'Nguyễn Hải', N'Nam', N'0772914013', N'Nam', N'namnguyen', 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245374444', N'Nguyễn Văn', N'Chung', N'0369811800', N'Nam', N'chungnguyen', 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245375555', N'Tuấn', N'Tú', N'0359566332', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245376263', N'Phạm Minh Tuấn', N'Anh', N'0368573782', N'Nam', N'anhpham', 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245376666', N'Ph?m', N'Trinh', N'0112233445', N'nu', N'boss', 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245377777', N'Nguyễn', N'Nhi', N'0998877665', N'Nữ', N'gara', 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245378888', N'Tr?n', N'Tuy?t', N'0111222333', N'nu', N'staff', 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245379999', N'Nguyễn', N'Tiên', N'0999888777', N'Nữ', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245381111', N'Phạm', N'Tuấn', N'0666555444', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245382222', N'Trần ', N'Minh', N'0111444777', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245383333', N'Trần', N'Nam', N'0222555888', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245384444', N'Phạm ', N'Hải', N'0333666999', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245385555', N'Phạm ', N'Long', N'0777444111', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245386666', N'Phạm', N'Hùng', N'0888555222', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245387777', N'Trần', N'Phi', N'0999666333', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245388888', N'Phan', N'Thành', N'0777888999', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'245389999', N'Phan', N'Anh', N'0444555666', N'Nam', NULL, 1)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'621726632', N'Phan', N'Tài', N'0562345654', N'Nam', NULL, 0)
INSERT [dbo].[Staff] ([Staff_CMND], [Staff_First_Name], [Staff_Last_Name], [Staff_SDT], [Staff_Gender], [Staff_Account], [Active]) VALUES (N'987654321', N'Châu', N'Duyên', N'0123456789', N'Nữ', NULL, 0)
GO
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'011       ', N'Cao Bằng                      ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'012       ', N'Lạng Sơn                      ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'014       ', N'Quảng Ninh                    ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'015       ', N'TP Hải Phòng                  ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'017       ', N'Thái Bình                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'018       ', N'Nam Định                      ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'019       ', N'Phú Thọ                       ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'029       ', N'Hà Nội                        ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'034       ', N'Hải Dương                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'035       ', N'Ninh Bình                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'036       ', N'Thanh Hóa                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'037       ', N'Nghệ An                       ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'038       ', N'Hà Tĩnh                       ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'043       ', N'Đà Nẵng                       ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'047       ', N'Đăk Lăk                       ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'048       ', N'Đăk Nông                      ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'049       ', N'Lâm Đồng                      ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'050       ', N'Hồ Chí Minh                   ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'065       ', N'Cần Thơ                       ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'066       ', N'Đồng Tháp                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'067       ', N'An Giang                      ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'068       ', N'Kien Giang                    ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'076       ', N'Quảng Ngãi                    ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'081       ', N'Gia Lai                       ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'082       ', N'Kon Tum                       ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'083       ', N'Sóc Trăng                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'084       ', N'Trà Vinh                      ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'085       ', N'Ninh Thuận                    ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'086       ', N'Bình Thuận                    ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'088       ', N'Vĩnh Phúc                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'089       ', N'Hưng Yên                      ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'090       ', N'Hà Nam                        ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'092       ', N'Quảng Nam                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'093       ', N'Bình Phước                    ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'094       ', N'Bạc Liêu                      ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'095       ', N'Hậu Giang                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'097       ', N'Bắc Cạn                       ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'098       ', N'Bắc Giang                     ')
INSERT [dbo].[Station] ([station_No], [station_Name]) VALUES (N'099       ', N'Bắc Ninh                      ')
GO
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0001', N'B3', N'Tầng trên', 1, N'ghế đầu', CAST(N'1900-01-01T07:30:00' AS SmallDateTime), N'245376263', N'0987654321', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0002', N'A1', N'Tầng dưới', 1, N'trên', CAST(N'1900-01-01T10:00:00' AS SmallDateTime), N'245378888', N'0111111111', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0003', N'A2', N'Tầng dưới', 1, NULL, CAST(N'2021-06-19T00:00:00' AS SmallDateTime), N'245373333', N'0222222222', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0004', N'B1', N'Tầng trên', 1, NULL, CAST(N'2021-06-15T00:00:00' AS SmallDateTime), N'245373333', N'0333333333', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0005', N'A3', N'Tầng dưới', 1, NULL, CAST(N'2021-06-15T00:00:00' AS SmallDateTime), N'245374444', N'0444444444', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0006', N'B2', N'Tầng trên', 1, NULL, CAST(N'2021-06-15T00:00:00' AS SmallDateTime), N'245375555', N'0111111111', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0007', N'A4', N'Tầng dưới', 1, NULL, CAST(N'2021-06-16T00:00:00' AS SmallDateTime), N'245376666', N'0111111111', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0008', N'A5', N'Tầng dưới', 1, N'Muốn ngồi dưới', CAST(N'2021-06-16T08:00:00' AS SmallDateTime), N'245373333', N'0555555555', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0009', N'B4', N'Tầng trên', 1, NULL, CAST(N'2021-06-16T00:00:00' AS SmallDateTime), N'245377777', N'0666666666', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0010', N'B5', N'Tầng trên', 1, NULL, CAST(N'2021-06-15T00:00:00' AS SmallDateTime), N'245379999', N'0666666666', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0011', N'A6', N'Tầng dưới', 1, NULL, CAST(N'2021-06-16T02:00:00' AS SmallDateTime), N'245374444', N'0777777777', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0012', N'B6', N'Tầng trên', 1, NULL, CAST(N'2021-06-16T00:00:00' AS SmallDateTime), N'245378888', N'0888888888', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0013', N'A7', N'Tầng dưới', 1, NULL, CAST(N'2021-06-16T04:00:00' AS SmallDateTime), N'245379999', N'0999999999', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0014', N'B7', N'Tầng trên', 1, NULL, CAST(N'2021-06-16T05:00:00' AS SmallDateTime), N'245371111', N'0999999999', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0015', N'A8', N'Tầng dưới', 1, NULL, CAST(N'2021-06-16T06:00:00' AS SmallDateTime), N'245371111', N'0111122222', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0016', N'B8', N'Tầng trên', 1, NULL, CAST(N'2021-06-16T07:00:00' AS SmallDateTime), N'245371111', N'0111133333', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0017', N'A9', N'Tầng dưới', 1, NULL, CAST(N'2021-06-16T08:00:00' AS SmallDateTime), N'245371111', N'0111144444', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0018', N'B9', N'Tầng trên', 1, NULL, CAST(N'2021-06-16T09:00:00' AS SmallDateTime), N'245371111', N'0111155555', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0019', N'A10', N'Tầng dưới', 1, NULL, CAST(N'2021-06-16T10:00:00' AS SmallDateTime), N'245371111', N'0111166666', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0020', N'B10', N'Tầng trên', 1, NULL, CAST(N'2021-06-16T11:00:00' AS SmallDateTime), N'245371111', N'0111177777', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0021', N'A11', N'Tầng dưới', 1, NULL, CAST(N'2021-06-16T12:00:00' AS SmallDateTime), N'245371111', N'0111188888', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0022', N'B11', N'Tầng trên', 1, NULL, CAST(N'2021-06-16T13:00:00' AS SmallDateTime), N'245371111', N'0111199999', N'0001')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'0023', N'A1', N'Tầng dưới', 1, NULL, CAST(N'2021-06-17T00:00:00' AS SmallDateTime), N'245372222', N'0987654321', N'0002')
INSERT [dbo].[Ticket] ([Ticket_No], [Seat_Position], [Seat_Kind], [Is_Paid], [Passenger_Note], [Book_Time], [Staff_CMND], [Passenger_SDT], [Trip_No]) VALUES (N'24', N'5', N'Loai 1', 1, N'', CAST(N'2021-06-28T12:00:00' AS SmallDateTime), N'245371111', N'0123456789', N'0002')
GO
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'029001    ', N'029       ', N'050       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'029002    ', N'029       ', N'043       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'029003    ', N'029       ', N'035       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'029004    ', N'029       ', N'098       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'029005    ', N'029       ', N'097       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'029006    ', N'029       ', N'011       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'029007    ', N'029       ', N'018       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'043001    ', N'043       ', N'050       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'043002    ', N'043       ', N'029       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'043003    ', N'043       ', N'036       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'043004    ', N'043       ', N'092       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'043005    ', N'043       ', N'034       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'043006    ', N'043       ', N'089       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'050001    ', N'050       ', N'043       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'050002    ', N'050       ', N'029       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'050003    ', N'050       ', N'049       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'050004    ', N'050       ', N'081       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'050005    ', N'050       ', N'068       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'050006    ', N'050       ', N'084       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'050007    ', N'050       ', N'047       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'210610001 ', N'050       ', N'048       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'210610002 ', N'050       ', N'066       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'210610003 ', N'029       ', N'043       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'210610004 ', N'067       ', N'068       ')
INSERT [dbo].[TotalScheduels] ([SChedule_no], [BeginStation], [EndStation]) VALUES (N'210610005 ', N'012       ', N'015       ')
GO
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0001', N'HL001                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0002', N'PT001                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0003', N'TB001                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0004', N'PT003                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0005', N'HL001                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0006', N'HL002                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0007', N'HL003                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0008', N'HL004                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0009', N'HL005                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0010', N'HL006                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0011', N'PT002                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0012', N'PT004                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0013', N'PT005                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0014', N'HN001                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0015', N'HN002                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0016', N'HN003                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0017', N'HN004                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0018', N'HC001                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0019', N'HC002                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0020', N'TB001                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0021', N'TB002                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0022', N'TK001                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0023', N'TK002                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0024', N'TH001                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'0025', N'TH002                                             ')
INSERT [dbo].[Trip] ([Trip_No], [TripOfGara_no]) VALUES (N'26', N'TK0021                                            ')
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Gara1] FOREIGN KEY([Gar_Name])
REFERENCES [dbo].[Gara] ([Gara_Name])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Gara1]
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Staff] FOREIGN KEY([Driver_CMND])
REFERENCES [dbo].[Staff] ([Staff_CMND])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Staff]
GO
ALTER TABLE [dbo].[Gara]  WITH CHECK ADD  CONSTRAINT [FK_Gara_Account] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Account])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Gara] CHECK CONSTRAINT [FK_Gara_Account]
GO
ALTER TABLE [dbo].[Manage_Passenger_Care]  WITH CHECK ADD  CONSTRAINT [FK_Manage_Passenger_Care_Passenger] FOREIGN KEY([Passenger_SDT])
REFERENCES [dbo].[Passenger] ([Passenger_SDT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Manage_Passenger_Care] CHECK CONSTRAINT [FK_Manage_Passenger_Care_Passenger]
GO
ALTER TABLE [dbo].[Manage_Passenger_Care]  WITH CHECK ADD  CONSTRAINT [FK_Manage_Passenger_Care_Passenger_Care] FOREIGN KEY([Staff_CMND])
REFERENCES [dbo].[Passenger_Care] ([Staff_CMND])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Manage_Passenger_Care] CHECK CONSTRAINT [FK_Manage_Passenger_Care_Passenger_Care]
GO
ALTER TABLE [dbo].[ManageDrive]  WITH CHECK ADD  CONSTRAINT [FK_ManageDrive_Car] FOREIGN KEY([Car_License_Plates])
REFERENCES [dbo].[Car] ([Car_License_Plates])
GO
ALTER TABLE [dbo].[ManageDrive] CHECK CONSTRAINT [FK_ManageDrive_Car]
GO
ALTER TABLE [dbo].[ManageDrive]  WITH CHECK ADD  CONSTRAINT [FK_ManageDrive_Driver] FOREIGN KEY([Drive_CMND])
REFERENCES [dbo].[Driver] ([Driver_CMND])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ManageDrive] CHECK CONSTRAINT [FK_ManageDrive_Driver]
GO
ALTER TABLE [dbo].[ManageDrive]  WITH CHECK ADD  CONSTRAINT [FK_ManageDrive_Trip] FOREIGN KEY([Trip_No])
REFERENCES [dbo].[Trip] ([Trip_No])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ManageDrive] CHECK CONSTRAINT [FK_ManageDrive_Trip]
GO
ALTER TABLE [dbo].[ManageReview]  WITH CHECK ADD  CONSTRAINT [FK_ManageReview_Passenger] FOREIGN KEY([Passenger_SDT])
REFERENCES [dbo].[Passenger] ([Passenger_SDT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ManageReview] CHECK CONSTRAINT [FK_ManageReview_Passenger]
GO
ALTER TABLE [dbo].[ManageReview]  WITH CHECK ADD  CONSTRAINT [FK_ManageReview_Trip] FOREIGN KEY([Trip_No])
REFERENCES [dbo].[Trip] ([Trip_No])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ManageReview] CHECK CONSTRAINT [FK_ManageReview_Trip]
GO
ALTER TABLE [dbo].[Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_Account] FOREIGN KEY([Account])
REFERENCES [dbo].[Account] ([Account])
GO
ALTER TABLE [dbo].[Passenger] CHECK CONSTRAINT [FK_Passenger_Account]
GO
ALTER TABLE [dbo].[Passenger_Care]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_Care_Staff] FOREIGN KEY([Staff_CMND])
REFERENCES [dbo].[Staff] ([Staff_CMND])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Passenger_Care] CHECK CONSTRAINT [FK_Passenger_Care_Staff]
GO
ALTER TABLE [dbo].[ScheduleOfGara]  WITH CHECK ADD  CONSTRAINT [FK_ScheduelOfGara_Gara] FOREIGN KEY([Gara_Name])
REFERENCES [dbo].[Gara] ([Gara_Name])
GO
ALTER TABLE [dbo].[ScheduleOfGara] CHECK CONSTRAINT [FK_ScheduelOfGara_Gara]
GO
ALTER TABLE [dbo].[ScheduleOfGara]  WITH CHECK ADD  CONSTRAINT [FK_ScheduelOfGara_TotalScheduels1] FOREIGN KEY([Schedule_no])
REFERENCES [dbo].[TotalScheduels] ([SChedule_no])
GO
ALTER TABLE [dbo].[ScheduleOfGara] CHECK CONSTRAINT [FK_ScheduelOfGara_TotalScheduels1]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Account] FOREIGN KEY([Staff_Account])
REFERENCES [dbo].[Account] ([Account])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Account]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Passenger] FOREIGN KEY([Passenger_SDT])
REFERENCES [dbo].[Passenger] ([Passenger_SDT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Passenger]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Staff] FOREIGN KEY([Staff_CMND])
REFERENCES [dbo].[Staff] ([Staff_CMND])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Staff]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Trip] FOREIGN KEY([Trip_No])
REFERENCES [dbo].[Trip] ([Trip_No])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Trip]
GO
ALTER TABLE [dbo].[TotalScheduels]  WITH CHECK ADD  CONSTRAINT [FK_TotalScheduels_Station] FOREIGN KEY([BeginStation])
REFERENCES [dbo].[Station] ([station_No])
GO
ALTER TABLE [dbo].[TotalScheduels] CHECK CONSTRAINT [FK_TotalScheduels_Station]
GO
ALTER TABLE [dbo].[TotalScheduels]  WITH CHECK ADD  CONSTRAINT [FK_TotalScheduels_Station1] FOREIGN KEY([EndStation])
REFERENCES [dbo].[Station] ([station_No])
GO
ALTER TABLE [dbo].[TotalScheduels] CHECK CONSTRAINT [FK_TotalScheduels_Station1]
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_ScheduelOfGara] FOREIGN KEY([TripOfGara_no])
REFERENCES [dbo].[ScheduleOfGara] ([TripOfGara_no])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_ScheduelOfGara]
GO
ALTER TABLE [dbo].[ManageReview]  WITH CHECK ADD  CONSTRAINT [CK_ManageReview] CHECK  (([Staff_Attitude]>=(1) AND [Staff_Attitude]<=(3)))
GO
ALTER TABLE [dbo].[ManageReview] CHECK CONSTRAINT [CK_ManageReview]
GO
/****** Object:  StoredProcedure [dbo].[SP_LOAD_TABLE]    Script Date: 6/15/2021 6:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_LOAD_TABLE]
AS
BEGIN
SELECT SOG.Gara_Name, 
BEGN=(SELECT S.station_Name FROM  Station S
WHERE TS.BeginStation = S.station_No), 
ED=(SELECT S.station_Name FROM Station S
WHERE TS.EndStation = S.station_No), 
SOG.DayInWeek, SOG.DepartTime, 
SOG.TicketPrice 
FROM ScheduleOfGara SOG, TotalScheduels TS
WHERE SOG.Schedule_no = TS.SChedule_no
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageReview', @level2type=N'CONSTRAINT',@level2name=N'CK_ManageReview'
GO
USE [master]
GO
ALTER DATABASE [QLyDatXe] SET  READ_WRITE 
GO
