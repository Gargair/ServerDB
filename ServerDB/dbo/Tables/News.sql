CREATE TABLE [dbo].[News] (
    [NewsId]    UNIQUEIDENTIFIER NOT NULL,
    [Owner_Id]  NVARCHAR (128)   NOT NULL,
    [Text]      NTEXT            NOT NULL,
    [TimeStamp] ROWVERSION       NOT NULL,
    CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED ([NewsId] ASC),
    CONSTRAINT [FK_News_AspNetUsers] FOREIGN KEY ([Owner_Id]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

