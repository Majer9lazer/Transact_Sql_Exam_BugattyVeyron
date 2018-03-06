CREATE TABLE [dbo].[Промежуточная таблица Запчастей и Материалов](
	[TableBetweenid] [int] IDENTITY(1,1) NOT NULL,
	[MaterialId] [int] NULL,
	[RepairPartId] [int] NULL,
 CONSTRAINT [PK_Промежуточная таблица Запчастей и Материалов] PRIMARY KEY CLUSTERED 
(
	[TableBetweenid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [dbo].[Промежуточная таблица Запчастей и Материалов]  WITH CHECK ADD  CONSTRAINT [FK_Промежуточная таблица Запчастей и Материалов_Состав Материала] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Состав Материала] ([MaterialId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Промежуточная таблица Запчастей и Материалов] CHECK CONSTRAINT [FK_Промежуточная таблица Запчастей и Материалов_Состав Материала]
GO
ALTER TABLE [dbo].[Промежуточная таблица Запчастей и Материалов]  WITH CHECK ADD  CONSTRAINT [FK_Промежуточная таблица Запчастей и Материалов_Запчасти] FOREIGN KEY([RepairPartId])
REFERENCES [dbo].[Запчасти] ([RepairPartId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Промежуточная таблица Запчастей и Материалов] CHECK CONSTRAINT [FK_Промежуточная таблица Запчастей и Материалов_Запчасти]