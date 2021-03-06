USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblEmpresa_Documento]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa_Documento](
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[IdDocumento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEmpresa_Documento] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblEmpresa_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Documento_tblDocumentos] FOREIGN KEY([IdDocumento])
REFERENCES [dbo].[tblDocumentos] ([IdDocumento])
GO
ALTER TABLE [dbo].[tblEmpresa_Documento] CHECK CONSTRAINT [FK_tblEmpresa_Documento_tblDocumentos]
GO
ALTER TABLE [dbo].[tblEmpresa_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Documento_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblEmpresa_Documento] CHECK CONSTRAINT [FK_tblEmpresa_Documento_tblEmpresa]
GO
