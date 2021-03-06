USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblEndereco_TipoEndereco]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEndereco_TipoEndereco](
	[IdEndereco] [uniqueidentifier] NOT NULL,
	[IdTipoEndereco] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEndereco_TipoEndereco] PRIMARY KEY CLUSTERED 
(
	[IdEndereco] ASC,
	[IdTipoEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblEndereco_TipoEndereco]  WITH CHECK ADD  CONSTRAINT [FK_tblEndereco_TipoEndereco_tblEndereco] FOREIGN KEY([IdEndereco])
REFERENCES [dbo].[tblEndereco] ([Id])
GO
ALTER TABLE [dbo].[tblEndereco_TipoEndereco] CHECK CONSTRAINT [FK_tblEndereco_TipoEndereco_tblEndereco]
GO
ALTER TABLE [dbo].[tblEndereco_TipoEndereco]  WITH CHECK ADD  CONSTRAINT [FK_tblEndereco_TipoEndereco_tblTipoEndereco] FOREIGN KEY([IdTipoEndereco])
REFERENCES [dbo].[tblTipoEndereco] ([Id])
GO
ALTER TABLE [dbo].[tblEndereco_TipoEndereco] CHECK CONSTRAINT [FK_tblEndereco_TipoEndereco_tblTipoEndereco]
GO
