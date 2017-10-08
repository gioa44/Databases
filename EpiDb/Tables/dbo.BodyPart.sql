CREATE TABLE [dbo].[BodyPart]
(
[BodyPartId] [int] NOT NULL,
[BodyPartName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BodyPartDescrip] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Gender] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProcedureDurationInMinutes] [int] NOT NULL,
[MigrId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BodyPart] ADD CONSTRAINT [PK_dbo.BodyPart] PRIMARY KEY CLUSTERED  ([BodyPartId]) ON [PRIMARY]
GO
