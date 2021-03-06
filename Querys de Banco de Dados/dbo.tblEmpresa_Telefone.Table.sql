USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblEmpresa_Telefone]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa_Telefone](
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[IdTelefone] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEmpresa_Telefone] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblEmpresa_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Telefone_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblEmpresa_Telefone] CHECK CONSTRAINT [FK_tblEmpresa_Telefone_tblEmpresa]
GO
ALTER TABLE [dbo].[tblEmpresa_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_Telefone_tblTelefone] FOREIGN KEY([IdTelefone])
REFERENCES [dbo].[tblTelefone] ([Id])
GO
ALTER TABLE [dbo].[tblEmpresa_Telefone] CHECK CONSTRAINT [FK_tblEmpresa_Telefone_tblTelefone]
GO
