CREATE TABLE [dbo].[Запчасти](
	[RepairPartId] [int] IDENTITY(1,1) NOT NULL,
	[RepairPartName] [nvarchar](50) NULL,
	[PartIdentifyer] [uniqueidentifier] NULL,
	[CarId] [int] NULL,
	[CountryId] [int] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Запчасти] PRIMARY KEY CLUSTERED 
(
	[RepairPartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [dbo].[Запчасти]  WITH CHECK ADD  CONSTRAINT [FK_Запчасти_Страны] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Страны] ([CountryId])
GO

ALTER TABLE [dbo].[Запчасти] CHECK CONSTRAINT [FK_Запчасти_Страны]
GO
ALTER TABLE [dbo].[Запчасти]  WITH CHECK ADD  CONSTRAINT [FK_Запчасти_Автомобили] FOREIGN KEY([CarId])
REFERENCES [dbo].[Автомобили] ([CarId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Запчасти] CHECK CONSTRAINT [FK_Запчасти_Автомобили]