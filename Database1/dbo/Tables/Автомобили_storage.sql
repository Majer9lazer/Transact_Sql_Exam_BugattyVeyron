CREATE TABLE [dbo].[Автомобили_storage](
	[CarStorageId] [int] IDENTITY(0,1) NOT NULL,
	[CarStorageName] [varchar](20) NOT NULL,
	[CarId] [int] NOT NULL,
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
	[CorporationId] [int] NULL
) ON [PRIMARY]

