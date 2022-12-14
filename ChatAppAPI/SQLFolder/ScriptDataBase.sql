USE [User___] --Имя БД в которую мы хотим вставить данный скрипт

CREATE TABLE [dbo].[ChatMessageTable](
	[PersonalNumberMessage] [int] IDENTITY(1,1) NOT NULL,
	[PNUsers] [int] NOT NULL,
	[PNChatRoom] [int] NOT NULL,
	[TextMessage] [nvarchar](500) NOT NULL,
	[DataTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ChatMessageTable] PRIMARY KEY CLUSTERED 
(
	[PersonalNumberMessage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatRoomTable]    Script Date: 21.12.2022 4:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatRoomTable](
	[PersonalNumberChatRoom] [int] IDENTITY(1,1) NOT NULL,
	[TopicChatRoom] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChatRoomTable] PRIMARY KEY CLUSTERED 
(
	[PersonalNumberChatRoom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatRoomUserTable]    Script Date: 21.12.2022 4:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatRoomUserTable](
	[PersonalNumberCRU] [int] IDENTITY(1,1) NOT NULL,
	[PNChatRoom] [int] NOT NULL,
	[PNUser] [int] NOT NULL,
 CONSTRAINT [PK_ChatRoomUserTable] PRIMARY KEY CLUSTERED 
(
	[PersonalNumberCRU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersTable]    Script Date: 21.12.2022 4:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersTable](
	[NameUser] [nvarchar](50) NOT NULL,
	[LoginUser] [nvarchar](50) NOT NULL,
	[PasswordUser] [nvarchar](50) NOT NULL,
	[PersonalNumberUser] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UsersTable] PRIMARY KEY CLUSTERED 
(
	[PersonalNumberUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChatMessageTable] ON 

INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (1, 1, 1, N'Helloy Word', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (2, 2, 2, N'Джожо', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (3, 3, 2, N'Доктор стоун', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (4, 2, 2, N'Привет', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (5, 2, 2, N'Как лела?', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (6, 2, 2, N'дела*', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (7, 2, 2, N'Прикинь, что вчера узнал', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (8, 2, 2, N'Оказывается, порох делается', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (9, 2, 2, N'всего из 3х', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (10, 2, 2, N'ингридиентов', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (11, 2, 2, N'1. СЕРА', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (12, 2, 2, N'2. Древесный уголь', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (13, 2, 2, N'3. Селитра', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (14, 2, 2, N'Го повторим?', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (17, 1, 1, N'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', CAST(N'2022-12-08T03:15:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (18, 1, 1, N'Helloy Word', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (19, 2, 2, N'Джожо', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (20, 1, 1, N'Helloy Word', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (21, 1, 1, N'Helloy Word', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (22, 1, 1, N'Helloy Word', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (23, 1, 1, N'Helloy Word', CAST(N'2022-10-13T12:57:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (24, 1, 1, N'Helloy Word', CAST(N'2022-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (25, 1, 1, N'Helloy Word', CAST(N'2022-12-11T01:55:31.973' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (26, 1, 1, N'Test message 03', CAST(N'2022-12-11T01:58:43.410' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (27, 1, 1, N'sdadasd', CAST(N'2022-12-11T02:00:55.013' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (28, 1, 1, N'sdasdasdasdasdasdasdasdas', CAST(N'2022-12-11T02:00:56.913' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (29, 1, 1, N'daskdaskdj''', CAST(N'2022-12-11T02:00:57.910' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (30, 1, 1, N'1231244', CAST(N'2022-12-11T02:00:58.653' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (31, 1, 1, N'63', CAST(N'2022-12-11T02:00:59.043' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (33, 1, 1, N'dgh', CAST(N'2022-12-11T02:00:59.473' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (34, 1, 1, N'd', CAST(N'2022-12-11T02:00:59.640' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (36, 1, 1, N'dgh', CAST(N'2022-12-11T02:01:00.503' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (37, 1, 1, N's', CAST(N'2022-12-11T02:01:34.390' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (38, 1, 1, N's', CAST(N'2022-12-11T02:01:34.570' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (39, 1, 1, N's', CAST(N'2022-12-11T02:01:34.767' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (42, 1, 1, N's', CAST(N'2022-12-11T02:01:35.710' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (43, 1, 1, N's', CAST(N'2022-12-11T02:01:35.917' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (44, 1, 1, N's', CAST(N'2022-12-11T02:01:36.110' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (45, 1, 1, N's', CAST(N'2022-12-11T02:01:36.297' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (46, 1, 1, N's', CAST(N'2022-12-11T02:01:36.483' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (47, 1, 1, N's', CAST(N'2022-12-11T02:01:36.673' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (52, 1, 2, N'sd', CAST(N'2022-12-11T02:45:46.580' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (53, 1, 1, N'cxcx', CAST(N'2022-12-11T03:06:08.853' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (54, 1, 1, N'mmm', CAST(N'2022-12-11T03:30:46.280' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (55, 1, 1, N',,,', CAST(N'2022-12-11T03:30:52.643' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (56, 1, 1, N'klk', CAST(N'2022-12-11T03:31:02.267' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (57, 1, 1, N'sds', CAST(N'2022-12-11T03:31:27.083' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (58, 1, 1, N'cc', CAST(N'2022-12-11T03:31:29.713' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (59, 1, 1, N'mc', CAST(N'2022-12-11T03:31:32.243' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (60, 1, 1, N'k', CAST(N'2022-12-11T03:34:07.613' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (61, 1, 1, N'x', CAST(N'2022-12-11T03:34:15.820' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (62, 1, 1, N'ол', CAST(N'2022-12-11T03:43:30.647' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (63, 1, 1, N'вдв', CAST(N'2022-12-11T03:43:32.673' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (64, 1, 1, N'Lol', CAST(N'2022-12-11T03:43:36.723' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (65, 1, 1, N'Работает', CAST(N'2022-12-11T03:43:39.940' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (66, 1, 1, N'Я в шрке', CAST(N'2022-12-11T03:43:46.350' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (67, 1, 1, N'Шоке*', CAST(N'2022-12-11T03:43:54.257' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (68, 1, 1, N'ыв', CAST(N'2022-12-11T03:46:23.893' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (69, 1, 1, N'fd', CAST(N'2022-12-11T03:47:42.827' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (70, 1, 1, N'z gthddsq', CAST(N'2022-12-11T03:47:47.483' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (71, 1, 1, N'Я первый', CAST(N'2022-12-11T03:47:52.130' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (72, 1, 1, N'Я первый', CAST(N'2022-12-11T03:48:16.957' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (73, 1, 1, N'Второй', CAST(N'2022-12-11T03:48:24.377' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (74, 1, 1, N'3', CAST(N'2022-12-11T03:48:35.073' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (75, 1, 1, N'1', CAST(N'2022-12-11T03:48:35.430' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (76, 1, 1, N'jk', CAST(N'2022-12-11T04:59:53.533' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (77, 1, 1, N'КУ', CAST(N'2022-12-11T05:14:56.103' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (78, 1, 1, N'Привет', CAST(N'2022-12-11T05:15:26.073' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (79, 3, 1, N'123', CAST(N'2022-12-11T05:15:37.143' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (80, 3, 1, N'123', CAST(N'2022-12-11T05:24:24.010' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (81, 1, 1, N'dsfd', CAST(N'2022-12-11T05:35:57.327' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (82, 1, 1, N'dsfd', CAST(N'2022-12-11T05:36:02.413' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (84, 3, 1, N'454', CAST(N'2022-12-11T05:44:59.637' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (85, 3, 1, N'454', CAST(N'2022-12-11T05:44:59.653' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (86, 3, 1, N'454', CAST(N'2022-12-11T05:44:59.723' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (87, 3, 1, N'56', CAST(N'2022-12-11T05:48:07.177' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (88, 3, 1, N'56', CAST(N'2022-12-11T05:48:07.770' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (89, 3, 1, N'89', CAST(N'2022-12-11T05:48:29.957' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (90, 1, 1, N'jd', CAST(N'2022-12-11T05:52:43.303' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (91, 3, 1, N'99', CAST(N'2022-12-11T06:09:58.613' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (92, 3, 1, N'45', CAST(N'2022-12-11T07:00:24.297' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (93, 1, 1, N'Привет', CAST(N'2022-12-11T07:00:42.123' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (94, 1, 1, N'Как ты?', CAST(N'2022-12-11T07:00:45.543' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (95, 3, 1, N'cv', CAST(N'2022-12-11T08:38:25.403' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (109, 3, 1, N'df', CAST(N'2022-12-11T09:02:29.963' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (110, 3, 1, N'das', CAST(N'2022-12-11T09:56:37.350' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (111, 3, 1, N'SADAS', CAST(N'2022-12-11T11:00:01.167' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (112, 1, 1, N'55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555', CAST(N'2022-12-11T11:00:52.847' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (113, 3, 1, N'ADA', CAST(N'2022-12-11T11:01:20.637' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (114, 3, 1, N'FSD', CAST(N'2022-12-11T11:01:27.610' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (115, 3, 1, N'DSF', CAST(N'2022-12-11T11:01:27.837' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (116, 3, 1, N'SDF', CAST(N'2022-12-11T11:01:28.060' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (117, 3, 1, N'SD', CAST(N'2022-12-11T11:01:28.240' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (118, 3, 1, N'SD', CAST(N'2022-12-11T11:01:28.420' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (119, 3, 1, N'SD', CAST(N'2022-12-11T11:01:28.600' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (120, 3, 1, N'SD', CAST(N'2022-12-11T11:01:28.757' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (121, 3, 1, N'F', CAST(N'2022-12-11T11:01:29.003' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (122, 3, 1, N'4', CAST(N'2022-12-11T11:09:29.310' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (123, 3, 1, N'56', CAST(N'2022-12-11T13:05:23.937' AS DateTime))
GO
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (124, 3, 1, N'56', CAST(N'2022-12-11T13:05:24.040' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (125, 3, 1, N'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', CAST(N'2022-12-11T13:49:09.880' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (126, 3, 1, N'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', CAST(N'2022-12-11T13:50:28.670' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (127, 3, 1, N'12', CAST(N'2022-12-11T14:56:46.950' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (128, 3, 1, N'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', CAST(N'2022-12-11T15:55:54.483' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (129, 3, 1, N'asdas', CAST(N'2022-12-11T16:02:18.470' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (130, 3, 1, N'as', CAST(N'2022-12-11T16:02:23.080' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (131, 3, 1, N'sda', CAST(N'2022-12-11T16:02:26.250' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (132, 3, 1, N'asd', CAST(N'2022-12-11T16:07:44.653' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (133, 1, 1, N'Привет', CAST(N'2022-12-12T08:19:49.637' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (134, 1, 2, N'Привет', CAST(N'2022-12-12T08:20:10.707' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (135, 1, 1, N'Доброе Утро', CAST(N'2022-12-12T08:21:41.970' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (136, 1, 1, N'ТЕст 03', CAST(N'2022-12-12T08:22:05.347' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (137, 1, 2, N'Тест 04', CAST(N'2022-12-12T08:22:20.313' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (138, 1, 2, N'Лол, сообщения в новую беседу не улетают', CAST(N'2022-12-12T08:24:31.653' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (139, 1, 2, N'зззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззззз', CAST(N'2022-12-12T08:29:28.670' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (140, 1, 2, N'Hi', CAST(N'2022-12-12T10:37:04.433' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (141, 1, 1, N'Hi', CAST(N'2022-12-12T10:52:50.397' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (142, 1, 1, N'HI', CAST(N'2022-12-12T13:17:21.663' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (143, 1, 1, N'РШ', CAST(N'2022-12-12T13:46:19.500' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (144, 1, 1, N'123', CAST(N'2022-12-12T13:46:32.160' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (145, 1, 1, N'123', CAST(N'2022-12-12T13:46:35.900' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (146, 1, 2, N'123', CAST(N'2022-12-12T13:46:42.963' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (147, 1, 1, N'Ку', CAST(N'2022-12-12T21:47:40.847' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (148, 1, 1, N'Не верю', CAST(N'2022-12-12T22:44:22.457' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (149, 1, 1, N'воорвлоа', CAST(N'2022-12-12T22:44:35.610' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (150, 1, 1, N'ку', CAST(N'2022-12-12T22:44:49.177' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (151, 1, 1, N'sms', CAST(N'2022-12-12T22:48:48.013' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (152, 1, 1, N'nn', CAST(N'2022-12-12T22:49:22.447' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (153, 1, 1, N'nn', CAST(N'2022-12-12T22:49:38.450' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (154, 1, 1, N'jjj', CAST(N'2022-12-12T22:51:48.540' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (155, 1, 1, N'hghg', CAST(N'2022-12-13T10:50:30.603' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (156, 1, 1, N'Потоки?', CAST(N'2022-12-15T14:08:35.040' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (157, 1, 1, N'ада', CAST(N'2022-12-15T14:10:53.997' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (158, 1, 1, N'PostMessage', CAST(N'2022-12-19T19:46:04.860' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (159, 1, 1, N'PostMessage', CAST(N'2022-12-19T19:49:32.677' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (160, 1, 2, N'PostMessage', CAST(N'2022-12-19T19:49:40.720' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (161, 1, 2, N'PostMessage', CAST(N'2022-12-19T19:55:59.277' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (162, 1, 3, N'hhh', CAST(N'2022-12-19T14:00:00.000' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (163, 1, 3, N'jkdfgjd', CAST(N'2022-12-19T20:04:22.703' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (164, 1, 2, N'hhh', CAST(N'2022-12-19T20:06:06.210' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (165, 1, 4, N'111', CAST(N'2022-12-19T20:06:14.920' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (166, 1, 1, N'sdjd', CAST(N'2022-12-19T20:06:34.447' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (167, 1, 1, N'123', CAST(N'2022-12-19T20:06:40.913' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (171, 1, 4, N'Test', CAST(N'2022-12-19T20:27:41.037' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (172, 1, 1, N'dfgdfgd', CAST(N'2022-12-19T21:11:45.560' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (173, 1, 1, N'ggg', CAST(N'2022-12-19T21:11:51.887' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (174, 1, 1, N'kk', CAST(N'2022-12-19T21:13:23.753' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (175, 1, 1, N'kk', CAST(N'2022-12-19T21:13:28.800' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (176, 1, 2, N'ddd', CAST(N'2022-12-19T21:13:53.280' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (177, 1, 2, N'fff', CAST(N'2022-12-19T21:14:01.540' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (178, 1, 2, N'kjkjkj', CAST(N'2022-12-19T21:14:05.690' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (179, 1, 2, N'kjkjkj', CAST(N'2022-12-19T21:14:11.677' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (180, 1, 2, N'jkjkj', CAST(N'2022-12-19T21:14:52.200' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (181, 1, 2, N'kkk', CAST(N'2022-12-19T21:15:20.903' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (182, 1, 1, N'sds', CAST(N'2022-12-19T21:28:39.807' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (183, 1, 1, N'dfd', CAST(N'2022-12-19T21:28:47.237' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (184, 1, 1, N'e', CAST(N'2022-12-19T21:29:16.183' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (185, 1, 1, N're', CAST(N'2022-12-19T21:29:23.183' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (186, 1, 2, N'rerer', CAST(N'2022-12-19T21:30:04.183' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (187, 1, 2, N'erer', CAST(N'2022-12-19T21:30:06.037' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (188, 1, 2, N'ere', CAST(N'2022-12-19T21:30:09.610' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (189, 1, 1, N'dfd', CAST(N'2022-12-19T21:36:12.223' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (190, 1, 1, N'111', CAST(N'2022-12-19T21:36:21.020' AS DateTime))
INSERT [dbo].[ChatMessageTable] ([PersonalNumberMessage], [PNUsers], [PNChatRoom], [TextMessage], [DataTime]) VALUES (191, 1, 2, N'll', CAST(N'2022-12-19T21:37:00.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[ChatMessageTable] OFF
GO
SET IDENTITY_INSERT [dbo].[ChatRoomTable] ON 

INSERT [dbo].[ChatRoomTable] ([PersonalNumberChatRoom], [TopicChatRoom]) VALUES (1, N'Test')
INSERT [dbo].[ChatRoomTable] ([PersonalNumberChatRoom], [TopicChatRoom]) VALUES (2, N'Любители АНИМЕ')
INSERT [dbo].[ChatRoomTable] ([PersonalNumberChatRoom], [TopicChatRoom]) VALUES (3, N'ТехногансТер')
INSERT [dbo].[ChatRoomTable] ([PersonalNumberChatRoom], [TopicChatRoom]) VALUES (4, N'ПРограммирование просто')
INSERT [dbo].[ChatRoomTable] ([PersonalNumberChatRoom], [TopicChatRoom]) VALUES (5, N'Помощь чайнику')
INSERT [dbo].[ChatRoomTable] ([PersonalNumberChatRoom], [TopicChatRoom]) VALUES (6, N'Еанутые')
INSERT [dbo].[ChatRoomTable] ([PersonalNumberChatRoom], [TopicChatRoom]) VALUES (7, N'МУсор')
INSERT [dbo].[ChatRoomTable] ([PersonalNumberChatRoom], [TopicChatRoom]) VALUES (8, N'Где менты')
SET IDENTITY_INSERT [dbo].[ChatRoomTable] OFF
GO
SET IDENTITY_INSERT [dbo].[ChatRoomUserTable] ON 

INSERT [dbo].[ChatRoomUserTable] ([PersonalNumberCRU], [PNChatRoom], [PNUser]) VALUES (1, 1, 1)
INSERT [dbo].[ChatRoomUserTable] ([PersonalNumberCRU], [PNChatRoom], [PNUser]) VALUES (2, 1, 3)
INSERT [dbo].[ChatRoomUserTable] ([PersonalNumberCRU], [PNChatRoom], [PNUser]) VALUES (3, 3, 1)
INSERT [dbo].[ChatRoomUserTable] ([PersonalNumberCRU], [PNChatRoom], [PNUser]) VALUES (4, 4, 1)
INSERT [dbo].[ChatRoomUserTable] ([PersonalNumberCRU], [PNChatRoom], [PNUser]) VALUES (5, 5, 1)
INSERT [dbo].[ChatRoomUserTable] ([PersonalNumberCRU], [PNChatRoom], [PNUser]) VALUES (6, 6, 1)
INSERT [dbo].[ChatRoomUserTable] ([PersonalNumberCRU], [PNChatRoom], [PNUser]) VALUES (7, 7, 1)
INSERT [dbo].[ChatRoomUserTable] ([PersonalNumberCRU], [PNChatRoom], [PNUser]) VALUES (8, 8, 1)
INSERT [dbo].[ChatRoomUserTable] ([PersonalNumberCRU], [PNChatRoom], [PNUser]) VALUES (9, 2, 1)
SET IDENTITY_INSERT [dbo].[ChatRoomUserTable] OFF
GO
SET IDENTITY_INSERT [dbo].[UsersTable] ON 

INSERT [dbo].[UsersTable] ([NameUser], [LoginUser], [PasswordUser], [PersonalNumberUser]) VALUES (N'MaRiXyAnA', N'Im', N'Im', 1)
INSERT [dbo].[UsersTable] ([NameUser], [LoginUser], [PasswordUser], [PersonalNumberUser]) VALUES (N'TEst', N'1200', N'500500', 2)
INSERT [dbo].[UsersTable] ([NameUser], [LoginUser], [PasswordUser], [PersonalNumberUser]) VALUES (N'MaRiXyAnA 2.0', N'Im2', N'Im2', 3)
SET IDENTITY_INSERT [dbo].[UsersTable] OFF
GO
ALTER TABLE [dbo].[ChatMessageTable]  WITH CHECK ADD  CONSTRAINT [FK_ChatMessageTable_ChatRoomTable] FOREIGN KEY([PNChatRoom])
REFERENCES [dbo].[ChatRoomTable] ([PersonalNumberChatRoom])
GO
ALTER TABLE [dbo].[ChatMessageTable] CHECK CONSTRAINT [FK_ChatMessageTable_ChatRoomTable]
GO
ALTER TABLE [dbo].[ChatMessageTable]  WITH CHECK ADD  CONSTRAINT [FK_ChatMessageTable_UsersTable] FOREIGN KEY([PNUsers])
REFERENCES [dbo].[UsersTable] ([PersonalNumberUser])
GO
ALTER TABLE [dbo].[ChatMessageTable] CHECK CONSTRAINT [FK_ChatMessageTable_UsersTable]
GO
ALTER TABLE [dbo].[ChatRoomUserTable]  WITH CHECK ADD  CONSTRAINT [FK_ChatRoomUserTable_ChatRoomTable] FOREIGN KEY([PNChatRoom])
REFERENCES [dbo].[ChatRoomTable] ([PersonalNumberChatRoom])
GO
ALTER TABLE [dbo].[ChatRoomUserTable] CHECK CONSTRAINT [FK_ChatRoomUserTable_ChatRoomTable]
GO
ALTER TABLE [dbo].[ChatRoomUserTable]  WITH CHECK ADD  CONSTRAINT [FK_ChatRoomUserTable_UsersTable] FOREIGN KEY([PNUser])
REFERENCES [dbo].[UsersTable] ([PersonalNumberUser])
GO
ALTER TABLE [dbo].[ChatRoomUserTable] CHECK CONSTRAINT [FK_ChatRoomUserTable_UsersTable]
GO
USE [master]
GO
ALTER DATABASE [ChatCollegeDataBase] SET  READ_WRITE 
GO
