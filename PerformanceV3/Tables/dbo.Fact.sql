CREATE TABLE [dbo].[Fact]
(
[key1] [int] NOT NULL,
[key2] [int] NOT NULL,
[key3] [int] NOT NULL,
[measure1] [int] NOT NULL,
[measure2] [int] NOT NULL,
[measure3] [int] NOT NULL,
[measure4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[filler] [binary] (100) NOT NULL CONSTRAINT [DF__Fact__filler__25869641] DEFAULT ((0x))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fact] ADD CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED  ([key1], [key2], [key3]) ON [PRIMARY]
GO
