CREATE TABLE [dbo].[Dim1]
(
[key1] [int] NOT NULL,
[attr1] [int] NOT NULL,
[filler] [binary] (100) NOT NULL CONSTRAINT [DF__Dim1__filler__1CF15040] DEFAULT ((0x))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dim1] ADD CONSTRAINT [PK_Dim1] PRIMARY KEY CLUSTERED  ([key1]) ON [PRIMARY]
GO
