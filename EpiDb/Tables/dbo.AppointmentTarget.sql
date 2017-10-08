CREATE TABLE [dbo].[AppointmentTarget]
(
[AppointmentId] [int] NOT NULL,
[BodyPartId] [int] NOT NULL,
[ImpulsesUsed] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppointmentTarget] ADD CONSTRAINT [PK_dbo.AppointmentTarget] PRIMARY KEY CLUSTERED  ([AppointmentId], [BodyPartId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AppointmentId] ON [dbo].[AppointmentTarget] ([AppointmentId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_BodyPartId] ON [dbo].[AppointmentTarget] ([BodyPartId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppointmentTarget] ADD CONSTRAINT [FK_dbo.AppointmentTarget_dbo.Appointment_AppointmentId] FOREIGN KEY ([AppointmentId]) REFERENCES [dbo].[Appointment] ([AppointmentId])
GO
ALTER TABLE [dbo].[AppointmentTarget] ADD CONSTRAINT [FK_dbo.AppointmentTarget_dbo.BodyPart_BodyPartId] FOREIGN KEY ([BodyPartId]) REFERENCES [dbo].[BodyPart] ([BodyPartId])
GO
