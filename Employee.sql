USE [Employee]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 3/2/2021 3:33:12 PM ******/
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

