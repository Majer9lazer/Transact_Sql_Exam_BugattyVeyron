CREATE TABLE [dbo].[Должности](
	[StaffPositionId] [int] IDENTITY(1,1) NOT NULL,
	[StaffPositionName] [nvarchar](50) NULL,
	[BonusForPosition] [int] NULL,
 CONSTRAINT [PK_Должности] PRIMARY KEY CLUSTERED 
(
	[StaffPositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

