USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblContato]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContato](
	[IdContato] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Nome] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblContato] PRIMARY KEY CLUSTERED 
(
	[IdContato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblContato] ADD  CONSTRAINT [DF_tblContato_IdContato]  DEFAULT (newid()) FOR [IdContato]
GO
