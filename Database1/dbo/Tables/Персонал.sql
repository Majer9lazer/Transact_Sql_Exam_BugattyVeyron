CREATE TABLE [dbo].[Персонал](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[StaffName] [nvarchar](50) NULL,
	[StaffNumber] [nvarchar](50) NULL,
	[StaffSalary] [money] NULL,
	[StaffPositionId] [int] NULL,
	[EquipmentId] [int] NULL,
 CONSTRAINT [PK_Персонал] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [dbo].[Персонал]  WITH CHECK ADD  CONSTRAINT [FK_Персонал_Оборудование] FOREIGN KEY([EquipmentId])
REFERENCES [dbo].[Оборудование] ([EquipmentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Персонал] CHECK CONSTRAINT [FK_Персонал_Оборудование]
GO
ALTER TABLE [dbo].[Персонал]  WITH CHECK ADD  CONSTRAINT [FK_Персонал_Должности] FOREIGN KEY([StaffPositionId])
REFERENCES [dbo].[Должности] ([StaffPositionId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Персонал] CHECK CONSTRAINT [FK_Персонал_Должности]