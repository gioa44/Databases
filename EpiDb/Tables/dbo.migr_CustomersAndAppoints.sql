CREATE TABLE [dbo].[migr_CustomersAndAppoints]
(
[dt] [datetime] NULL,
[fullName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tel] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[bodyPartMigrIds] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[priceDecoupled] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[impulsesDecoupled] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Note] [nvarchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
