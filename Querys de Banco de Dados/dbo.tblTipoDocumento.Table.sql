USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblTipoDocumento]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoDocumento](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Descrição] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblTipoDocumento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblTipoDocumento] ADD  CONSTRAINT [DF_tblTipoDocumento_Id]  DEFAULT (newid()) FOR [Id]
GO
