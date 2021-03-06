USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblProduto]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduto](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IdFornecedor] [uniqueidentifier] NULL,
	[Descricao] [nvarchar](200) NULL,
	[Comprimento] [int] NULL,
	[Largura] [int] NULL,
	[Altura] [int] NULL,
	[CompChapa] [int] NULL,
	[LargChapa] [int] NULL,
	[VlrProduto] [decimal](5, 2) NULL,
 CONSTRAINT [PK_tblProduto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblProduto] ADD  CONSTRAINT [DF_tblProduto_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblProduto]  WITH CHECK ADD  CONSTRAINT [FK_tblProduto_tblFornecedor] FOREIGN KEY([IdFornecedor])
REFERENCES [dbo].[tblFornecedor] ([Id])
GO
ALTER TABLE [dbo].[tblProduto] CHECK CONSTRAINT [FK_tblProduto_tblFornecedor]
GO
