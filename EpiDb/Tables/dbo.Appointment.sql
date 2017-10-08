CREATE TABLE [dbo].[Appointment]
(
[AppointmentId] [int] NOT NULL IDENTITY(1, 1),
[Date] [datetime] NOT NULL,
[CustomerId] [int] NOT NULL,
[CustomerNeverCame] [bit] NULL,
[InAdvance] [bit] NOT NULL,
[UserId] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL,
[IntendPrice] [decimal] (18, 2) NOT NULL,
[ActualPrice] [decimal] (18, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointment] ADD CONSTRAINT [PK_dbo.Appointment] PRIMARY KEY CLUSTERED  ([AppointmentId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Appointment] ([CustomerId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointment] ADD CONSTRAINT [FK_dbo.Appointment_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId])
GO
