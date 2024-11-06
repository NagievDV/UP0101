USE [master]
GO
/****** Object:  Database [ServiceRequests]    Script Date: 06.11.2024 14:31:39 ******/
CREATE DATABASE [ServiceRequests]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ServiceRequests', FILENAME = N'E:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ServiceRequests.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ServiceRequests_log', FILENAME = N'E:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ServiceRequests_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ServiceRequests] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ServiceRequests].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ServiceRequests] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ServiceRequests] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ServiceRequests] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ServiceRequests] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ServiceRequests] SET ARITHABORT OFF 
GO
ALTER DATABASE [ServiceRequests] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ServiceRequests] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ServiceRequests] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ServiceRequests] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ServiceRequests] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ServiceRequests] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ServiceRequests] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ServiceRequests] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ServiceRequests] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ServiceRequests] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ServiceRequests] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ServiceRequests] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ServiceRequests] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ServiceRequests] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ServiceRequests] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ServiceRequests] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ServiceRequests] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ServiceRequests] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ServiceRequests] SET  MULTI_USER 
GO
ALTER DATABASE [ServiceRequests] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ServiceRequests] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ServiceRequests] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ServiceRequests] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ServiceRequests] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ServiceRequests] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ServiceRequests] SET QUERY_STORE = ON
GO
ALTER DATABASE [ServiceRequests] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ServiceRequests]
GO
/****** Object:  Table [dbo].[client]    Script Date: 06.11.2024 14:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[phone_number] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[note] [nvarchar](300) NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 06.11.2024 14:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[middle_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[position_id] [int] NOT NULL,
	[email] [nvarchar](50) NULL,
	[phone_number] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_position]    Script Date: 06.11.2024 14:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_position](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[position] [nvarchar](100) NOT NULL,
	[base_salary] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_employee_position] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[malfunction_type]    Script Date: 06.11.2024 14:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[malfunction_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_malfunction_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report]    Script Date: 06.11.2024 14:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NOT NULL,
	[execution_time] [int] NULL,
	[used_resources] [nvarchar](500) NULL,
	[cause_of_malfunction] [nvarchar](500) NOT NULL,
	[comment] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[request]    Script Date: 06.11.2024 14:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[creation_date] [date] NOT NULL,
	[hardware] [nvarchar](500) NOT NULL,
	[malfunction_type_id] [int] NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[client_id] [int] NOT NULL,
	[status_id] [int] NULL,
	[employee_id] [int] NULL,
 CONSTRAINT [PK_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[request_status]    Script Date: 06.11.2024 14:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[request_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_request_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[client] ON 

INSERT [dbo].[client] ([id], [name], [phone_number], [email], [note]) VALUES (1, N'ООО ТехПром', N'+7-901-234-5678', N'info@tehprom.ru', N'Постоянный клиент')
INSERT [dbo].[client] ([id], [name], [phone_number], [email], [note]) VALUES (2, N'ЗАО ЭлектроМаш', N'+7-902-345-6789', N'contact@electromash.ru', N'Стратегический партнер')
INSERT [dbo].[client] ([id], [name], [phone_number], [email], [note]) VALUES (3, N'ОАО СпецТехСервис', N'+7-903-456-7890', N'service@spectechserv.ru', N'В последнюю очередь')
INSERT [dbo].[client] ([id], [name], [phone_number], [email], [note]) VALUES (4, N'ИП СтройИнжСервис', N'+7-904-567-8901', N'support@stroyinjserv.ru', N'Самые сложные заявки')
INSERT [dbo].[client] ([id], [name], [phone_number], [email], [note]) VALUES (5, N'ООО АгроМаш', N'+7-905-678-9012', N'office@agromash.ru', N'Много платят')
INSERT [dbo].[client] ([id], [name], [phone_number], [email], [note]) VALUES (6, N'ЗАО ИндустрияЭнерго', N'+7-906-789-0123', N'info@indenergia.ru', N'Вкусные пирожки в столовой')
SET IDENTITY_INSERT [dbo].[client] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([id], [first_name], [middle_name], [last_name], [position_id], [email], [phone_number]) VALUES (1, N'Алексей', N'Иванович', N'Петров', 1, N'alexey.petrov@example.com', N'+7-912-345-6789')
INSERT [dbo].[employee] ([id], [first_name], [middle_name], [last_name], [position_id], [email], [phone_number]) VALUES (2, N'Мария', N'Сергеевна', N'Сидорова', 2, N'maria.sidorova@example.com', N'+7-923-456-7890')
INSERT [dbo].[employee] ([id], [first_name], [middle_name], [last_name], [position_id], [email], [phone_number]) VALUES (3, N'Иван', N'Алексеевич', N'Кузнецов', 3, N'ivan.kuznetsov@example.com', N'+7-934-567-8901')
INSERT [dbo].[employee] ([id], [first_name], [middle_name], [last_name], [position_id], [email], [phone_number]) VALUES (4, N'Екатерина', N'Николаевна', N'Смирнова', 4, N'ekaterina.smirnova@example.com', N'+7-945-678-9012')
INSERT [dbo].[employee] ([id], [first_name], [middle_name], [last_name], [position_id], [email], [phone_number]) VALUES (5, N'Дмитрий', N'Петрович', N'Волков', 5, N'dmitry.volkov@example.com', N'+7-956-789-0123')
INSERT [dbo].[employee] ([id], [first_name], [middle_name], [last_name], [position_id], [email], [phone_number]) VALUES (6, N'Ольга', N'Васильевна', N'Морозова', 6, N'olga.morozova@example.com', N'+7-967-890-1234')
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[employee_position] ON 

INSERT [dbo].[employee_position] ([id], [position], [base_salary]) VALUES (1, N'Механик', CAST(50000.00 AS Decimal(10, 2)))
INSERT [dbo].[employee_position] ([id], [position], [base_salary]) VALUES (2, N'Инженер', CAST(60000.00 AS Decimal(10, 2)))
INSERT [dbo].[employee_position] ([id], [position], [base_salary]) VALUES (3, N'Программист', CAST(75000.00 AS Decimal(10, 2)))
INSERT [dbo].[employee_position] ([id], [position], [base_salary]) VALUES (4, N'Эникейщик', CAST(48000.00 AS Decimal(10, 2)))
INSERT [dbo].[employee_position] ([id], [position], [base_salary]) VALUES (5, N'Гл. Специалист', CAST(100000.00 AS Decimal(10, 2)))
INSERT [dbo].[employee_position] ([id], [position], [base_salary]) VALUES (6, N'Сервисный мастер', CAST(52000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[employee_position] OFF
GO
SET IDENTITY_INSERT [dbo].[malfunction_type] ON 

INSERT [dbo].[malfunction_type] ([id], [type]) VALUES (1, N'Техническое обслуживание')
INSERT [dbo].[malfunction_type] ([id], [type]) VALUES (2, N'Проблема с электропитанием')
INSERT [dbo].[malfunction_type] ([id], [type]) VALUES (3, N'Механическое повреждение')
INSERT [dbo].[malfunction_type] ([id], [type]) VALUES (4, N'Сбой ПО')
INSERT [dbo].[malfunction_type] ([id], [type]) VALUES (5, N'Перегрев')
INSERT [dbo].[malfunction_type] ([id], [type]) VALUES (6, N'Неисправность датчика')
INSERT [dbo].[malfunction_type] ([id], [type]) VALUES (7, N'Технический износ')
SET IDENTITY_INSERT [dbo].[malfunction_type] OFF
GO
SET IDENTITY_INSERT [dbo].[report] ON 

INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (1, 1, 120, N'Замена охлаждающей жидкости', N'Перегрев из-за засорения системы', N'Система очищена, проверена')
INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (2, 2, 90, N'Замена реле и кабелей', N'Износ деталей и окисление контактов', N'Все неисправности устранены')
INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (3, 3, 150, N'Промывка насосной системы, замена уплотнителя', N'Протечка из-за старого уплотнения', N'Заменены прокладки, проведена профилактика')
INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (4, 4, 180, N'Фильтрация системы и регулировка давления', N'Низкое давление из-за засорения фильтров', N'Проверена герметичность, проблема решена')
INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (5, 5, 110, N'Смена сварочной проволоки и замена блока питания', N'Перепады напряжения', N'Установлен стабилизатор, заменены детали')
INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (6, 6, 75, N'Чистка системы охлаждения', N'Нарушение теплопередачи', N'Система полностью очищена и протестирована')
INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (7, 7, 130, N'Замена реле защиты', N'Неисправность из-за износа реле', N'Проблемное реле заменено, протестировано')
INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (8, 8, 95, N'Замена прокладки корпуса', N'Протечка из-за трещины', N'Герметизировано, протестировано под давлением')
INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (9, 9, 145, N'Ремонт редуктора и замена шестерен', N'Износ шестерней', N'Редуктор отремонтирован, проверено на всех режимах')
INSERT [dbo].[report] ([id], [request_id], [execution_time], [used_resources], [cause_of_malfunction], [comment]) VALUES (10, 10, 160, N'Замена фильтров и вентиляторов', N'Засорение фильтров и перегрев', N'Оборудование полностью очищено и протестировано')
SET IDENTITY_INSERT [dbo].[report] OFF
GO
SET IDENTITY_INSERT [dbo].[request] ON 

INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (1, CAST(N'2024-11-01' AS Date), N'Промышленный станок', 2, N'Неисправность в системе охлаждения', 1, 3, 5)
INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (2, CAST(N'2024-10-25' AS Date), N'Электрогенератор', 1, N'Поломка в системе автоматического запуска', 2, 2, 4)
INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (3, CAST(N'2024-09-30' AS Date), N'Гидравлический пресс', 3, N'Утечка масла в насосной системе', 3, 1, 2)
INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (4, CAST(N'2024-11-04' AS Date), N'Компрессор высокого давления', 4, N'Низкое давление на выходе', 4, 5, 6)
INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (5, CAST(N'2024-10-15' AS Date), N'Сварочный аппарат', 5, N'Неисправность в подаче сварочной проволоки', 5, 6, 1)
INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (6, CAST(N'2024-10-10' AS Date), N'Токарный станок', 2, N'Не работает система охлаждения', 6, 3, 2)
INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (7, CAST(N'2024-09-20' AS Date), N'Электрический двигатель', 6, N'Сбой в работе реле защиты', 2, 1, 4)
INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (8, CAST(N'2024-08-30' AS Date), N'Насос для воды', 4, N'Утечка воды из корпуса', 3, 2, 6)
INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (9, CAST(N'2024-10-05' AS Date), N'Промышленный миксер', 5, N'Неисправность редуктора', 4, 3, 3)
INSERT [dbo].[request] ([id], [creation_date], [hardware], [malfunction_type_id], [description], [client_id], [status_id], [employee_id]) VALUES (10, CAST(N'2024-09-15' AS Date), N'Вентиляционная система', 1, N'Нарушена циркуляция воздуха', 1, 6, 5)
SET IDENTITY_INSERT [dbo].[request] OFF
GO
SET IDENTITY_INSERT [dbo].[request_status] ON 

INSERT [dbo].[request_status] ([id], [status]) VALUES (1, N'Создан')
INSERT [dbo].[request_status] ([id], [status]) VALUES (2, N'Обрабатывается')
INSERT [dbo].[request_status] ([id], [status]) VALUES (3, N'Принят')
INSERT [dbo].[request_status] ([id], [status]) VALUES (4, N'Отклонен')
INSERT [dbo].[request_status] ([id], [status]) VALUES (5, N'Выполняется')
INSERT [dbo].[request_status] ([id], [status]) VALUES (6, N'Завершен')
SET IDENTITY_INSERT [dbo].[request_status] OFF
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_employee_position] FOREIGN KEY([position_id])
REFERENCES [dbo].[employee_position] ([id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_employee_position]
GO
ALTER TABLE [dbo].[report]  WITH CHECK ADD  CONSTRAINT [FK_report_request] FOREIGN KEY([request_id])
REFERENCES [dbo].[request] ([id])
GO
ALTER TABLE [dbo].[report] CHECK CONSTRAINT [FK_report_request]
GO
ALTER TABLE [dbo].[request]  WITH CHECK ADD  CONSTRAINT [FK_request_client] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[request] CHECK CONSTRAINT [FK_request_client]
GO
ALTER TABLE [dbo].[request]  WITH CHECK ADD  CONSTRAINT [FK_request_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[request] CHECK CONSTRAINT [FK_request_employee]
GO
ALTER TABLE [dbo].[request]  WITH CHECK ADD  CONSTRAINT [FK_request_malfunction_type] FOREIGN KEY([malfunction_type_id])
REFERENCES [dbo].[malfunction_type] ([id])
GO
ALTER TABLE [dbo].[request] CHECK CONSTRAINT [FK_request_malfunction_type]
GO
ALTER TABLE [dbo].[request]  WITH CHECK ADD  CONSTRAINT [FK_request_request_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[request_status] ([id])
GO
ALTER TABLE [dbo].[request] CHECK CONSTRAINT [FK_request_request_status]
GO
USE [master]
GO
ALTER DATABASE [ServiceRequests] SET  READ_WRITE 
GO
