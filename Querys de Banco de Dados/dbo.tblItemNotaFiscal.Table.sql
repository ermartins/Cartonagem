USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblItemNotaFiscal]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblItemNotaFiscal](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IdNota] [uniqueidentifier] NULL,
	[Ordem] [int] NULL,
	[Descricao] [nvarchar](200) NULL,
	[Quantidade] [int] NULL,
	[VlrItem] [decimal](7, 4) NULL,
	[VlrTotalItem] [decimal](7, 2) NULL,
	[DescontoItem] [decimal](7, 2) NULL,
 CONSTRAINT [PK_tblItemNotaFiscal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblItemNotaFiscal] ADD  CONSTRAINT [DF_tblItemNotaFiscal_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblItemNotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblItemNotaFiscal_tblNotaFiscal] FOREIGN KEY([IdNota])
REFERENCES [dbo].[tblNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblItemNotaFiscal] CHECK CONSTRAINT [FK_tblItemNotaFiscal_tblNotaFiscal]
GO
