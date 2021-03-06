USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblCliente_NotaFiscal]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente_NotaFiscal](
	[IdNotaFiscal] [uniqueidentifier] NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCliente_NotaFiscal] PRIMARY KEY CLUSTERED 
(
	[IdNotaFiscal] ASC,
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblCliente_NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_NotaFiscal_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_NotaFiscal] CHECK CONSTRAINT [FK_tblCliente_NotaFiscal_tblCliente]
GO
ALTER TABLE [dbo].[tblCliente_NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_NotaFiscal_tblNotaFiscal] FOREIGN KEY([IdNotaFiscal])
REFERENCES [dbo].[tblNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_NotaFiscal] CHECK CONSTRAINT [FK_tblCliente_NotaFiscal_tblNotaFiscal]
GO
