CREATE TABLE [dbo].[Оборудование](
	[EquipmentId] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentName] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_Оборудование] PRIMARY KEY CLUSTERED 
(
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [dbo].[Оборудование]  WITH CHECK ADD  CONSTRAINT [FK_Оборудование_Отделы] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Отделы] ([DepartmentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Оборудование] CHECK CONSTRAINT [FK_Оборудование_Отделы]