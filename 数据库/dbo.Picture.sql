CREATE TABLE [dbo].[Picture] (
    [PictureId]      INT             NOT NULL,
    [UserLoginName]  VARCHAR (50)    NULL,
    [PictureTitle]   VARCHAR (MAX)   NULL,
    [PictureContent] VARBINARY (MAX) NULL,
    [CreateTime]     TIME (7)        NULL,
    [ip]             VARCHAR (50)    NULL,
    [PictureURL] VARCHAR(MAX) NULL, 
    PRIMARY KEY CLUSTERED ([PictureId] ASC)
);

