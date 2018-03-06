CREATE TABLE [dbo].[Автомобили](
	[CarId] [int] IDENTITY(1,1) NOT NULL,
	[CarName] [varchar](50) NULL,
	[ColorId] [int] NULL,
	[CarNumOfBody] [uniqueidentifier] NULL,
	[CarHorsePower] [int] NULL,
	[CarEngineSize] [tinyint] NULL,
	[CarNumberOfСylinders] [tinyint] NULL,
	[TypeOfTiresId] [int] NULL,
	[CarLentgh] [int] NULL,
	[CarWidth] [int] NULL,
	[CarDateOfRelease] [date] NULL,
	[CarChargeOfFuel] [tinyint] NULL,
	[CarFuelCharacteristics] [nvarchar](50) NULL,
	[CountryId] [int] NULL,
	[CorporationId] [int] NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
CREATE trigger [dbo].[CarInsertTrigger]
on [dbo].[Автомобили]
for insert
as
BEGIN
SET IMPLICIT_TRANSACTIONS off
insert into Автомобили_storage
select 'AddCar',* from inserted
END
GO

ALTER TABLE [dbo].[Автомобили] ENABLE TRIGGER [CarInsertTrigger]
GO
create trigger [dbo].[CarDeleteTrigger]
on [dbo].[Автомобили]
for delete
as
BEGIN
SET IMPLICIT_TRANSACTIONS off
insert into Автомобили_storage
select 'DeleteCar',* from deleted
END
GO

ALTER TABLE [dbo].[Автомобили] ENABLE TRIGGER [CarDeleteTrigger]
GO
ALTER TABLE [dbo].[Автомобили]  WITH CHECK ADD  CONSTRAINT [FK_Автомобили_Шины] FOREIGN KEY([TypeOfTiresId])
REFERENCES [dbo].[Шины] ([TireId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Автомобили] CHECK CONSTRAINT [FK_Автомобили_Шины]
GO
ALTER TABLE [dbo].[Автомобили]  WITH CHECK ADD  CONSTRAINT [FK_Автомобили_Цвета] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Цвета] ([ColorId])
GO

ALTER TABLE [dbo].[Автомобили] CHECK CONSTRAINT [FK_Автомобили_Цвета]
GO
ALTER TABLE [dbo].[Автомобили]  WITH CHECK ADD  CONSTRAINT [FK_Автомобили_Страны] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Страны] ([CountryId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Автомобили] CHECK CONSTRAINT [FK_Автомобили_Страны]
GO
ALTER TABLE [dbo].[Автомобили]  WITH CHECK ADD  CONSTRAINT [FK_Автомобили_Корпорации] FOREIGN KEY([CorporationId])
REFERENCES [dbo].[Корпорации] ([CorporationId])
GO

ALTER TABLE [dbo].[Автомобили] CHECK CONSTRAINT [FK_Автомобили_Корпорации]