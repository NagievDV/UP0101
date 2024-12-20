USE [master]
GO
/****** Object:  Database [TechnoService]    Script Date: 19.12.2024 14:37:11 ******/
CREATE DATABASE [TechnoService]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechnoService', FILENAME = N'E:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TechnoService.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechnoService_log', FILENAME = N'E:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TechnoService_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TechnoService] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechnoService].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechnoService] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechnoService] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechnoService] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechnoService] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechnoService] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechnoService] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechnoService] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechnoService] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechnoService] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechnoService] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechnoService] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechnoService] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechnoService] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechnoService] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechnoService] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TechnoService] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechnoService] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechnoService] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechnoService] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechnoService] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechnoService] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TechnoService] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechnoService] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TechnoService] SET  MULTI_USER 
GO
ALTER DATABASE [TechnoService] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechnoService] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechnoService] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechnoService] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TechnoService] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TechnoService] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TechnoService] SET QUERY_STORE = ON
GO
ALTER DATABASE [TechnoService] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TechnoService]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[client_id] [int] IDENTITY(1,1) NOT NULL,
	[client_name] [varchar](50) NULL,
	[client_surname] [varchar](50) NULL,
	[client_secondName] [varchar](50) NULL,
	[contact_info] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[equipment_id] [int] IDENTITY(1,1) NOT NULL,
	[serial_number] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[equipment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaultType]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaultType](
	[fault_type_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[fault_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[position_id] [int] IDENTITY(1,1) NOT NULL,
	[position_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[priority_id] [int] IDENTITY(1,1) NOT NULL,
	[priority_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[priority_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NULL,
	[date_ended] [datetime] NULL,
	[equipment_id] [int] NULL,
	[fault_type_id] [int] NULL,
	[problem_description] [varchar](255) NULL,
	[client_id] [int] NULL,
	[technician_id] [int] NULL,
	[status_id] [int] NULL,
	[priority_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestLog]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestLog](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NULL,
	[date_changed] [datetime] NULL,
	[comment] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[status_id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technician]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technician](
	[technician_id] [int] IDENTITY(1,1) NOT NULL,
	[technician_surname] [varchar](50) NULL,
	[technician_name] [varchar](50) NULL,
	[technician_secondName] [varchar](50) NULL,
	[position_id] [int] NULL,
	[contact_info] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[technician_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19.12.2024 14:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[TechnicianID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (1, N'Иван', N'Галькин', N'Антонович', N'ivan@mail.ru')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (2, N'Владимир', N'Кашин', N'Михайлович', N'vovak@example.com')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (3, N'Вячеслав', N'Медведев', N'Сергеевич', N'vyach@gmail.com')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (4, N'Светлана', N'Бибирева', N'Николаевна', N'svetochka@yandex.ru')
INSERT [dbo].[Client] ([client_id], [client_name], [client_surname], [client_secondName], [contact_info]) VALUES (5, N'Андрей', N'Фролов', N'Павлович', N'andrew@yahoo.com')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (1, N'SN001', N'Принтер', N'Офисный принтер DELL 1324')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (2, N'SN002', N'Ноутбук', N'Dell Latitude 5500')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (3, N'SN003', N'Роутер', N'Cisco Router X500')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (4, N'SN004', N'Монитор', N'HP 24-inch LED')
INSERT [dbo].[Equipment] ([equipment_id], [serial_number], [type], [description]) VALUES (5, N'SN005', N'Сервер', N'IBM X-Series Server')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[FaultType] ON 

INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (1, N'Проблема с питанием')
INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (2, N'Сетевая неполадка')
INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (3, N'Физическая поломка')
INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (4, N'Программная ошибка')
INSERT [dbo].[FaultType] ([fault_type_id], [description]) VALUES (5, N'Неизвестная ошибка')
SET IDENTITY_INSERT [dbo].[FaultType] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (1, N'Техник')
INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (2, N'Главный техник')
INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (3, N'Инженер')
INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (4, N'Менеджер')
INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (5, N'Стажер')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Priority] ON 

INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (1, N'Низкий')
INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (2, N'Средний')
INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (3, N'Высокий')
INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (4, N'Критический')
INSERT [dbo].[Priority] ([priority_id], [priority_name]) VALUES (5, N'Срочный')
SET IDENTITY_INSERT [dbo].[Priority] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (1, CAST(N'2024-01-12T10:00:00.000' AS DateTime), CAST(N'2024-02-12T15:00:00.000' AS DateTime), 1, 1, N'Не работает принтер', 1, 1, 1, 3)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (2, CAST(N'2024-03-12T11:00:00.000' AS DateTime), CAST(N'2024-04-12T14:00:00.000' AS DateTime), 2, 2, N'Перегревается ноутбук', 2, 2, 2, 2)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (3, CAST(N'2024-05-12T12:00:00.000' AS DateTime), NULL, 3, 3, N'Роутер не подключается к сети', 3, 3, 3, 4)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (4, CAST(N'2024-06-12T13:00:00.000' AS DateTime), CAST(N'2024-07-12T16:00:00.000' AS DateTime), 4, 4, N'Мерцает экран монитора', 4, 4, 4, 1)
INSERT [dbo].[Request] ([request_id], [date_created], [date_ended], [equipment_id], [fault_type_id], [problem_description], [client_id], [technician_id], [status_id], [priority_id]) VALUES (5, CAST(N'2024-08-12T14:00:00.000' AS DateTime), NULL, 5, 5, N'Сервер не запускается', 5, 5, 5, 5)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[RequestLog] ON 

INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (1, 1, CAST(N'2024-01-12T12:00:00.000' AS DateTime), N'Принято в обработку')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (2, 2, CAST(N'2024-03-12T13:00:00.000' AS DateTime), N'Детали заказаны')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (3, 3, CAST(N'2024-05-12T14:00:00.000' AS DateTime), N'Ожидается подтверждение от клиента')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (4, 4, CAST(N'2024-06-12T15:00:00.000' AS DateTime), N'Проблема решена')
INSERT [dbo].[RequestLog] ([log_id], [request_id], [date_changed], [comment]) VALUES (5, 5, CAST(N'2024-08-12T16:00:00.000' AS DateTime), N'Техник прикреплен')
SET IDENTITY_INSERT [dbo].[RequestLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (1, N'Открыть')
INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (2, N'В процессе')
INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (3, N'Решено')
INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (4, N'Закрыто')
INSERT [dbo].[Status] ([status_id], [status_name]) VALUES (5, N'Заморожено')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Technician] ON 

INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (1, N'Иванов', N'Алексей', N'Петрович', 1, N'ivanov.alexey@example.com')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (2, N'Петрова', N'Мария', N'Сергеевна', 2, N'petrova.maria@example.com')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (3, N'Смирнов', N'Дмитрий', N'Владимирович', 3, N'smirnov.dmitry@example.com')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (4, N'Кузнецова', N'Елена', N'Игоревна', 4, N'kuznetsova.elena@example.com')
INSERT [dbo].[Technician] ([technician_id], [technician_surname], [technician_name], [technician_secondName], [position_id], [contact_info]) VALUES (5, N'Лебедев', N'Сергей', N'Анатольевич', 5, N'lebedev.sergey@example.com')
SET IDENTITY_INSERT [dbo].[Technician] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (1, N'user1', N'wlejikghfo24', 1)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (2, N'user2', N'gg48gh', 2)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (3, N'user3', N'pass123123', 3)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (4, N'user4', N'12222534', 4)
INSERT [dbo].[Users] ([userID], [Login], [Password], [TechnicianID]) VALUES (5, N'user5', N'admin999', 5)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([client_id])
REFERENCES [dbo].[Client] ([client_id])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([equipment_id])
REFERENCES [dbo].[Equipment] ([equipment_id])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([fault_type_id])
REFERENCES [dbo].[FaultType] ([fault_type_id])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([priority_id])
REFERENCES [dbo].[Priority] ([priority_id])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([status_id])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([technician_id])
REFERENCES [dbo].[Technician] ([technician_id])
GO
ALTER TABLE [dbo].[RequestLog]  WITH CHECK ADD FOREIGN KEY([request_id])
REFERENCES [dbo].[Request] ([request_id])
GO
ALTER TABLE [dbo].[Technician]  WITH CHECK ADD FOREIGN KEY([position_id])
REFERENCES [dbo].[Position] ([position_id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([TechnicianID])
REFERENCES [dbo].[Technician] ([technician_id])
GO
USE [master]
GO
ALTER DATABASE [TechnoService] SET  READ_WRITE 
GO
