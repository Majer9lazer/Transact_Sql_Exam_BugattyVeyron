CREATE TABLE [dbo].[Покупатели](
	[BuyerId] [int] IDENTITY(1,1) NOT NULL,
	[BuyerName] [nvarchar](50) NULL,
	[BuyerLastName] [nvarchar](50) NULL,
	[BuyerPassport] [nvarchar](50) NULL,
	[BuyerAddress] [nvarchar](50) NULL,
 CONSTRAINT [PK_Покупатели] PRIMARY KEY CLUSTERED 
(
	[BuyerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

