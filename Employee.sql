USE [Employee]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/2/2021 3:48:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] NOT NULL,
	[Name] [text] NOT NULL,
	[Surname] [text] NOT NULL,
	[HomeAddress] [text] NOT NULL,
	[JobResponsibilites] [text] NOT NULL,
	[Active] [bit] NOT NULL,
	[BirthDate] [date] NOT NULL,
 CONSTRAINT [PK_EmployeeInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (1, N'Domas', N'Dalekas', N'Ukmerge', N'Praktikantas', 1, N'1997-09-09')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (5, N'Vardenis', N'Pavardenis', N'Vilnius', N'Programuotojas', 1, N'1995-09-11')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (4944, N'Jonas', N'Petraitis', N'Palanga', N'Darbu vadovas', 0, N'1995-01-01')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (7432, N'Haroldas', N'Cverkas', N'Siauliai', N'Advokatas', 1, N'1995-01-01')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (13175, N'Marius', N'Jonaitis', N'Marijampole', N'Duomenu baziu specialistas', 0, N'1995-01-01')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (15255, N'e', N'e', N'e', N'e', 1, N'1997-04-28')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (29135, N'Benas', N'Turkas', N'Pajuris', N'Programuotojas', 0, N'1995-01-01')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (36808, N'Jonas', N'Petraitis', N'Kaunas', N'Vyriausias programuotojas, Projektu vadovas', 1, N'1992-08-15')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (91000, N'Andrius', N'Menaitis', N'Utena', N'Inzinierius', 0, N'1995-01-01')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (97561, N'Romas', N'Rimaitis', N'Gedimino pr, Vilnius', N'Projektu vadovas', 0, N'1995-01-01')
INSERT INTO [dbo].[Employee] ([ID], [Name], [Surname], [HomeAddress], [JobResponsibilites], [Active], [BirthDate]) VALUES (99882, N'Laimutis', N'Berzas', N'Klaipeda', N'Vyr.Programuotojas', 0, N'1995-01-01')
