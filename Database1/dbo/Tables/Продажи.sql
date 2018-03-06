CREATE TABLE [dbo].[Продажи](
	[SaleId] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NULL,
	[CorporationId] [int] NULL,
	[ByerId] [int] NULL,
	[StaffId] [int] NULL,
	[DateOfSelling] [date] NULL,
	[Price] [money] NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_Продажи] PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [dbo].[Продажи]  WITH CHECK ADD  CONSTRAINT [FK_Продажи_Страны] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Страны] ([CountryId])
GO

ALTER TABLE [dbo].[Продажи] CHECK CONSTRAINT [FK_Продажи_Страны]
GO
ALTER TABLE [dbo].[Продажи]  WITH CHECK ADD  CONSTRAINT [FK_Продажи_Покупатели] FOREIGN KEY([ByerId])
REFERENCES [dbo].[Покупатели] ([BuyerId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Продажи] CHECK CONSTRAINT [FK_Продажи_Покупатели]
GO
ALTER TABLE [dbo].[Продажи]  WITH CHECK ADD  CONSTRAINT [FK_Продажи_Персонал] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Персонал] ([StaffId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Продажи] CHECK CONSTRAINT [FK_Продажи_Персонал]
GO
ALTER TABLE [dbo].[Продажи]  WITH CHECK ADD  CONSTRAINT [FK_Продажи_Корпорации] FOREIGN KEY([CorporationId])
REFERENCES [dbo].[Корпорации] ([CorporationId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Продажи] CHECK CONSTRAINT [FK_Продажи_Корпорации]
GO
ALTER TABLE [dbo].[Продажи]  WITH CHECK ADD  CONSTRAINT [FK_Продажи_Автомобили] FOREIGN KEY([CarId])
REFERENCES [dbo].[Автомобили] ([CarId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Продажи] CHECK CONSTRAINT [FK_Продажи_Автомобили]