CREATE TABLE [dbo].[Employees]
(
[empid] [int] NOT NULL,
[firstname] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[lastname] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED  ([empid]) ON [PRIMARY]
GO
