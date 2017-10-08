CREATE TABLE [dbo].[Orders]
(
[orderid] [int] NOT NULL,
[custid] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[empid] [int] NOT NULL,
[shipperid] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[orderdate] [date] NOT NULL,
[filler] [char] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Orders__filler__164452B1] DEFAULT ('a')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK_Orders] PRIMARY KEY NONCLUSTERED  ([orderid]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [idx_cl_od] ON [dbo].[Orders] ([orderdate]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_unc_od_oid_i_cid_eid] ON [dbo].[Orders] ([orderdate], [orderid]) INCLUDE ([custid], [empid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_sid_od_cid] ON [dbo].[Orders] ([shipperid], [orderdate], [custid]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([custid]) REFERENCES [dbo].[Customers] ([custid])
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Employees] FOREIGN KEY ([empid]) REFERENCES [dbo].[Employees] ([empid])
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY ([shipperid]) REFERENCES [dbo].[Shippers] ([shipperid])
GO
