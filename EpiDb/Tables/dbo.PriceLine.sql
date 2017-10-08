CREATE TABLE [dbo].[PriceLine]
(
[PriceHeaderId] [int] NOT NULL,
[BodyPartId] [int] NOT NULL,
[Price] [decimal] (18, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PriceLine] ADD CONSTRAINT [PK_dbo.PriceLine] PRIMARY KEY CLUSTERED  ([PriceHeaderId], [BodyPartId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_BodyPartId] ON [dbo].[PriceLine] ([BodyPartId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PriceHeaderId] ON [dbo].[PriceLine] ([PriceHeaderId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PriceLine] ADD CONSTRAINT [FK_dbo.PriceLine_dbo.BodyPart_BodyPartId] FOREIGN KEY ([BodyPartId]) REFERENCES [dbo].[BodyPart] ([BodyPartId])
GO
ALTER TABLE [dbo].[PriceLine] ADD CONSTRAINT [FK_dbo.PriceLine_dbo.PriceHeader_PriceHeaderId] FOREIGN KEY ([PriceHeaderId]) REFERENCES [dbo].[PriceHeader] ([PriceHeaderId])
GO
