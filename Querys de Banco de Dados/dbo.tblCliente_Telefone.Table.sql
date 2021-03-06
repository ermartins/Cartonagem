USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblCliente_Telefone]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente_Telefone](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[IdTelefone] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCliente_Telefone] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC,
	[IdTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblCliente_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Telefone_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_Telefone] CHECK CONSTRAINT [FK_tblCliente_Telefone_tblCliente]
GO
ALTER TABLE [dbo].[tblCliente_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Telefone_tblTelefone] FOREIGN KEY([IdTelefone])
REFERENCES [dbo].[tblTelefone] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_Telefone] CHECK CONSTRAINT [FK_tblCliente_Telefone_tblTelefone]
GO
