USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblMateriaPrima_TipoMateriaPrima]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima](
	[IdMateriaPrima] [uniqueidentifier] NOT NULL,
	[IdTipoMateriaPrima] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblMateriaPrima_TipoMateriaPrima] PRIMARY KEY CLUSTERED 
(
	[IdMateriaPrima] ASC,
	[IdTipoMateriaPrima] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima]  WITH CHECK ADD  CONSTRAINT [FK_tblMateriaPrima_TipoMateriaPrima_tblMateriaPrima] FOREIGN KEY([IdMateriaPrima])
REFERENCES [dbo].[tblMateriaPrima] ([Id])
GO
ALTER TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima] CHECK CONSTRAINT [FK_tblMateriaPrima_TipoMateriaPrima_tblMateriaPrima]
GO
ALTER TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima]  WITH CHECK ADD  CONSTRAINT [FK_tblMateriaPrima_TipoMateriaPrima_tblTipoMateriaPrima] FOREIGN KEY([IdTipoMateriaPrima])
REFERENCES [dbo].[tblTipoMateriaPrima] ([Id])
GO
ALTER TABLE [dbo].[tblMateriaPrima_TipoMateriaPrima] CHECK CONSTRAINT [FK_tblMateriaPrima_TipoMateriaPrima_tblTipoMateriaPrima]
GO
