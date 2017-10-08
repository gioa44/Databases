CREATE TABLE [dbo].[PriceHeader]
(
[PriceHeaderId] [int] NOT NULL,
[PriceName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PriceDescrip] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PriceHeader] ADD CONSTRAINT [PK_dbo.PriceHeader] PRIMARY KEY CLUSTERED  ([PriceHeaderId]) ON [PRIMARY]
GO
