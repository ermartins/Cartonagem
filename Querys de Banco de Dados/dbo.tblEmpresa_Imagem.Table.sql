USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblEmpresa_Imagem]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa_Imagem](
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[IdImagem] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEmpresa_Imagem] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdImagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblEmpresa_Imagem]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Imagem_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblEmpresa_Imagem] CHECK CONSTRAINT [FK_tblEmpresa_Imagem_tblEmpresa]
GO
ALTER TABLE [dbo].[tblEmpresa_Imagem]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Imagem_tblImagens] FOREIGN KEY([IdImagem])
REFERENCES [dbo].[tblImagens] ([Id])
GO
ALTER TABLE [dbo].[tblEmpresa_Imagem] CHECK CONSTRAINT [FK_tblEmpresa_Imagem_tblImagens]
GO
