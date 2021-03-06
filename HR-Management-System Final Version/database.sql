/****** DIQQET ******/
/****** DIQQET ******/
/****** DIQQET ******/
/****** DIQQET ******/
/****** DIQQET ******/
/****** DIQQET ******/
/****** DIQQET ******/
/****** DIQQET ******/
/****** DIQQET ******/
/****** DIQQET ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/
/****** HRM_database adinda bos bir databaza yaradib asagidaki kodlari sql kimi execute edilmelidir. ******/






USE [HRM_database]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3.03.2018 16:53:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[admin_fullname] [nvarchar](100) NULL,
	[admin_email] [nvarchar](100) NULL,
	[admin_password] [nvarchar](100) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendence]    Script Date: 3.03.2018 16:53:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendence](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[atten_emp_id] [int] NULL,
	[atten_status] [bit] NULL,
	[atten_leave_type_id] [int] NULL,
	[atten_date] [datetime] NULL,
	[atten_reason] [nvarchar](max) NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Award]    Script Date: 3.03.2018 16:53:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Award](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[award_emp_id] [int] NULL,
	[award_name] [nvarchar](100) NULL,
	[award_reason] [nvarchar](max) NULL,
	[award_cash_price] [float] NULL,
	[award_date] [datetime] NULL,
 CONSTRAINT [PK_Award] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departament]    Script Date: 3.03.2018 16:53:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departament](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[depart_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Departament] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 3.03.2018 16:53:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[desig_name] [nvarchar](100) NULL,
	[depart_id] [int] NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3.03.2018 16:53:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[emp_fullname] [nvarchar](100) NULL,
	[emp_fathername] [nvarchar](50) NULL,
	[emp_dateof_birth] [datetime] NULL,
	[emp_gender_id] [int] NULL,
	[emp_phone] [nvarchar](50) NULL,
	[emp_address] [nvarchar](500) NULL,
	[emp_photo] [nvarchar](max) NULL,
	[emp_email] [nvarchar](100) NULL,
	[emp_password] [nvarchar](500) NULL,
	[emp_dep_id] [int] NULL,
	[emp_desig_id] [int] NULL,
	[emp_date_of_joining] [datetime] NULL,
	[emp_exit_date] [datetime] NULL,
	[emp_work_status] [bit] NULL,
	[emp_salary] [float] NULL,
	[emp_resume] [nvarchar](max) NULL,
	[emp_offer_letter] [nvarchar](max) NULL,
	[emp_joining_letter] [nvarchar](max) NULL,
	[emp_contact_and_argue] [nvarchar](max) NULL,
	[emp_ID_proof] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 3.03.2018 16:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gender_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Holiday]    Script Date: 3.03.2018 16:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holiday](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[holiday_name] [nvarchar](100) NULL,
	[holiday_date] [datetime] NULL,
 CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave_App]    Script Date: 3.03.2018 16:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave_App](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[leave_emp_id] [int] NULL,
	[leave_date] [datetime] NULL,
	[leave_reason] [nvarchar](200) NULL,
	[leave_status_id] [int] NULL,
 CONSTRAINT [PK_Leave_App] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave_status]    Script Date: 3.03.2018 16:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Leave_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave_type]    Script Date: 3.03.2018 16:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Leave_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notice_Board]    Script Date: 3.03.2018 16:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice_Board](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[notice_title] [nvarchar](100) NULL,
	[notice_content] [nvarchar](max) NULL,
	[notice_status] [bit] NULL,
 CONSTRAINT [PK_Notice_Board] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([id], [admin_fullname], [admin_email], [admin_password]) VALUES (1, N'Samir Kerimov', N'samir@code.edu.az', N'123456')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Attendence] ON 

INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (1, 44, 0, 1, CAST(N'2018-03-03T00:00:00.000' AS DateTime), N'John xeste oldugunu bildirdi')
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (2, 45, 1, NULL, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (3, 47, 0, 2, CAST(N'2018-03-03T00:00:00.000' AS DateTime), N'Amanda icazesiz ise gelmeyib')
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (4, 48, 1, NULL, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (5, 49, 0, 1, CAST(N'2018-03-03T00:00:00.000' AS DateTime), N'Tom seyahete gedecek')
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (6, 50, 1, NULL, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (7, 51, 1, NULL, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (8, 52, 1, NULL, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (9, 53, 0, 1, CAST(N'2018-03-03T00:00:00.000' AS DateTime), N'Noellenin oglu olub')
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (10, 55, 1, NULL, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (11, 56, 0, 2, CAST(N'2018-03-03T00:00:00.000' AS DateTime), N'Chester icazesiz ise gelmeyib')
SET IDENTITY_INSERT [dbo].[Attendence] OFF
SET IDENTITY_INSERT [dbo].[Award] ON 

INSERT [dbo].[Award] ([id], [award_emp_id], [award_name], [award_reason], [award_cash_price], [award_date]) VALUES (9, 44, N'President’s Circle', N'President’s Circle award reason', 150, CAST(N'2018-03-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Award] ([id], [award_emp_id], [award_name], [award_reason], [award_cash_price], [award_date]) VALUES (10, 45, N'Executive Choice', N'Executive Choice reason', 240, CAST(N'2018-03-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Award] ([id], [award_emp_id], [award_name], [award_reason], [award_cash_price], [award_date]) VALUES (11, 48, N'Leadership Impact', N'Leadership Impact reason', 500, CAST(N'2018-03-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Award] ([id], [award_emp_id], [award_name], [award_reason], [award_cash_price], [award_date]) VALUES (12, 53, N'Pinnacle Award', N'Pinnacle Award reason', 80, CAST(N'2018-03-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Award] ([id], [award_emp_id], [award_name], [award_reason], [award_cash_price], [award_date]) VALUES (13, 56, N'Capital Achievement', N'Capital Achievement reason', 180, CAST(N'2018-03-03T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Award] OFF
SET IDENTITY_INSERT [dbo].[Departament] ON 

INSERT [dbo].[Departament] ([id], [depart_name]) VALUES (14, N'Engineering')
INSERT [dbo].[Departament] ([id], [depart_name]) VALUES (15, N'Development')
INSERT [dbo].[Departament] ([id], [depart_name]) VALUES (16, N'Human Resources')
INSERT [dbo].[Departament] ([id], [depart_name]) VALUES (17, N'Training and Career Center')
INSERT [dbo].[Departament] ([id], [depart_name]) VALUES (18, N'Security')
SET IDENTITY_INSERT [dbo].[Departament] OFF
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (23, N'Computer', 14)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (24, N'Mathematics', 14)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (25, N'Artificial Intelligence', 14)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (26, N'Desktop Development', 15)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (27, N'Mobile Development', 15)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (28, N'Web Development', 15)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (30, N'Public Relations', 16)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (31, N'Employeer Development Center', 17)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (32, N'Health and Safety', 17)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (33, N'Internal', 18)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (34, N'External', 18)
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (44, N'John Smith', N'Mike', CAST(N'1987-01-06T00:00:00.000' AS DateTime), 1, N'055 265 75 84', N'132, My Street, Bigtown BG23 4YZ, England', N'6266020180303153037.jpg', N'john@code.edu.az', N'123456', 14, 23, CAST(N'2012-01-13T00:00:00.000' AS DateTime), NULL, 1, 1800, N'2700920180303153037.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (45, N'Issac Newton', N'Muhammed', CAST(N'1983-02-23T00:00:00.000' AS DateTime), 1, N'077 548 87 36', N'132, My Street, Kingston, New York 12401, United States', N'1586020180303153441.jpg', N'issac@code.edu.az', N'123456', 14, 24, CAST(N'2015-02-06T00:00:00.000' AS DateTime), NULL, 1, 1500, N'6837420180303153441.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (47, N'Amanda Mandy', N'Mark', CAST(N'1987-03-19T00:00:00.000' AS DateTime), 2, N'055 587 23 35', N'P.O. Box 283 8562 Fusce Rd. Frederick Nebraska 20620', N'1311420180303153802.jpg', N'amanda@code.edu.az', N'123456', 14, 23, CAST(N'2014-03-01T00:00:00.000' AS DateTime), NULL, 1, 1250, N'5298620180303153945.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (48, N'Celeste Slater', N'Lawrence', CAST(N'1982-04-04T00:00:00.000' AS DateTime), 2, N'055 222 48 75', N'P.O. Box 929 4189 Nunc Lebanon KY 69409', N'2908020180303154403.jpg', N'celeste@code.edu.az', N'123456', 15, 26, CAST(N'2016-04-13T00:00:00.000' AS DateTime), NULL, 1, 2500, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (49, N'Tom Wagner', N'Bishop', CAST(N'1972-03-17T00:00:00.000' AS DateTime), 1, N'055 485 95 63', N'52 Nunc. Avenue Erie Rhode Island 24', N'7799520180303154606.jpg', N'tom@code.edu.az', N'123456', 15, 27, CAST(N'2011-08-18T00:00:00.000' AS DateTime), NULL, 1, 3000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (50, N'Melvin Porter', N'Harry', CAST(N'1967-03-18T00:00:00.000' AS DateTime), 1, N'077 584 62 52', N'Bandera South Dakota 45149', N'3458520180303154735.jpg', N'melvin@code.edu.az', N'123456', 15, 28, CAST(N'2013-06-12T00:00:00.000' AS DateTime), NULL, 1, 2400, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (51, N'Joan Romero', N'Hamza', CAST(N'1962-04-12T00:00:00.000' AS DateTime), 1, N'050 958 75 48', N'Idaho Falls Ohio 19253', N'7437620180303154930.jpg', N'joan@code.edu.az', N'123456', 16, 30, CAST(N'2014-09-10T00:00:00.000' AS DateTime), NULL, 1, 3500, N'6319320180303154930.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (52, N'Annabel Patrick', N'Alpha', CAST(N'1989-06-14T00:00:00.000' AS DateTime), 2, N'055 592 17 45', N'Bethlehem Utah 02913', N'3376120180303155201.jpg', N'annabel@code.edu.az', N'123456', 17, 31, CAST(N'2018-01-10T00:00:00.000' AS DateTime), NULL, 1, 1800, NULL, N'1892020180303155201.png', NULL, NULL, NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (53, N'Noelle Adams', N'Rahim', CAST(N'1988-07-18T00:00:00.000' AS DateTime), 2, N'055 582 15 45', N'Weirton IN 93479', N'3396220180303155327.jpg', N'noelle@code.edu.az', N'123456', 17, 32, CAST(N'2016-12-15T00:00:00.000' AS DateTime), NULL, 1, 2100, N'3169420180303155327.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (55, N'Christian Emerson', N'Chris', CAST(N'1977-03-06T00:00:00.000' AS DateTime), 1, N'055 211 11 15', N'Easthampton TN 31626', N'6169720180303155452.jpg', N'christian@code.edu.az', N'123456', 18, 33, CAST(N'2018-01-10T00:00:00.000' AS DateTime), NULL, 1, 800, NULL, NULL, NULL, N'9638920180303155452.png', NULL)
INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (56, N'Chester Bennett', N'Paul', CAST(N'1980-03-20T00:00:00.000' AS DateTime), 1, N'055 698 87 45', N'Lake Charles Maine 11292', N'5452720180303155607.jpg', N'chester@code.edu.az', N'123456', 18, 34, CAST(N'2018-02-13T00:00:00.000' AS DateTime), NULL, 1, 1900, NULL, NULL, NULL, N'4866020180303155607.png', NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([id], [gender_name]) VALUES (1, N'male')
INSERT [dbo].[Gender] ([id], [gender_name]) VALUES (2, N'female')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Holiday] ON 

INSERT [dbo].[Holiday] ([id], [holiday_name], [holiday_date]) VALUES (16, N'New Year', CAST(N'2018-12-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Holiday] ([id], [holiday_name], [holiday_date]) VALUES (17, N'Novruz', CAST(N'2018-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Holiday] ([id], [holiday_name], [holiday_date]) VALUES (18, N'Woman Day', CAST(N'2018-03-08T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Holiday] OFF
SET IDENTITY_INSERT [dbo].[Leave_App] ON 

INSERT [dbo].[Leave_App] ([id], [leave_emp_id], [leave_date], [leave_reason], [leave_status_id]) VALUES (10, 44, CAST(N'2018-02-16T00:00:00.000' AS DateTime), N'Ise gele bilmeyecem xesteyem', 3)
INSERT [dbo].[Leave_App] ([id], [leave_emp_id], [leave_date], [leave_reason], [leave_status_id]) VALUES (11, 44, CAST(N'2018-03-03T00:00:00.000' AS DateTime), N'Bu gun ise gele bilmeyecem', 5)
INSERT [dbo].[Leave_App] ([id], [leave_emp_id], [leave_date], [leave_reason], [leave_status_id]) VALUES (12, 44, CAST(N'2018-03-10T00:00:00.000' AS DateTime), N'Seyahete gedecem', 4)
INSERT [dbo].[Leave_App] ([id], [leave_emp_id], [leave_date], [leave_reason], [leave_status_id]) VALUES (13, 50, CAST(N'2018-03-11T00:00:00.000' AS DateTime), N'ise gelmeyecem', 3)
INSERT [dbo].[Leave_App] ([id], [leave_emp_id], [leave_date], [leave_reason], [leave_status_id]) VALUES (14, 45, CAST(N'2018-03-11T00:00:00.000' AS DateTime), N'uzrlu sebebden ise gele bilmeyecem', 5)
SET IDENTITY_INSERT [dbo].[Leave_App] OFF
SET IDENTITY_INSERT [dbo].[Leave_status] ON 

INSERT [dbo].[Leave_status] ([id], [status_name]) VALUES (3, N'Approved')
INSERT [dbo].[Leave_status] ([id], [status_name]) VALUES (4, N'Pending')
INSERT [dbo].[Leave_status] ([id], [status_name]) VALUES (5, N'Rejected')
SET IDENTITY_INSERT [dbo].[Leave_status] OFF
SET IDENTITY_INSERT [dbo].[Leave_type] ON 

INSERT [dbo].[Leave_type] ([id], [type_name]) VALUES (1, N'with permission')
INSERT [dbo].[Leave_type] ([id], [type_name]) VALUES (2, N'without permission ')
SET IDENTITY_INSERT [dbo].[Leave_type] OFF
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Employee] FOREIGN KEY([atten_emp_id])
REFERENCES [dbo].[Employee] ([id])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Employee]
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Leave_type] FOREIGN KEY([atten_leave_type_id])
REFERENCES [dbo].[Leave_type] ([id])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Leave_type]
GO
ALTER TABLE [dbo].[Award]  WITH CHECK ADD  CONSTRAINT [FK_Award_Employee] FOREIGN KEY([award_emp_id])
REFERENCES [dbo].[Employee] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Award] CHECK CONSTRAINT [FK_Award_Employee]
GO
ALTER TABLE [dbo].[Designation]  WITH CHECK ADD  CONSTRAINT [FK_Designation_Designation] FOREIGN KEY([depart_id])
REFERENCES [dbo].[Departament] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Designation] CHECK CONSTRAINT [FK_Designation_Designation]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Departament] FOREIGN KEY([emp_dep_id])
REFERENCES [dbo].[Departament] ([id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Departament]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Designation] FOREIGN KEY([emp_desig_id])
REFERENCES [dbo].[Designation] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Designation]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Gender] FOREIGN KEY([emp_gender_id])
REFERENCES [dbo].[Gender] ([id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Gender]
GO
ALTER TABLE [dbo].[Leave_App]  WITH CHECK ADD  CONSTRAINT [FK_Leave_App_Employee] FOREIGN KEY([leave_emp_id])
REFERENCES [dbo].[Employee] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Leave_App] CHECK CONSTRAINT [FK_Leave_App_Employee]
GO
ALTER TABLE [dbo].[Leave_App]  WITH CHECK ADD  CONSTRAINT [FK_Leave_App_Leave_status] FOREIGN KEY([leave_status_id])
REFERENCES [dbo].[Leave_status] ([id])
GO
ALTER TABLE [dbo].[Leave_App] CHECK CONSTRAINT [FK_Leave_App_Leave_status]
GO
USE [master]
GO
ALTER DATABASE [HRM_database] SET  READ_WRITE 
GO
