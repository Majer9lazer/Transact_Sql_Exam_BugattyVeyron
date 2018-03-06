CREATE TABLE [dbo].[Сервис](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NULL,
	[StaffId] [int] NULL,
	[ServiceName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Сервис] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [dbo].[Сервис]  WITH CHECK ADD  CONSTRAINT [FK_Сервис_Персонал] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Персонал] ([StaffId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Сервис] CHECK CONSTRAINT [FK_Сервис_Персонал]
GO
ALTER TABLE [dbo].[Сервис]  WITH CHECK ADD  CONSTRAINT [FK_Сервис_Автомобили] FOREIGN KEY([CarId])
REFERENCES [dbo].[Автомобили] ([CarId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Сервис] CHECK CONSTRAINT [FK_Сервис_Автомобили]