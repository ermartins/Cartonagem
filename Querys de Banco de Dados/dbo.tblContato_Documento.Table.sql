USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblContato_Documento]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContato_Documento](
	[IdContato] [uniqueidentifier] NOT NULL,
	[IdDocumento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblContato_Documento] PRIMARY KEY CLUSTERED 
(
	[IdContato] ASC,
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblContato_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblContato_Documento_tblContato] FOREIGN KEY([IdContato])
REFERENCES [dbo].[tblContato] ([IdContato])
GO
ALTER TABLE [dbo].[tblContato_Documento] CHECK CONSTRAINT [FK_tblContato_Documento_tblContato]
GO
ALTER TABLE [dbo].[tblContato_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblContato_Documento_tblDocumentos] FOREIGN KEY([IdDocumento])
REFERENCES [dbo].[tblDocumentos] ([IdDocumento])
GO
ALTER TABLE [dbo].[tblContato_Documento] CHECK CONSTRAINT [FK_tblContato_Documento_tblDocumentos]
GO
