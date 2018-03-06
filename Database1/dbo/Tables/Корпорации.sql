CREATE TABLE [dbo].[Корпорации](
	[CorporationId] [int] IDENTITY(1,1) NOT NULL,
	[CorporationName] [nvarchar](50) NULL,
	[CountryId] [int] NOT NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Корпорации] PRIMARY KEY CLUSTERED 
(
	[CorporationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [dbo].[Корпорации]  WITH CHECK ADD  CONSTRAINT [FK_Корпорации_Страны] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Страны] ([CountryId])
GO

ALTER TABLE [dbo].[Корпорации] CHECK CONSTRAINT [FK_Корпорации_Страны]