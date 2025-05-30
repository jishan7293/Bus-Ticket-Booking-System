USE [BusBooking]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 14-May-25 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 14-May-25 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[BusId] [int] NOT NULL,
	[PassengerName] [nvarchar](100) NOT NULL,
	[BookingDate] [datetime] NOT NULL,
	[SeatRow] [int] NOT NULL,
	[SeatColumn] [int] NOT NULL,
	[TotalPrice] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusDetails]    Script Date: 14-May-25 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusDetails](
	[BusId] [int] IDENTITY(1,1) NOT NULL,
	[BusNo] [nvarchar](50) NOT NULL,
	[BusType] [nvarchar](50) NOT NULL,
	[SeatRows] [int] NOT NULL,
	[SeatColumns] [int] NOT NULL,
	[Origin] [nvarchar](100) NOT NULL,
	[Destination] [nvarchar](100) NOT NULL,
	[BusName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buses]    Script Date: 14-May-25 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buses](
	[BusId] [int] IDENTITY(1,1) NOT NULL,
	[BusNo] [nvarchar](50) NOT NULL,
	[BusType] [nvarchar](50) NOT NULL,
	[Origin] [nvarchar](100) NOT NULL,
	[Destination] [nvarchar](100) NOT NULL,
	[BusName] [nvarchar](100) NOT NULL,
	[Amount] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[BusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusSearch]    Script Date: 14-May-25 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusSearch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromLocation] [varchar](100) NOT NULL,
	[ToLocation] [varchar](100) NOT NULL,
	[TravelDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactMessages]    Script Date: 14-May-25 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactMessages](
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Message] [nvarchar](max) NULL,
	[SubmittedAt] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[msgbox]    Script Date: 14-May-25 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[msgbox](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](500) NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 14-May-25 10:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Mobile] [varchar](12) NULL,
	[Password] [varchar](10) NULL,
	[Email] [varchar](40) NULL,
	[Pincode] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([id], [Username], [Password]) VALUES (1, N'jishan', N'jishan123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([BookingId], [BusId], [PassengerName], [BookingDate], [SeatRow], [SeatColumn], [TotalPrice]) VALUES (22, 129, N'Jishan Khan', CAST(N'2025-05-22T00:00:00.000' AS DateTime), 17, 1, CAST(260.00 AS Decimal(10, 2)))
INSERT [dbo].[Bookings] ([BookingId], [BusId], [PassengerName], [BookingDate], [SeatRow], [SeatColumn], [TotalPrice]) VALUES (23, 199, N'Anas khan', CAST(N'2025-05-24T00:00:00.000' AS DateTime), 1, 4, CAST(450.00 AS Decimal(10, 2)))
INSERT [dbo].[Bookings] ([BookingId], [BusId], [PassengerName], [BookingDate], [SeatRow], [SeatColumn], [TotalPrice]) VALUES (24, 125, N'Arsad', CAST(N'2025-05-16T00:00:00.000' AS DateTime), 17, 5, CAST(280.00 AS Decimal(10, 2)))
INSERT [dbo].[Bookings] ([BookingId], [BusId], [PassengerName], [BookingDate], [SeatRow], [SeatColumn], [TotalPrice]) VALUES (25, 202, N'Anurag', CAST(N'1900-01-01T00:00:00.000' AS DateTime), 8, 3, CAST(450.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[BusDetails] ON 

INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (1, N'LU001', N'AC', 10, 4, N'Lucknow, Uttar Pradesh', N'Lucknow, Uttar Pradesh', N'Lucknow Express')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (2, N'LU002', N'Non-AC', 12, 4, N'Alambagh, Lucknow', N'Alambagh, Lucknow', N'Alambagh Cruiser')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (3, N'LU003', N'AC', 10, 4, N'Gomti Nagar, Lucknow', N'Gomti Nagar, Lucknow', N'Gomti Nagar Flyer')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (4, N'LU004', N'Non-AC', 11, 5, N'Sarojini Nagar, Lucknow', N'Sarojini Nagar, Lucknow', N'Sarojini Nagar Shuttle')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (5, N'KN001', N'AC', 12, 5, N'Kanpur, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Kanpur Superfast')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (6, N'AL001', N'Non-AC', 10, 4, N'Allahabad, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Allahabad Traveler')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (7, N'SA001', N'AC', 11, 4, N'Satna, Madhya Pradesh', N'Satna, Madhya Pradesh', N'Satna Link')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (8, N'BA001', N'Non-AC', 9, 4, N'Banda, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Banda Express')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (9, N'CH001', N'AC', 10, 4, N'Chitrakoot, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Chitrakoot Flyer')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (10, N'AT001', N'Non-AC', 8, 4, N'Atarra, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Atarra Runner')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (11, N'BB001', N'AC', 9, 5, N'Baberu, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Baberu Express')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (12, N'NA001', N'Non-AC', 10, 4, N'Naraini, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Naraini Cruiser')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (13, N'FA001', N'AC', 11, 4, N'Fatehpur, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Fatehpur Shuttle')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (14, N'JA001', N'Non-AC', 10, 4, N'Jahanabad, Uttar Pradesh', N'Jahanabad, Uttar Pradesh', N'Jahanabad Flyer')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (15, N'DE001', N'AC', 12, 5, N'Deldi, Uttar Pradesh', N'Deldi, Uttar Pradesh', N'Delhi Connect')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (16, N'NO001', N'Non-AC', 10, 4, N'Noida, Uttar Pradesh', N'Noida, Uttar Pradesh', N'Noida Link')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (17, N'ND001', N'AC', 9, 4, N'New Delhi, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Delhi Express')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (18, N'GU001', N'Non-AC', 10, 4, N'Gungao, Uttar Pradesh', N'Gungao, Uttar Pradesh', N'Gungao Cruiser')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (19, N'KA001', N'AC', 11, 5, N'Karvi, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Karvi Flyer')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (20, N'RA001', N'Non-AC', 9, 4, N'Rajapur, Uttar Pradesh', N'Rajapur, Uttar Pradesh', N'Rajapur Express')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (21, N'MU001', N'AC', 12, 4, N'Mumbai, Maharashtra', N'Mumbai, Maharashtra', N'Mumbai Superfast')
INSERT [dbo].[BusDetails] ([BusId], [BusNo], [BusType], [SeatRows], [SeatColumns], [Origin], [Destination], [BusName]) VALUES (22, N'AG001', N'Non-AC', 10, 4, N'Agara, Uttar Pradesh', N'Agara, Uttar Pradesh', N'Agara Shuttle')
SET IDENTITY_INSERT [dbo].[BusDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Buses] ON 

INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (122, N'LU200', N'AC', N'Lucknow, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Lucknow-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (123, N'LU201', N'Non-AC', N'Lucknow, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Lucknow-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (124, N'LU202', N'AC', N'Lucknow, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Lucknow-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (125, N'LU203', N'Non-AC', N'Lucknow, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Lucknow-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (126, N'LU204', N'AC', N'Lucknow, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Lucknow-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (127, N'LU205', N'Non-AC', N'Lucknow, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Lucknow-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (128, N'LU206', N'AC', N'Lucknow, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Lucknow-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (129, N'LU207', N'Non-AC', N'Lucknow, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Lucknow-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (130, N'LU208', N'AC', N'Lucknow, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Lucknow-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (131, N'LU209', N'AC', N'Lucknow, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Lucknow-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (132, N'LU210', N'AC', N'Lucknow, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Lucknow-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (133, N'LU211', N'AC', N'Lucknow, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Lucknow-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (134, N'LU212', N'Non-AC', N'Lucknow, Uttar Pradesh', N'Delhi NCR', N'Lucknow-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (135, N'LU200', N'AC', N'Kanpur, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (136, N'LU201', N'Non-AC', N'Kanpur, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Kanpur-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (137, N'LU202', N'AC', N'Kanpur, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Kanpur-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (138, N'LU203', N'Non-AC', N'Kanpur, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Kanpur-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (139, N'LU204', N'AC', N'Kanpur, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Kanpur-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (140, N'LU205', N'Non-AC', N'Kanpur, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Kanpur-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (141, N'LU206', N'AC', N'Kanpur, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Kanpur-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (142, N'LU207', N'Non-AC', N'Kanpur, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Kanpur-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (143, N'LU208', N'AC', N'Kanpur, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Kanpur-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (144, N'LU209', N'AC', N'Kanpur, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Kanpur-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (145, N'LU210', N'AC', N'Kanpur, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Kanpur-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (146, N'LU211', N'AC', N'Kanpur, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Kanpur-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (147, N'LU212', N'Non-AC', N'Kanpur, Uttar Pradesh', N'Delhi NCR', N'Kanpur-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (148, N'LU200', N'AC', N'Allahabad, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Allahabad-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (149, N'LU201', N'Non-AC', N'Allahabad, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Allahabad-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (150, N'LU202', N'AC', N'Allahabad, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Allahabad-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (151, N'LU203', N'Non-AC', N'Allahabad, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Allahabad-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (152, N'LU204', N'AC', N'Allahabad, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Allahabad-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (153, N'LU205', N'Non-AC', N'Allahabad, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Allahabad-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (154, N'LU206', N'AC', N'Allahabad, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Allahabad-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (155, N'LU207', N'Non-AC', N'Allahabad, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Allahabad-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (156, N'LU208', N'AC', N'Allahabad, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Allahabad-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (157, N'LU209', N'AC', N'Allahabad, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Allahabad-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (158, N'LU210', N'AC', N'Allahabad, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Allahabad-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (159, N'LU211', N'AC', N'Allahabad, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Allahabad-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (160, N'LU212', N'Non-AC', N'Allahabad, Uttar Pradesh', N'Delhi NCR', N'Allahabad-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (161, N'LU200', N'AC', N'Satna, Madhya Pradesh', N'Kanpur, Uttar Pradesh', N'Satna-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (162, N'LU201', N'Non-AC', N'Satna, Madhya Pradesh', N'Allahabad, Uttar Pradesh', N'Satna-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (163, N'LU202', N'AC', N'Satna, Madhya Pradesh', N'Satna, Madhya Pradesh', N'Satna-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (164, N'LU203', N'Non-AC', N'Satna, Madhya Pradesh', N'Banda, Uttar Pradesh', N'Satna-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (165, N'LU204', N'AC', N'Satna, Madhya Pradesh', N'Chitrakoot, Uttar Pradesh', N'Satna-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (166, N'LU205', N'Non-AC', N'Satna, Madhya Pradesh', N'Atarra, Uttar Pradesh', N'Satna-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (167, N'LU206', N'AC', N'Satna, Madhya Pradesh', N'Baberu, Uttar Pradesh', N'Satna-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (168, N'LU207', N'Non-AC', N'Satna, Madhya Pradesh', N'Naraini, Uttar Pradesh', N'Satna-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (169, N'LU208', N'AC', N'Satna, Madhya Pradesh', N'Fatehpur, Uttar Pradesh', N'Satna-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (170, N'LU209', N'AC', N'Satna, Madhya Pradesh', N'New Delhi, Uttar Pradesh', N'Satna-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (171, N'LU210', N'AC', N'Satna, Madhya Pradesh', N'Karvi, Uttar Pradesh', N'Satna-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (172, N'LU211', N'AC', N'Satna, Madhya Pradesh', N'Bhopal, Madhya Pradesh', N'Satna-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (173, N'LU212', N'Non-AC', N'Satna, Madhya Pradesh', N'Delhi NCR', N'Satna-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (174, N'LU200', N'AC', N'Banda, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Banda-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (175, N'LU201', N'Non-AC', N'Banda, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Banda-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (176, N'LU202', N'AC', N'Banda, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Banda-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (177, N'LU203', N'Non-AC', N'Banda, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Banda-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (178, N'LU204', N'AC', N'Banda, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Banda-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (179, N'LU205', N'Non-AC', N'Banda, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Banda-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (180, N'LU206', N'AC', N'Banda, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Banda-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (181, N'LU207', N'Non-AC', N'Banda, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Banda-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (182, N'LU208', N'AC', N'Banda, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Banda-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (183, N'LU209', N'AC', N'Banda, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Banda-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (184, N'LU210', N'AC', N'Banda, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Banda-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (185, N'LU211', N'AC', N'Banda, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Banda-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (186, N'LU212', N'Non-AC', N'Banda, Uttar Pradesh', N'Delhi NCR', N'Banda-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (187, N'LU200', N'AC', N'Chitrakoot, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Chitrakoot-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (188, N'LU201', N'Non-AC', N'Chitrakoot, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Chitrakoot-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (189, N'LU202', N'AC', N'Chitrakoot, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Chitrakoot-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (190, N'LU203', N'Non-AC', N'Chitrakoot, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Chitrakoot-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (191, N'LU204', N'AC', N'Chitrakoot, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Chitrakoot-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (192, N'LU205', N'Non-AC', N'Chitrakoot, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Chitrakoot-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (193, N'LU206', N'AC', N'Chitrakoot, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Chitrakoot-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (194, N'LU207', N'Non-AC', N'Chitrakoot, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Chitrakoot-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (195, N'LU208', N'AC', N'Chitrakoot, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Chitrakoot-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (196, N'LU209', N'AC', N'Chitrakoot, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Chitrakoot-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (197, N'LU210', N'AC', N'Chitrakoot, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Chitrakoot-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (198, N'LU211', N'AC', N'Chitrakoot, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Chitrakoot-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (199, N'LU212', N'Non-AC', N'Chitrakoot, Uttar Pradesh', N'Delhi NCR', N'Chitrakoot-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (200, N'LU200', N'AC', N'Atarra, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Atarra-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (201, N'LU201', N'Non-AC', N'Atarra, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Atarra-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (202, N'LU202', N'AC', N'Atarra, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Atarra-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (203, N'LU203', N'Non-AC', N'Atarra, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Atarra-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (204, N'LU204', N'AC', N'Atarra, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Atarra-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (205, N'LU205', N'Non-AC', N'Atarra, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Atarra-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (206, N'LU206', N'AC', N'Atarra, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Atarra-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (207, N'LU207', N'Non-AC', N'Atarra, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Atarra-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (208, N'LU208', N'AC', N'Atarra, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Atarra-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (209, N'LU209', N'AC', N'Atarra, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Atarra-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (210, N'LU210', N'AC', N'Atarra, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Atarra-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (211, N'LU211', N'AC', N'Atarra, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Atarra-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (212, N'LU212', N'Non-AC', N'Atarra, Uttar Pradesh', N'Delhi NCR', N'Atarra-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (213, N'LU200', N'AC', N'Baberu, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Baberu-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (214, N'LU201', N'Non-AC', N'Baberu, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Baberu-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (215, N'LU202', N'AC', N'Baberu, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Baberu-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (216, N'LU203', N'Non-AC', N'Baberu, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Baberu-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (217, N'LU204', N'AC', N'Baberu, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Baberu-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (218, N'LU205', N'Non-AC', N'Baberu, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Baberu-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (219, N'LU206', N'AC', N'Baberu, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Baberu-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (220, N'LU207', N'Non-AC', N'Baberu, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Baberu-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
GO
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (221, N'LU208', N'AC', N'Baberu, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Baberu-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (222, N'LU209', N'AC', N'Baberu, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Baberu-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (223, N'LU210', N'AC', N'Baberu, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Baberu-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (224, N'LU211', N'AC', N'Baberu, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Baberu-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (225, N'LU212', N'Non-AC', N'Baberu, Uttar Pradesh', N'Delhi NCR', N'Baberu-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (226, N'LU200', N'AC', N'Naraini, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Naraini-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (227, N'LU201', N'Non-AC', N'Naraini, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Naraini-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (228, N'LU202', N'AC', N'Naraini, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Naraini-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (229, N'LU203', N'Non-AC', N'Naraini, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Naraini-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (230, N'LU204', N'AC', N'Naraini, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Naraini-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (231, N'LU205', N'Non-AC', N'Naraini, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Naraini-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (232, N'LU206', N'AC', N'Naraini, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Naraini-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (233, N'LU207', N'Non-AC', N'Naraini, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Naraini-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (234, N'LU208', N'AC', N'Naraini, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Naraini-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (235, N'LU209', N'AC', N'Naraini, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Naraini-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (236, N'LU210', N'AC', N'Naraini, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Naraini-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (237, N'LU211', N'AC', N'Naraini, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Naraini-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (238, N'LU212', N'Non-AC', N'Naraini, Uttar Pradesh', N'Delhi NCR', N'Naraini-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (239, N'LU213', N'AC', N'Fatehpur, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Fatehpur-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (240, N'LU214', N'Non-AC', N'Fatehpur, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Fatehpur-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (241, N'LU215', N'AC', N'Fatehpur, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Fatehpur-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (242, N'LU216', N'Non-AC', N'Fatehpur, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Fatehpur-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (243, N'LU217', N'AC', N'Fatehpur, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Fatehpur-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (244, N'LU218', N'Non-AC', N'Fatehpur, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Fatehpur-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (245, N'LU219', N'AC', N'Fatehpur, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Fatehpur-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (246, N'LU220', N'Non-AC', N'Fatehpur, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Fatehpur-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (247, N'LU221', N'AC', N'Fatehpur, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Fatehpur-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (248, N'LU222', N'AC', N'Fatehpur, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Fatehpur-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (249, N'LU223', N'AC', N'Fatehpur, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Fatehpur-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (250, N'LU224', N'AC', N'Fatehpur, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Fatehpur-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (251, N'LU225', N'Non-AC', N'Fatehpur, Uttar Pradesh', N'Delhi NCR', N'Fatehpur-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (252, N'LU226', N'AC', N'New Delhi, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'New Delhi-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (253, N'LU227', N'Non-AC', N'New Delhi, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'New Delhi-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (254, N'LU228', N'AC', N'New Delhi, Uttar Pradesh', N'Satna, Madhya Pradesh', N'New Delhi-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (255, N'LU229', N'Non-AC', N'New Delhi, Uttar Pradesh', N'Banda, Uttar Pradesh', N'New Delhi-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (256, N'LU230', N'AC', N'New Delhi, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'New Delhi-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (257, N'LU231', N'Non-AC', N'New Delhi, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'New Delhi-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (258, N'LU232', N'AC', N'New Delhi, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'New Delhi-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (259, N'LU233', N'Non-AC', N'New Delhi, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'New Delhi-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (260, N'LU234', N'AC', N'New Delhi, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'New Delhi-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (261, N'LU235', N'AC', N'New Delhi, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'New Delhi-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (262, N'LU236', N'AC', N'New Delhi, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'New Delhi-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (263, N'LU237', N'AC', N'New Delhi, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'New Delhi-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (264, N'LU238', N'Non-AC', N'New Delhi, Uttar Pradesh', N'Delhi NCR', N'New Delhi-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (265, N'LU239', N'AC', N'Karvi, Uttar Pradesh', N'Kanpur, Uttar Pradesh', N'Karvi-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (266, N'LU240', N'Non-AC', N'Karvi, Uttar Pradesh', N'Allahabad, Uttar Pradesh', N'Karvi-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (267, N'LU241', N'AC', N'Karvi, Uttar Pradesh', N'Satna, Madhya Pradesh', N'Karvi-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (268, N'LU242', N'Non-AC', N'Karvi, Uttar Pradesh', N'Banda, Uttar Pradesh', N'Karvi-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (269, N'LU243', N'AC', N'Karvi, Uttar Pradesh', N'Chitrakoot, Uttar Pradesh', N'Karvi-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (270, N'LU244', N'Non-AC', N'Karvi, Uttar Pradesh', N'Atarra, Uttar Pradesh', N'Karvi-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (271, N'LU245', N'AC', N'Karvi, Uttar Pradesh', N'Baberu, Uttar Pradesh', N'Karvi-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (272, N'LU246', N'Non-AC', N'Karvi, Uttar Pradesh', N'Naraini, Uttar Pradesh', N'Karvi-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (273, N'LU247', N'AC', N'Karvi, Uttar Pradesh', N'Fatehpur, Uttar Pradesh', N'Karvi-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (274, N'LU248', N'AC', N'Karvi, Uttar Pradesh', N'New Delhi, Uttar Pradesh', N'Karvi-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (275, N'LU249', N'AC', N'Karvi, Uttar Pradesh', N'Karvi, Uttar Pradesh', N'Karvi-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (276, N'LU250', N'AC', N'Karvi, Uttar Pradesh', N'Bhopal, Madhya Pradesh', N'Karvi-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (277, N'LU251', N'Non-AC', N'Karvi, Uttar Pradesh', N'Delhi NCR', N'Karvi-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (278, N'LU252', N'AC', N'Bhopal, Madhya Pradesh', N'Kanpur, Uttar Pradesh', N'Bhopal-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (279, N'LU253', N'Non-AC', N'Bhopal, Madhya Pradesh', N'Allahabad, Uttar Pradesh', N'Bhopal-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (280, N'LU254', N'AC', N'Bhopal, Madhya Pradesh', N'Satna, Madhya Pradesh', N'Bhopal-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (281, N'LU255', N'Non-AC', N'Bhopal, Madhya Pradesh', N'Banda, Uttar Pradesh', N'Bhopal-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (282, N'LU256', N'AC', N'Bhopal, Madhya Pradesh', N'Chitrakoot, Uttar Pradesh', N'Bhopal-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (283, N'LU257', N'Non-AC', N'Bhopal, Madhya Pradesh', N'Atarra, Uttar Pradesh', N'Bhopal-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (284, N'LU258', N'AC', N'Bhopal, Madhya Pradesh', N'Baberu, Uttar Pradesh', N'Bhopal-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (285, N'LU259', N'Non-AC', N'Bhopal, Madhya Pradesh', N'Naraini, Uttar Pradesh', N'Bhopal-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (286, N'LU260', N'AC', N'Bhopal, Madhya Pradesh', N'Fatehpur, Uttar Pradesh', N'Bhopal-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (287, N'LU261', N'AC', N'Bhopal, Madhya Pradesh', N'New Delhi, Uttar Pradesh', N'Bhopal-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (288, N'LU262', N'AC', N'Bhopal, Madhya Pradesh', N'Karvi, Uttar Pradesh', N'Bhopal-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (289, N'LU263', N'AC', N'Bhopal, Madhya Pradesh', N'Bhopal, Madhya Pradesh', N'Bhopal-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (290, N'LU264', N'Non-AC', N'Bhopal, Madhya Pradesh', N'Delhi NCR', N'Bhopal-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (291, N'LU265', N'AC', N'Delhi NCR', N'Kanpur, Uttar Pradesh', N'Delhi NCR-Kanpur Cruiser', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (292, N'LU266', N'Non-AC', N'Delhi NCR', N'Allahabad, Uttar Pradesh', N'Delhi NCR-Allahabad Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (293, N'LU267', N'AC', N'Delhi NCR', N'Satna, Madhya Pradesh', N'Delhi NCR-Satna Flyer', CAST(450 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (294, N'LU268', N'Non-AC', N'Delhi NCR', N'Banda, Uttar Pradesh', N'Delhi NCR-Banda Express', CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (295, N'LU269', N'AC', N'Delhi NCR', N'Chitrakoot, Uttar Pradesh', N'Delhi NCR-Chitrakoot Link', CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (296, N'LU270', N'Non-AC', N'Delhi NCR', N'Atarra, Uttar Pradesh', N'Delhi NCR-Atarra Runner', CAST(270 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (297, N'LU271', N'AC', N'Delhi NCR', N'Baberu, Uttar Pradesh', N'Delhi NCR-Baberu Superfast', CAST(390 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (298, N'LU272', N'Non-AC', N'Delhi NCR', N'Naraini, Uttar Pradesh', N'Delhi NCR-Naraini Flyer', CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (299, N'LU273', N'AC', N'Delhi NCR', N'Fatehpur, Uttar Pradesh', N'Delhi NCR-Fatehpur Connect', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (300, N'LU274', N'AC', N'Delhi NCR', N'New Delhi, Uttar Pradesh', N'Delhi NCR-Delhi NCR Superfast', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (301, N'LU275', N'AC', N'Delhi NCR', N'Karvi, Uttar Pradesh', N'Delhi NCR-Karvi Shuttle', CAST(320 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (302, N'LU276', N'AC', N'Delhi NCR', N'Bhopal, Madhya Pradesh', N'Delhi NCR-Bhopal Flyer', CAST(480 AS Decimal(18, 0)))
INSERT [dbo].[Buses] ([BusId], [BusNo], [BusType], [Origin], [Destination], [BusName], [Amount]) VALUES (303, N'LU277', N'Non-AC', N'Delhi NCR', N'Delhi NCR', N'Delhi NCR-Delhi NCR Express', CAST(450 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Buses] OFF
GO
SET IDENTITY_INSERT [dbo].[BusSearch] ON 

INSERT [dbo].[BusSearch] ([Id], [FromLocation], [ToLocation], [TravelDate]) VALUES (1, N'Chitrakoot', N'Banda', CAST(N'2025-12-03' AS Date))
INSERT [dbo].[BusSearch] ([Id], [FromLocation], [ToLocation], [TravelDate]) VALUES (2, N'Banda', N'Baberu', CAST(N'2025-04-04' AS Date))
INSERT [dbo].[BusSearch] ([Id], [FromLocation], [ToLocation], [TravelDate]) VALUES (3, N'Baberu', N'Atarra', CAST(N'2025-05-06' AS Date))
SET IDENTITY_INSERT [dbo].[BusSearch] OFF
GO
INSERT [dbo].[ContactMessages] ([Name], [Email], [Message], [SubmittedAt]) VALUES (N'Mazhar', N'mazhar@gmail.com', N'i want to book your bus', CAST(N'2025-05-12T08:38:35.717' AS DateTime))
INSERT [dbo].[ContactMessages] ([Name], [Email], [Message], [SubmittedAt]) VALUES (N'mohammad jishan', N'jmojishan4@gmail.com', N'is online payment availble', CAST(N'2025-05-12T09:21:36.480' AS DateTime))
INSERT [dbo].[ContactMessages] ([Name], [Email], [Message], [SubmittedAt]) VALUES (N'mohammad jishan', N'jmojishan4@gmail.com', N'is online payment availble', CAST(N'2025-05-12T09:36:08.477' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[msgbox] ON 

INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (1, N'i want to your website', CAST(N'2025-05-11T04:30:46.170' AS DateTime))
INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (2, N'is Online payment Availbale', CAST(N'2025-05-11T04:45:28.193' AS DateTime))
INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (3, N'Hello, I need help with booking.', CAST(N'2025-05-11T04:57:44.730' AS DateTime))
INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (4, N'What are the bus timings for Delhi?', CAST(N'2025-05-11T04:58:01.257' AS DateTime))
INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (5, N'Is online payment available?', CAST(N'2025-05-11T04:58:24.840' AS DateTime))
INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (6, N'Good Website', CAST(N'2025-05-11T05:21:26.840' AS DateTime))
INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (7, N'Good Website', CAST(N'2025-05-11T05:22:21.973' AS DateTime))
INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (8, N'Hello, I need help with booking.', CAST(N'2025-05-11T05:42:36.997' AS DateTime))
INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (9, N'hi, i want to know about your service', CAST(N'2025-05-12T08:30:13.840' AS DateTime))
INSERT [dbo].[msgbox] ([Id], [Email], [CreatedAt]) VALUES (10, N'Hello, I need help with booking.', CAST(N'2025-05-12T09:27:21.577' AS DateTime))
SET IDENTITY_INSERT [dbo].[msgbox] OFF
GO
INSERT [dbo].[Register] ([FirstName], [LastName], [Mobile], [Password], [Email], [Pincode]) VALUES (N'mohammad', N'jishan', N'07081007866', N'12345', N'jmojishan4@gmail.com', 210201)
GO
ALTER TABLE [dbo].[ContactMessages] ADD  DEFAULT (getdate()) FOR [SubmittedAt]
GO
ALTER TABLE [dbo].[msgbox] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([BusId])
REFERENCES [dbo].[Buses] ([BusId])
GO
