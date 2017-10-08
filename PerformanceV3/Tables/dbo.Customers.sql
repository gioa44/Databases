CREATE TABLE [dbo].[Customers]
(
[custid] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[custname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED  ([custid]) ON [PRIMARY]
GO
