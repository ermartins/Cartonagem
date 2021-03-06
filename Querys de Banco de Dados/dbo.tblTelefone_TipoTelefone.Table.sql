USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblTelefone_TipoTelefone]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTelefone_TipoTelefone](
	[IdTelefone] [uniqueidentifier] NOT NULL,
	[IdTipoTelefone] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblTelefone_TipoTelefone] PRIMARY KEY CLUSTERED 
(
	[IdTelefone] ASC,
	[IdTipoTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblTelefone_TipoTelefone]  WITH CHECK ADD  CONSTRAINT [FK_tblTelefone_TipoTelefone_tblTelefone] FOREIGN KEY([IdTelefone])
REFERENCES [dbo].[tblTelefone] ([Id])
GO
ALTER TABLE [dbo].[tblTelefone_TipoTelefone] CHECK CONSTRAINT [FK_tblTelefone_TipoTelefone_tblTelefone]
GO
ALTER TABLE [dbo].[tblTelefone_TipoTelefone]  WITH CHECK ADD  CONSTRAINT [FK_tblTelefone_TipoTelefone_tblTipoTelefone] FOREIGN KEY([IdTipoTelefone])
REFERENCES [dbo].[tblTipoTelefone] ([Id])
GO
ALTER TABLE [dbo].[tblTelefone_TipoTelefone] CHECK CONSTRAINT [FK_tblTelefone_TipoTelefone_tblTipoTelefone]
GO
