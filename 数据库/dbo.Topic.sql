CREATE TABLE [dbo].[Topic]
(
	[TopicId] INT NOT NULL PRIMARY KEY, 
    [UserLoginName] VARCHAR(50) NULL, 
    [TopicTitle] NVARCHAR(MAX) NULL, 
    [TopicContent] NVARCHAR(MAX) NULL, 
    [CreateTime] TIME NULL, 
    [ip] NVARCHAR(50) NULL
)
