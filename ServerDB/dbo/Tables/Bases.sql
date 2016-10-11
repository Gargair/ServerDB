CREATE TABLE [dbo].[Bases] (
    [baseId]    UNIQUEIDENTIFIER NOT NULL,
    [name]      NVARCHAR (20)    NOT NULL,
    [Owner_Id]  NVARCHAR (128)   NOT NULL,
    [TimeStamp] ROWVERSION       NOT NULL,
    CONSTRAINT [PK_Bases] PRIMARY KEY CLUSTERED ([baseId] ASC),
    CONSTRAINT [FK_Bases_AspNetUsers] FOREIGN KEY ([Owner_Id]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

