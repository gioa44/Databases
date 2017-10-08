CREATE TABLE [dbo].[Orders2]
(
[orderid] [int] NOT NULL,
[custid] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[empid] [int] NOT NULL,
[shipperid] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[orderdate] [date] NOT NULL,
[filler] [char] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
