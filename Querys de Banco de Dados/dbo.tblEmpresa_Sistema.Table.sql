USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblEmpresa_Sistema]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa_Sistema](
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[IdSistema] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEmpresa_Sistema] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblEmpresa_Sistema]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Sistema_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblEmpresa_Sistema] CHECK CONSTRAINT [FK_tblEmpresa_Sistema_tblEmpresa]
GO
ALTER TABLE [dbo].[tblEmpresa_Sistema]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Sistema_tblSistema] FOREIGN KEY([IdSistema])
REFERENCES [dbo].[tblSistema] ([Id])
GO
ALTER TABLE [dbo].[tblEmpresa_Sistema] CHECK CONSTRAINT [FK_tblEmpresa_Sistema_tblSistema]
GO
