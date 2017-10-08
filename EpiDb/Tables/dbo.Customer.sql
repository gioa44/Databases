CREATE TABLE [dbo].[Customer]
(
[CustomerId] [int] NOT NULL IDENTITY(1, 1),
[MobileNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Gender] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Note] [nvarchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PriceHeaderId] [int] NOT NULL,
[PriceExpiryDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_dbo.Customer] PRIMARY KEY CLUSTERED  ([CustomerId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PriceHeaderId] ON [dbo].[Customer] ([PriceHeaderId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_dbo.Customer_dbo.PriceHeader_PriceHeaderId] FOREIGN KEY ([PriceHeaderId]) REFERENCES [dbo].[PriceHeader] ([PriceHeaderId])
GO
