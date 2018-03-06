﻿CREATE TABLE [dbo].[Шины](
	[TireId] [int] IDENTITY(1,1) NOT NULL,
	[TireTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Шины] PRIMARY KEY CLUSTERED 
(
	[TireId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

