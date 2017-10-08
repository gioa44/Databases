CREATE TABLE [dbo].[Shippers]
(
[shipperid] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[shippername] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Shippers] ADD CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED  ([shipperid]) ON [PRIMARY]
GO
